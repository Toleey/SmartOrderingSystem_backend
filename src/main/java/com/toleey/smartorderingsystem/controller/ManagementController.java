package com.toleey.smartorderingsystem.controller;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@SpringBootApplication
@RequestMapping("/management")
public class ManagementController {

    @RequestMapping("/login")
    public String toLogin(){
        return "management/management_login";
    }

    @RequestMapping("/signup")
    public String toSignUp(){
        return "management/management_signup";
    }

}
