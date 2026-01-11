package com.pz.aikiya.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pz.aikiya.entity.UserDetailsRepository;
import com.pz.aikiya.repository.UserDetails;

@Service
public class UserDetailsService {
	  @Autowired
	    private UserDetailsRepository repository;
	  
	    public boolean isAadhaarValid(String aadhaarNumber) {
	        return repository.existsByAadhaarNumber(aadhaarNumber);
	    }

	    public List<UserDetails> findAll() {
	        return repository.findAll();
	    }

	    public void save(UserDetails userDetails) {
	        repository.save(userDetails);
	    }

}
