package com.vismay.membersportal.controllers;

import com.vismay.membersportal.databeans.MemberRegistrationDatabean;
import com.vismay.membersportal.services.RegisterMemberService;
import org.apache.jasper.tagplugins.jstl.core.If;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberDashboard {

    @Autowired
    private RegisterMemberService registerMemberService;


    @GetMapping(path = "/dashboard")
    public String getDashboard(){
        return "member-dashboard";
    }

    @GetMapping(path = "/search-by-category")
    public String getMemberByCategory(Model model, @ModelAttribute MemberRegistrationDatabean memberRegistrationDatabean){
        model.addAttribute("databean",new MemberRegistrationDatabean());
        model.addAttribute("villages", registerMemberService.getAllVillages());
        model.addAttribute("streets", registerMemberService.getAllStreets());
        String village="";
        String street="";
        String mobileNo="";
        String pinCode="";

        if (!ObjectUtils.isEmpty(memberRegistrationDatabean)){
            if (!ObjectUtils.isEmpty(memberRegistrationDatabean.getVillage())){
                village = memberRegistrationDatabean.getVillage();
            }
            if (!ObjectUtils.isEmpty(memberRegistrationDatabean.getStreet())){
                street = memberRegistrationDatabean.getStreet();
            }
            if (!ObjectUtils.isEmpty(memberRegistrationDatabean.getMobileNo())){
                mobileNo =  memberRegistrationDatabean.getMobileNo();
            }
            if (!ObjectUtils.isEmpty(memberRegistrationDatabean.getPinCode())){
                pinCode = memberRegistrationDatabean.getPinCode();
            }

        }



        model.addAttribute("dataList",registerMemberService.getMemberData(village,street,mobileNo,pinCode));

        return "search-by-category";
    }


}
