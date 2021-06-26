package com.vismay.membersportal.controllers;

import com.vismay.membersportal.services.MarqueeService;
import com.vismay.membersportal.services.NoticeSectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @Autowired
    private MarqueeService marqueeService;

    @Autowired
    private NoticeSectionService noticeSectionService;
    @GetMapping(path = "/")
    public String getHome(Model model){
        model.addAttribute("marqueelist",marqueeService.getAllMarqueesList());
        model.addAttribute("noticeList",noticeSectionService.getAllNoticesList());
        return "index";
    }

    @GetMapping(path = "/home-notices")
    public String getNotices(){
        return "home-notice";
    }

    @GetMapping(path = "/home-marquee")
    public String getMarquee(){
        return "home-marquee";
    }

    @GetMapping(path = "/home-commitee")
    public String getCommitee(){
        return "home-commitee";
    }

    @GetMapping(path = "/home-aboutus")
    public String getAboutUs(){
        return "home-aboutus";
    }

    @GetMapping(path = "/home-contactus")
    public String getContactUs(){
        return "home-contactus";
    }
}
