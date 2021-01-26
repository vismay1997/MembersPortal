package com.vismay.membersportal.controllers;

import com.vismay.membersportal.databeans.NoticeDatabean;
import com.vismay.membersportal.exceptions.FileStorageException;
import com.vismay.membersportal.exceptions.MyFileNotFoundException;
import com.vismay.membersportal.services.NoticeSectionService;
import com.vismay.membersportal.validators.NoticeValidator;
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

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class NoticeSectionController {

    @Autowired
    private NoticeValidator noticeValidator;

    @Autowired
    private NoticeSectionService noticeSectionService;

    @GetMapping(path = "/create-notice")
    public String getHome(Model model){
        NoticeDatabean noticeDatabean=new NoticeDatabean();
        model.addAttribute("databean",noticeDatabean);
        return "create-notice";
    }
    @PostMapping(path = "/create-notice")
    public String RegisterMember(@ModelAttribute("databean") NoticeDatabean noticeDatabean,
                                 @RequestParam("noticeLogoFile") MultipartFile multipartFile,
                                 @RequestParam("supportingDocsFile") MultipartFile supportingDocs,BindingResult result,
                                 Model model, RedirectAttributes redirectAttributes) throws FileStorageException, ParseException, IOException {
        noticeValidator.validate(noticeDatabean,result,multipartFile,supportingDocs);
        System.out.println(result);
        if (!result.hasErrors())
        {
            noticeSectionService.saveNotice(noticeDatabean,multipartFile,supportingDocs);
            redirectAttributes.addFlashAttribute("message","SuccessFully");
            return "redirect:/search-notice";
        }else{
            model.addAttribute("databean",noticeDatabean);
            return "create-notice";
        }


    }


    @GetMapping(path = "/view-notice")
    public String getViewMember(Model model,@RequestParam("id") Long Id){
        model.addAttribute("databean",noticeSectionService.getNoticeFromId(Id));
        return "view-notice";
    }


    @GetMapping(path = "/edit-notice")
    public String getEditMarquee(Model model,@RequestParam("id") Long Id){
        model.addAttribute("databean",noticeSectionService.getNoticeFromId(Id));
        return "create-notice";
    }

    @PostMapping(path = "/edit-notice")
    public String postEditMarquee(Model model,@RequestParam("id") Long Id,@ModelAttribute("databean") NoticeDatabean noticeDatabean,
                                  @RequestParam("noticeLogoFile") MultipartFile multipartFile,
                                  @RequestParam("supportingDocsFile") MultipartFile supportingDocs,BindingResult result,
                                  RedirectAttributes redirectAttributes) throws MyFileNotFoundException, FileStorageException {
        noticeDatabean.setNoticeId(Id);
        noticeValidator.validate(noticeDatabean,result);
        System.out.println(result);
        if (!result.hasErrors())
        {
            noticeSectionService.updateNotice(noticeDatabean,multipartFile,supportingDocs);
            return "redirect:/search-notice";
        }else{
            model.addAttribute("databean",noticeDatabean);
            redirectAttributes.addFlashAttribute("message","SuccessFully");
            return "create-notice";
        }
    }



    @GetMapping(path = "/search-notice")
    public String getSearchMarquee(Model model){
        model.addAttribute("dataList",noticeSectionService.getAllNoticesList());
        return "search-notice";
    }
}
