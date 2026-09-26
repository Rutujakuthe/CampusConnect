package com.seed.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.seed.entity.Complaint;

public interface ComplaintRepository extends JpaRepository<Complaint, Long> {

}