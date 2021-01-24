package com.vismay.membersportal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeSectionController {
    @GetMapping(path = "/create-notice")
    public String getHome(){
        return "create-notice";
    }
}
