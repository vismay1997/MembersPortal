package com.vismay.membersportal.controllers;

import com.vismay.membersportal.services.CommiteeManagementService;
import com.vismay.membersportal.services.ContactInformationServices;
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

    @Autowired
    private CommiteeManagementService commiteeManagementService;

    @Autowired
    private ContactInformationServices contactInformationServices;

    @GetMapping(path = "/")
    public String getHome(Model model){
        model.addAttribute("marqueelist",marqueeService.getAllMarqueesList());
        model.addAttribute("noticeList",noticeSectionService.getAllNoticesList());
        return "index";
    }

    @GetMapping(path = "/home-notices")
    public String getNotices(Model model){
        model.addAttribute("noticeList",noticeSectionService.getAllNoticesList());
        return "home-notice";
    }

    @GetMapping(path = "/home-marquee")
    public String getMarquee(Model model){
        model.addAttribute("marqueelist",marqueeService.getAllMarqueesList());
        return "home-marquee";
    }

    @GetMapping(path = "/home-commitee")
    public String getCommitee(Model model){
        model.addAttribute("commiteelist",commiteeManagementService.getAllCommiteeList());
        return "home-commitee";
    }

    @GetMapping(path = "/home-contactus")
    public String getContactUs(Model model){
       model.addAttribute("contactList",contactInformationServices.getAllContactInformation());

        return "home-contactus";
    }
}
