package com.vismay.membersportal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommiteeManagementController {
    @GetMapping(path = "/commitee-registration")
    public String getHome(){
        return "commitee-registration";
    }
}
