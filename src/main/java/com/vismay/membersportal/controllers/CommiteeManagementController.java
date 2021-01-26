package com.vismay.membersportal.controllers;

import com.vismay.membersportal.databeans.CommiteeDatabean;
import com.vismay.membersportal.databeans.CommiteeMemberDataBean;
import com.vismay.membersportal.databeans.MemberRegistrationDatabean;
import com.vismay.membersportal.exceptions.FileStorageException;
import com.vismay.membersportal.exceptions.MyFileNotFoundException;
import com.vismay.membersportal.services.CommiteeManagementService;
import com.vismay.membersportal.validators.CommiteeMemberalidator;
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
import java.util.ArrayList;
import java.util.List;

@Controller
public class CommiteeManagementController {

    @Autowired
    private CommiteeManagementService commiteeManagementService;

    @Autowired
    private CommiteeMemberalidator commiteeMemberalidator;

    @GetMapping(path = "/commitee-registration")
    public String getRegisterCommitee(Model model){
    CommiteeDatabean commiteeDatabean=new CommiteeDatabean();
    List<CommiteeMemberDataBean> commiteeMemberDataBeanList=new ArrayList<>();
    CommiteeMemberDataBean commiteeMemberDataBean=new CommiteeMemberDataBean();
        commiteeMemberDataBeanList.add(commiteeMemberDataBean);
        commiteeDatabean.setCommiteeMembers(commiteeMemberDataBeanList);
        model.addAttribute("databean",commiteeDatabean);
        return "commitee-registration";
    }

    @PostMapping(path = "/commitee-registration")
    public String RegisterCommitee(@ModelAttribute("databean") CommiteeDatabean commiteeDatabean,
                                 @RequestParam("profilePic") MultipartFile multipartFile, BindingResult result,
                                 Model model, RedirectAttributes redirectAttributes) throws FileStorageException, ParseException {
        commiteeMemberalidator.validate(commiteeDatabean,result,multipartFile);
        System.out.println(result);
        if (!result.hasErrors())
        {
            System.out.println(commiteeDatabean);
            commiteeManagementService.saveCommitee(commiteeDatabean,multipartFile);
            redirectAttributes.addFlashAttribute("message","SuccessFully");
            return "redirect:/search-commitee";
        }else{
            model.addAttribute("databean",commiteeDatabean);
            return "commitee-registration";
        }


    }


    @GetMapping(path = "/view-commitee")
    public String getViewCommitee(Model model,@RequestParam("id") Long Id){
        model.addAttribute("databean",commiteeManagementService.getCommiteeFromId(Id));
        return "view-commitee";
    }


    @GetMapping(path = "/edit-commitee")
    public String getEditCommitee(Model model,@RequestParam("id") Long Id){
        model.addAttribute("databean",commiteeManagementService.getCommiteeFromId(Id));
        return "commitee-registration";
    }

    @PostMapping(path = "/edit-commitee")
    public String postEditCommitee(Model model,@RequestParam("id") Long Id,@ModelAttribute("databean") CommiteeDatabean commiteeDatabean,
                                  @RequestParam("profilePic") MultipartFile multipartFile,BindingResult result,
                                  RedirectAttributes redirectAttributes) throws MyFileNotFoundException, FileStorageException {
        commiteeDatabean.setCommiteeId(Id);
        commiteeMemberalidator.validate(commiteeDatabean,result);
        System.out.println(result);
        if (!result.hasErrors())
        {
            commiteeManagementService.updateCommitee(commiteeDatabean,multipartFile);
            return "redirect:/search-commitee";
        }else{
            model.addAttribute("databean",commiteeDatabean);
            redirectAttributes.addFlashAttribute("message","SuccessFully");
            return "commitee-registration";
        }
    }



    @GetMapping(path = "/search-commitee")
    public String getSearchCommitee(Model model){
        System.out.println(commiteeManagementService.getAllCommiteeList());
        model.addAttribute("dataList",commiteeManagementService.getAllCommiteeList());
        System.out.printf("dataList"+commiteeManagementService.getAllCommiteeList());
        return "search-commitee";
    }
}
