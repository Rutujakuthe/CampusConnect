package com.seed.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.seed.entity.LostFoundItem;

public interface LostRepository extends JpaRepository<LostFoundItem, Long> {

}