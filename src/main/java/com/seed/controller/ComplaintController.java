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

import com.seed.entity.Complaint;
import com.seed.service.ComplaintService;

@Controller
@RequestMapping("/complaints")
public class ComplaintController {

    @Autowired
    private ComplaintService complaintService;

    @GetMapping
    public String showComplaints(Model model) {

        model.addAttribute("complaints",
                complaintService.getAllComplaints());

        return "complaints";
    }

    @GetMapping("/add")
    public String addComplaint() {
        return "add-complaint";
    }

    @PostMapping("/save")
    public String saveComplaint(
            Complaint complaint,
            @RequestParam("complaintPhoto") MultipartFile file)
            throws IOException {

        if (!file.isEmpty()) {
            complaint.setPhoto(file.getBytes());
        }

        complaint.setStatus("Pending");

        complaintService.saveComplaint(complaint);

        return "redirect:/complaints";
    }

    @GetMapping("/image/{id}")
    @ResponseBody
    public byte[] getImage(@PathVariable Long id) {

        Complaint complaint =
                complaintService.getComplaintById(id);

        if (complaint != null && complaint.getPhoto() != null) {
            return complaint.getPhoto();
        }

        return new byte[0];
    }

    @GetMapping("/delete/{id}")
    public String deleteComplaint(@PathVariable Long id) {

        complaintService.deleteComplaint(id);

        return "redirect:/complaints";
    }
}