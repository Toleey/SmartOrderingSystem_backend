package com.toleey.smartorderingsystem.controller;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@SpringBootApplication
@RequestMapping("/shopManagement")
public class ShopManagementController {

    @RequestMapping("/login")
    public String toLogin(){
        return "shopmanagement/shopmanagement_login";
    }

    @RequestMapping("/signup")
    public String toSignUp(){
        return "shopmanagement/shopmanagement_signup";
    }
}
