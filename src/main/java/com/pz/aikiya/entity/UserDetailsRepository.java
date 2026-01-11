package com.pz.aikiya.entity;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pz.aikiya.repository.UserDetails;

public interface UserDetailsRepository extends JpaRepository<UserDetails, Long> {

	boolean existsByAadhaarNumber(String aadhaarNumber);
	
	
}
