package com.vismay.membersportal.controllers;

import com.vismay.membersportal.databeans.LinkDataBean;
import com.vismay.membersportal.databeans.MarqueeDataBean;
import com.vismay.membersportal.exceptions.FileStorageException;
import com.vismay.membersportal.exceptions.MyFileNotFoundException;
import com.vismay.membersportal.services.LinksService;
import com.vismay.membersportal.validators.LinkValidators;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.text.ParseException;

@Controller
public class LinksController {

    @Autowired
    private LinksService linksService;

    @Autowired
    private LinkValidators linkValidators;

    @GetMapping(path = "/create-links")
    public String getHome(Model model){
        model.addAttribute("databean",new LinkDataBean());
        return "create-links";
    }

    @PostMapping(path = "/create-links")
    public String postRegisteredMarquee(@ModelAttribute("databean") LinkDataBean linkDataBean,
                                        @RequestParam("images") MultipartFile multipartLogoFile,
                                        @RequestParam("pageimages") MultipartFile multipartPageFile,
                                        BindingResult result,
                                        Model model, RedirectAttributes redirectAttributes) throws FileStorageException, ParseException {
        linkValidators.validate(linkDataBean,result,multipartLogoFile,multipartPageFile);
        if (!result.hasErrors())
        {
            linksService.saveMarquee(linkDataBean,multipartLogoFile,multipartPageFile);
            return "redirect:/search-links";
        }else{
            model.addAttribute("databean",linkDataBean);
            redirectAttributes.addFlashAttribute("message","SuccessFully");
            return "create-links";
        }


    }


    @GetMapping(path = "/view-links")
    public String getViewMarquee(Model model,@RequestParam("id") Long Id){
        model.addAttribute("databean",linksService.getMarqueeFromId(Id));
        return "view-links";
    }


    @GetMapping(path = "/edit-links")
    public String getEditMarquee(Model model,@RequestParam("id") Long Id){
        model.addAttribute("databean",linksService.getMarqueeFromId(Id));
        return "create-links";
    }

    @PostMapping(path = "/edit-links")
    public String postEditMarquee(Model model,@RequestParam("id") Long Id
            ,@ModelAttribute LinkDataBean linkDataBean,
                                  @RequestParam("images") MultipartFile multipartFile,
                                  @RequestParam("pageimages") MultipartFile PageMultipartFile,BindingResult result,
                                  RedirectAttributes redirectAttributes) throws MyFileNotFoundException, FileStorageException {
        linkDataBean.setLinkId(Id);
        linkValidators.validate(linkDataBean,result);

        if (!result.hasErrors())
        {
            linksService.updateMarquee(linkDataBean,multipartFile);
            return "redirect:/search-links";
        }else{
            model.addAttribute("databean",linkDataBean);
            redirectAttributes.addFlashAttribute("message","SuccessFully");
            return "create-links";
        }
    }



    @GetMapping(path = "/search-links")
    public String getSearchMarquee(Model model){
        model.addAttribute("dataList",linksService.getAllMarqueesList());
        System.out.printf("dataList"+linksService.getAllMarqueesList());
        return "search-links";
    }

}
