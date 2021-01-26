package com.vismay.membersportal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/president")
public class PresidentDashboard {
    @GetMapping(path = "/dashboard")
    public String getDashboard(){
        return "president-dashboard";
    }
}
