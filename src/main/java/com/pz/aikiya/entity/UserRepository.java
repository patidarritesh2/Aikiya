package com.pz.aikiya.entity;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pz.aikiya.repository.User;

public interface UserRepository extends JpaRepository<User, Long> {
	 User findByUsername(String username); 
}
