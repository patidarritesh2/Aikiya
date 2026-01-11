package com.pz.aikiya.ctl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pz.aikiya.repository.User;
import com.pz.aikiya.service.UserService;

@Controller
public class UserRegistrationController {


    @Autowired
    private UserService userService;

    @GetMapping("/register")
    public String showRegisterPage() {
        return "register"; 
    }

    @PostMapping("/register")
    public String registerUser(@RequestParam String username,
                                @RequestParam String password,
                                Model model) {
        User user = new User();
      
        user.setUsername(username);
        user.setPassword(password);
        userService.registerUser(user);
        model.addAttribute("message", "Registration successful!");
        return "login";
    }

	}