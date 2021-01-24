package com.vismay.membersportal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class CompanyRegistration {
    @GetMapping(path = "/company-registration")
    public String getHome(){
        return "company-registration";
    }
}
