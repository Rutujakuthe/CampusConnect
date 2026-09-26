package com.seed.service;

import java.util.List;

import com.seed.entity.LostFoundItem;

public interface LostFoundService {

    void saveItem(LostFoundItem item);

    List<LostFoundItem> getAllItems();

    LostFoundItem getItemById(Long id);

    void deleteItem(Long id);
}