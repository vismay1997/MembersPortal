package com.vismay.membersportal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MarqueeController {
    @GetMapping(path = "/create-marquee")
    public String getHome(){
        return "create-marquee";
    }
}
