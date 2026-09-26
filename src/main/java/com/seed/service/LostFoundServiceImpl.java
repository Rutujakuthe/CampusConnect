package com.seed.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.entity.LostFoundItem;
import com.seed.repository.LostRepository;

@Service
public class LostFoundServiceImpl implements LostFoundService {

    @Autowired
    private LostRepository lostRepository;

    @Override
    public void saveItem(LostFoundItem item) {
        lostRepository.save(item);
    }

    @Override
    public List<LostFoundItem> getAllItems() {
        return lostRepository.findAll();
    }

    @Override
    public LostFoundItem getItemById(Long id) {
        return lostRepository.findById(id).orElse(null);
    }

    @Override
    public void deleteItem(Long id) {
        lostRepository.deleteById(id);
    }
}