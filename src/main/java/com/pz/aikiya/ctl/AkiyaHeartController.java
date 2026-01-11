package com.pz.aikiya.ctl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class AkiyaHeartController {
	  @GetMapping("/")
	    public String showLoginPage() {
	        System.out.println("Login page requested");
	        return "login"; // Assumes you have a login.html or login.jsp
	    }

	    @GetMapping("/logout")
	    public String logout(Model model) {
	        model.addAttribute("message", "You have successfully logged out.");
	        return "login"; // Redirect to login page after logout
	    }
	}


