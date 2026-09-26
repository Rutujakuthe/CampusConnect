package com.seed.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.seed.entity.LostFoundItem;
import com.seed.service.LostFoundService;

@Controller
@RequestMapping("/lost-found")
public class LostFoundController {

    @Autowired
    private LostFoundService lostFoundService;

    @GetMapping
    public String showItems(Model model) {

        model.addAttribute("items", lostFoundService.getAllItems());

        return "lost-found";
    }

    @GetMapping("/report-lost")
    public String reportLost() {
        return "report-lost";
    }

    @GetMapping("/report-found")
    public String reportFound() {
        return "report-found";
    }

    @PostMapping("/save")
    public String saveItem(
            LostFoundItem item,
            @RequestParam("itemPhoto") MultipartFile file)
            throws IOException {

        if (!file.isEmpty()) {
            item.setPhoto(file.getBytes());
        }

        if (item.getType() == null || item.getType().isEmpty()) {
            item.setType("LOST");
        }

        item.setStatus("Active");

        lostFoundService.saveItem(item);

        return "redirect:/lost-found";
    }

    @GetMapping("/image/{id}")
    @ResponseBody
    public byte[] getImage(@PathVariable Long id) {

        LostFoundItem item = lostFoundService.getItemById(id);

        if (item != null && item.getPhoto() != null) {
            return item.getPhoto();
        }

        return new byte[0];
    }

    @GetMapping("/delete/{id}")
    public String deleteItem(@PathVariable Long id) {

        lostFoundService.deleteItem(id);

        return "redirect:/lost-found";
    }
}