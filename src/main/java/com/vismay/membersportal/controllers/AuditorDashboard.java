package com.vismay.membersportal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/auditor")
public class AuditorDashboard {
    @GetMapping(path = "/dashboard")
    public String getDashboard(){
        return "auditor-dashboard";
    }
}
