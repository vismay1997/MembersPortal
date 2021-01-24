package com.vismay.membersportal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserRegistration {
    @GetMapping(path = "/user-registration")
    public String getHome(){
        return "user-registration";
    }
}
