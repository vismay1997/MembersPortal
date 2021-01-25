package com.vismay.membersportal.controllers;

import com.vismay.membersportal.databeans.MemberRegistrationDatabean;
import com.vismay.membersportal.databeans.QualificationInformation;
import com.vismay.membersportal.databeans.RevenueInformation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MemberRegistrationController {
    @GetMapping(path = "/member-registration")
    public String getHome(Model model){

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
        return "member-registration";
    }
}
