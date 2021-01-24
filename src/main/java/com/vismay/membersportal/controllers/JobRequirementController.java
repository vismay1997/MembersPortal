package com.vismay.membersportal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JobRequirementController {
    @GetMapping(path = "/job-requirement-registration")
    public String getHome(){
        return "job-requirement-registration";
    }
}
