package com.vismay.membersportal.controllers;

import com.vismay.membersportal.databeans.MarqueeDataBean;
import com.vismay.membersportal.exceptions.FileStorageException;
import com.vismay.membersportal.exceptions.MyFileNotFoundException;
import com.vismay.membersportal.services.MarqueeService;
import com.vismay.membersportal.validators.MarqueeValidators;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.text.ParseException;

@Controller
public class MarqueeController {

    @Autowired
    private MarqueeService marqueeService;

    @Autowired
    private MarqueeValidators marqueeValidators;

    @GetMapping(path = "/create-marquee")
    public String getRegisteredMarquee(Model model){
        model.addAttribute("databean",new MarqueeDataBean());
        return "create-marquee";
    }

    @PostMapping(path = "/create-marquee")
    public String postRegisteredMarquee(@ModelAttribute("databean") MarqueeDataBean marqueeDataBean,
                                        @RequestParam("file") MultipartFile multipartFile,
                                        BindingResult result,
                                        Model model, RedirectAttributes redirectAttributes) throws FileStorageException, ParseException {
        marqueeValidators.validate(marqueeDataBean,result,multipartFile);
        if (!result.hasErrors())
        {
            marqueeService.saveMarquee(marqueeDataBean,multipartFile);
            return "redirect:/search-marquee";
        }else{
            model.addAttribute("databean",marqueeDataBean);
            redirectAttributes.addFlashAttribute("message","SuccessFully");
            return "create-marquee";
        }


    }


    @GetMapping(path = "/view-marquee")
    public String getViewMarquee(Model model,@RequestParam("id") Long Id){
        model.addAttribute("databean",marqueeService.getMarqueeFromId(Id));
        return "view-marquee";
    }


    @GetMapping(path = "/edit-marquee")
    public String getEditMarquee(Model model,@RequestParam("id") Long Id){
        model.addAttribute("databean",marqueeService.getMarqueeFromId(Id));
        return "create-marquee";
    }

    @PostMapping(path = "/edit-marquee")
    public String postEditMarquee(Model model,@RequestParam("id") Long Id,@ModelAttribute MarqueeDataBean marqueeDataBean,
                                  @RequestParam("file") MultipartFile multipartFile,BindingResult result,
                                  RedirectAttributes redirectAttributes) throws MyFileNotFoundException, FileStorageException {
        marqueeDataBean.setMarqueeID(Id);
        marqueeValidators.validate(marqueeDataBean,result);

        if (!result.hasErrors())
        {
            marqueeService.updateMarquee(marqueeDataBean,multipartFile);
            return "redirect:/search-marquee";
        }else{
            model.addAttribute("databean",marqueeDataBean);
            redirectAttributes.addFlashAttribute("message","SuccessFully");
            return "create-marquee";
        }
    }



    @GetMapping(path = "/search-marquee")
    public String getSearchMarquee(Model model){
        model.addAttribute("dataList",marqueeService.getAllMarqueesList());
        System.out.printf("dataList"+marqueeService.getAllMarqueesList());
        return "search-marquee";
    }
}
