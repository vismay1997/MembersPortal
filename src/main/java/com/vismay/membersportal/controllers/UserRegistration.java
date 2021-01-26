package com.vismay.membersportal.controllers;

import com.vismay.membersportal.databeans.MarqueeDataBean;
import com.vismay.membersportal.databeans.UserRegistrationDataBean;
import com.vismay.membersportal.exceptions.FileStorageException;
import com.vismay.membersportal.exceptions.MyFileNotFoundException;
import com.vismay.membersportal.services.UserRegistrationService;
import com.vismay.membersportal.validators.UserRegisterValidators;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
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
public class UserRegistration {

    @Autowired
    private UserRegistrationService userRegistrationService;

    @Autowired
    private UserRegisterValidators userRegisterValidators;

    @GetMapping(path = "/user-registration")
    public String getHome(Model model){
        model.addAttribute("databean",new UserRegistrationDataBean());
        return "user-registration";
    }

    @PostMapping(path = "/user-registration")
    public String postRegisteredMarquee(@ModelAttribute("databean") UserRegistrationDataBean userRegistrationDataBean,
                                        BindingResult result,
                                        Model model, RedirectAttributes redirectAttributes){
        userRegisterValidators.validate(userRegistrationDataBean,result);
        System.out.println(result);
        if (!result.hasErrors())
        {
            userRegistrationService.saveUserDetail(userRegistrationDataBean);
            return "redirect:/search-user";
        }else{
            model.addAttribute("databean",userRegistrationDataBean);
            redirectAttributes.addFlashAttribute("message","SuccessFully");
            return "user-registration";
        }


    }


    @GetMapping(path = "/view-user")
    public String getViewMarquee(Model model,@RequestParam("id") Long Id){
        model.addAttribute("databean",userRegistrationService.getUserDetailFromId(Id));
        return "view-user";
    }


    @GetMapping(path = "/edit-user")
    public String getEditMarquee(Model model,@RequestParam("id") Long Id){
        model.addAttribute("databean",userRegistrationService.getUserDetailFromId(Id));
        return "user-registration";
    }

    @PostMapping(path = "/edit-user")
    public String postEditMarquee(Model model,@RequestParam("id") Long Id,
                                  @ModelAttribute UserRegistrationDataBean userRegistrationDataBean,
                                  BindingResult result,
                                  RedirectAttributes redirectAttributes)  {
        userRegistrationDataBean.setUserId(Id);
        userRegisterValidators.validate(userRegistrationDataBean,result);

        if (!result.hasErrors())
        {
            userRegistrationService.updateUserDetail(userRegistrationDataBean);
            return "redirect:/search-user";
        }else{
            model.addAttribute("databean",userRegistrationDataBean);
            redirectAttributes.addFlashAttribute("message","SuccessFully");
            return "user-registration";
        }
    }



    @GetMapping(path = "/search-user")
    public String getSearchMarquee(Model model){
        model.addAttribute("dataList",userRegistrationService.getAllUserDetailsList());
        System.out.printf("dataList"+userRegistrationService.getAllUserDetailsList());
        return "search-user";
    }
}
