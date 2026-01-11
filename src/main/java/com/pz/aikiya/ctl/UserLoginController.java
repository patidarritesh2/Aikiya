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
public class UserLoginController {

    @Autowired
    private UserService userService;

    // ✅ SHOW LOGIN PAGE
    @GetMapping("/login")
    public String showLoginPage() {
        return "login"; // login.jsp
    }

    // ✅ PROCESS LOGIN
    @PostMapping("/login")
    public String loginUser(@RequestParam String userName,
                            @RequestParam String password,
                            Model model) {

        User user = userService.loginUser(userName, password);

        if (user != null) {
            model.addAttribute("username", user.getUsername());
            return "redirect:/user";
        } else {
            model.addAttribute("error", "Invalid User Name or password.");
            return "login"; // ❗ NOT redirect, so error shows
        }
    }
}

