package com.vismay.membersportal.controllers;

import com.vismay.membersportal.databeans.MarqueeDataBean;
import com.vismay.membersportal.databeans.MemberRegistrationDatabean;
import com.vismay.membersportal.databeans.QualificationInformation;
import com.vismay.membersportal.databeans.RevenueInformation;
import com.vismay.membersportal.exceptions.FileStorageException;
import com.vismay.membersportal.exceptions.MyFileNotFoundException;
import com.vismay.membersportal.services.RegisterMemberService;
import com.vismay.membersportal.validators.MemberRegisterValidator;
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
public class MemberRegistrationController {

    @Autowired
    private MemberRegisterValidator memberRegisterValidator;

    @Autowired
    private RegisterMemberService registerMemberService;

    @GetMapping(path = "/member-registration")
    public String getRegisterMember(Model model){

       MemberRegistrationDatabean databean= new MemberRegistrationDatabean();
        QualificationInformation qualificationInformation=new QualificationInformation();
        List<QualificationInformation> qualificationInformationList = new ArrayList<>();
        qualificationInformationList.add(qualificationInformation);

        RevenueInformation revenueInformation=new RevenueInformation();
        List<RevenueInformation> revenueInformationList=new ArrayList<>();
        revenueInformationList.add(revenueInformation);

        databean.setQualificationInformations(qualificationInformationList);
        databean.setRevenueInformations(revenueInformationList);


        model.addAttribute("databean",databean);

        List<String> bloodGroupList=new ArrayList<>();
        bloodGroupList.add("A-");bloodGroupList.add("A-");
        bloodGroupList.add("B+");bloodGroupList.add("B-");
        bloodGroupList.add("AB+");bloodGroupList.add("AB-");
        bloodGroupList.add("O+");bloodGroupList.add("O-");
        bloodGroupList.add("Not Given");
        model.addAttribute("bloodGroupList",bloodGroupList);

        List<String> maritalStatusList=new ArrayList<>();
        maritalStatusList.add("Married");
        bloodGroupList.add("Un Married");
        maritalStatusList.add("Single");
        maritalStatusList.add("Not Given");
        model.addAttribute("maritalStatusList",maritalStatusList);


        return "member-registration";
    }

    @PostMapping(path = "/member-registration")
    public String RegisterMember(@ModelAttribute("databean") MemberRegistrationDatabean memberRegistrationDatabean,
                                 @RequestParam("profilePic") MultipartFile multipartFile,BindingResult result,
                                        Model model, RedirectAttributes redirectAttributes) throws FileStorageException, ParseException {
        memberRegisterValidator.validate(memberRegistrationDatabean,result,multipartFile);
        System.out.println(result);
        if (!result.hasErrors())
        {
            System.out.println(memberRegistrationDatabean);
            registerMemberService.saveMember(memberRegistrationDatabean,multipartFile);
            redirectAttributes.addFlashAttribute("message","SuccessFully");
            return "redirect:/search-member";
        }else{

            List<String> bloodGroupList=new ArrayList<>();
            bloodGroupList.add("A-");bloodGroupList.add("A-");
            bloodGroupList.add("B+");bloodGroupList.add("B-");
            bloodGroupList.add("AB+");bloodGroupList.add("AB-");
            bloodGroupList.add("O+");bloodGroupList.add("O-");
            bloodGroupList.add("Not Given");
            model.addAttribute("bloodGroupList",bloodGroupList);

            List<String> maritalStatusList=new ArrayList<>();
            maritalStatusList.add("Married");
            bloodGroupList.add("Un Married");
            maritalStatusList.add("Single");
            maritalStatusList.add("Not Given");
            model.addAttribute("maritalStatusList",maritalStatusList);
            model.addAttribute("databean",memberRegistrationDatabean);
            return "member-registration";
        }


    }


    @GetMapping(path = "/view-member")
    public String getViewMember(Model model,@RequestParam("id") Long Id){
        model.addAttribute("databean",registerMemberService.getMemberFromId(Id));
        return "view-member";
    }


    @GetMapping(path = "/edit-member")
    public String getEditMarquee(Model model,@RequestParam("id") Long Id){
        List<String> bloodGroupList=new ArrayList<>();
        bloodGroupList.add("A-");bloodGroupList.add("A-");
        bloodGroupList.add("B+");bloodGroupList.add("B-");
        bloodGroupList.add("AB+");bloodGroupList.add("AB-");
        bloodGroupList.add("O+");bloodGroupList.add("O-");
        bloodGroupList.add("Not Given");
        model.addAttribute("bloodGroupList",bloodGroupList);

        List<String> maritalStatusList=new ArrayList<>();
        maritalStatusList.add("Married");
        bloodGroupList.add("Un Married");
        maritalStatusList.add("Single");
        maritalStatusList.add("Not Given");
        model.addAttribute("maritalStatusList",maritalStatusList);
        model.addAttribute("databean",registerMemberService.getMemberFromId(Id));
        return "member-registration";
    }

    @PostMapping(path = "/edit-member")
    public String postEditMarquee(Model model,@RequestParam("id") Long Id,@ModelAttribute("databean") MemberRegistrationDatabean memberRegistrationDatabean,
                                  @RequestParam("profilePic") MultipartFile multipartFile,BindingResult result,
                                  RedirectAttributes redirectAttributes) throws MyFileNotFoundException, FileStorageException {
        memberRegistrationDatabean.setMemberId(Id);
        memberRegisterValidator.validate(memberRegistrationDatabean,result);
        System.out.println(result);
        if (!result.hasErrors())
        {
            registerMemberService.updateMember(memberRegistrationDatabean,multipartFile);
            return "redirect:/search-member";
        }else{
            List<String> bloodGroupList=new ArrayList<>();
            bloodGroupList.add("A-");bloodGroupList.add("A-");
            bloodGroupList.add("B+");bloodGroupList.add("B-");
            bloodGroupList.add("AB+");bloodGroupList.add("AB-");
            bloodGroupList.add("O+");bloodGroupList.add("O-");
            bloodGroupList.add("Not Given");
            model.addAttribute("bloodGroupList",bloodGroupList);

            List<String> maritalStatusList=new ArrayList<>();
            maritalStatusList.add("Married");
            bloodGroupList.add("Un Married");
            maritalStatusList.add("Single");
            maritalStatusList.add("Not Given");

            model.addAttribute("maritalStatusList",maritalStatusList);
            model.addAttribute("databean",memberRegistrationDatabean);
            redirectAttributes.addFlashAttribute("message","SuccessFully");
            return "member-registration";
        }
    }



    @GetMapping(path = "/search-member")
    public String getSearchMarquee(Model model){
        System.out.println(registerMemberService.getAllMemberList());
        model.addAttribute("dataList",registerMemberService.getAllMemberList());
        System.out.printf("dataList"+registerMemberService.getAllMemberList());
        return "search-member";
    }
}
