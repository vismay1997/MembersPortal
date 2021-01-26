package com.vismay.membersportal.validators;

import com.vismay.membersportal.databeans.LinkDataBean;
import com.vismay.membersportal.databeans.MarqueeDataBean;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Component
public class LinkValidators implements Validator {

    @Override
    public boolean supports(Class<?> aClass) {
        return  LinkDataBean.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        LinkDataBean  linkDataBean = (LinkDataBean) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "linkTitle", "error.message.required", "Link Title is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pageDescription", "error.message.required", "Link Description is required.");

    }

    public void validate(LinkDataBean marqueeDataBean, BindingResult errors, MultipartFile multipartLogoFile, MultipartFile multipartPageFile) {

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "linkTitle", "error.message.required", "Link Title is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pageDescription", "error.message.required", "Description is required.");

        if (multipartLogoFile.isEmpty()){
            errors.rejectValue("image","error.message.required", "Image is required.");
        }

        if (multipartPageFile.isEmpty()){
            errors.rejectValue("pageImage","error.message.required", "Page Image is required.");
        }


    }
}
