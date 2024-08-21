package com.secnanifymone.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.secnanifymone.models.MyUser;
import com.secnanifymone.services.UserService;

@Controller
public class InvestmentController {
	
	@Autowired
    private UserService userService;
	
	 @GetMapping("/invesment")
	    public String showInvestment(Model model,Authentication authentication) {
		 
		 MyUser currentUser = userService.getCurrentUser();
		 model.addAttribute("firstName", currentUser.getFirstName());
	     model.addAttribute("lastName", currentUser.getLastName());
	        return "invesment"; // 
	    }
	    
	

}
