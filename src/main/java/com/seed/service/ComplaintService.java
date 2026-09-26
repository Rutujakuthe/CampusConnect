package com.seed.service;

import java.util.List;

import com.seed.entity.Complaint;

public interface ComplaintService {

    void saveComplaint(Complaint complaint);

    List<Complaint> getAllComplaints();

    Complaint getComplaintById(Long id);

    void deleteComplaint(Long id);
}