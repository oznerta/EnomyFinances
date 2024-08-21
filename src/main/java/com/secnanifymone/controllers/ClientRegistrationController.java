package com.secnanifymone.controllers;

import com.secnanifymone.services.UserService;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ClientRegistrationController {

    private final UserService clientService;

    @Autowired
    public ClientRegistrationController(UserService clientService) {
        this.clientService = clientService;
    }

    @PostMapping("/EnomyFinances/signupprocess")
    public ModelAndView registerClient(@RequestParam String first_name,
                                       @RequestParam String last_name,
                                       @RequestParam String email,
                                       @RequestParam String password,
                                       @RequestParam String confirm_password,
                                       HttpSession session,
                                       RedirectAttributes redirectAttributes) {
        try {
            // Register client using service method
            clientService.registerNewClient(first_name, last_name, email, password, confirm_password);

            // Set session attribute to indicate successful registration
            session.setAttribute("registrationSuccess", true);

            // Redirect to thank-you page after successful registration
            return new ModelAndView("redirect:/thank-you");
        } catch (RuntimeException e) {
            redirectAttributes.addFlashAttribute("errorMessage", e.getMessage());
            return new ModelAndView("redirect:/signup_error");
        }
    }
    

    @GetMapping("/signup_error")
    public String showSignupFormError() {
        return "signup"; // 
    }

    @GetMapping("/thank-you")
    public String showRegisterSuccess(HttpSession session, Model model) {
            return "thank-you";
      
    }
    
    @GetMapping("/signup")
    public String showSignupForm() {
        return "signup"; // 
    }

    @PostMapping("/check-email")
    @ResponseBody
    public Map<String, Boolean> checkEmailExists(@RequestParam String email) {
        boolean exists = clientService.emailExists(email);
        Map<String, Boolean> response = new HashMap<>();
        response.put("exists", exists);
        return response;
    }
}

