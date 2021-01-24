package com.vismay.membersportal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
    @GetMapping(path = "/login")
    public String getHome(){
        return "login";
    }
}
