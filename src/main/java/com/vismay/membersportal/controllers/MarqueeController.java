package com.vismay.membersportal.controllers;

import com.vismay.membersportal.databeans.MarqueeDataBean;
import com.vismay.membersportal.exceptions.FileStorageException;
import com.vismay.membersportal.services.MarqueeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class MarqueeController {

    @Autowired
    private MarqueeService marqueeService;

    @GetMapping(path = "/create-marquee")
    public String getRegisteredMarquee(Model model){
        model.addAttribute("databean",new MarqueeDataBean());
        return "create-marquee";
    }

    @PostMapping(path = "/create-marquee")
    public String postRegisteredMarquee(@ModelAttribute MarqueeDataBean marqueeDataBean, @RequestParam("file") MultipartFile multipartFile) throws FileStorageException {
        marqueeService.saveMarquee(marqueeDataBean,multipartFile);
        return "create-marquee";
    }

    @GetMapping(path = "/search-marquee")
    public String getSearchMarquee(Model model){
        model.addAttribute("dataList",marqueeService.getAllMarqueesList());
        System.out.printf("dataList"+marqueeService.getAllMarqueesList());
        return "search-marquee";
    }
}
