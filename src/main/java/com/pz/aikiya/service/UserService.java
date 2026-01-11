package com.pz.aikiya.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pz.aikiya.entity.UserRepository;
import com.pz.aikiya.repository.User;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public User registerUser(User user) {
        return userRepository.save(user);
    }

    public User loginUser(String userName, String password) {
        User user = userRepository.findByUsername(userName);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }
}