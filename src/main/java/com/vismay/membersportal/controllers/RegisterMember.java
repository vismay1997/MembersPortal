package com.vismay.membersportal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RegisterMember {
    @GetMapping(path = "/member-registration")
    public String getHome(){
        return "member-registration";
    }
}
