package com.vismay.membersportal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LinksController {
    @GetMapping(path = "/create-links")
    public String getHome(){
        return "create-links";
    }
}
