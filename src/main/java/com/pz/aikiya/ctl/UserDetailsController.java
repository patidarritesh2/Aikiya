package com.pz.aikiya.ctl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pz.aikiya.repository.UserDetails;
import com.pz.aikiya.service.UserDetailsService;
import com.pzip.common.service.ExternalAPIService;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;
@Controller
public class UserDetailsController implements ExternalAPIService {
    
    @Autowired
    private UserDetailsService userDetailsService;

    @GetMapping("/user")
    public String showForm(Model model) {
        model.addAttribute("userDetails", new UserDetails());
        return "userForm";
    }

    @PostMapping("/user")
    public String submitForm(@ModelAttribute UserDetails userDetails, RedirectAttributes redirectAttributes) {
    	 
     
    	userDetailsService.save(userDetails);
    	  redirectAttributes.addFlashAttribute("successMessage", "User details submitted successfully!"); 
    	   return "redirect:/users"; 
    }

    @GetMapping("/users")
    public String listUsers(Model model) {
        model.addAttribute("users", userDetailsService.findAll());
        return "userList";
    }

    @PostMapping("/validate-aadhaar")
    @ResponseBody
	public boolean validateAadhaar(@RequestBody String aadhaarNumber) {
		
		return false;
	}
}