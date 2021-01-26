package com.vismay.membersportal.validators;

import com.vismay.membersportal.databeans.*;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;

@Component
public class CommiteeMemberalidator implements Validator {

    @Override
    public boolean supports(Class<?> aClass) {
        return CommiteeMemberDataBean.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {

        CommiteeDatabean memberRegistrationDatabean= (CommiteeDatabean) o;

        System.out.println(memberRegistrationDatabean);
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "commiteeTitle", "error.message.required", "Title is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "error.message.required", "Age Time is required.");


        int i=0;

        for (CommiteeMemberDataBean qualificationInformation:memberRegistrationDatabean.getCommiteeMembers()){
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "commiteeMembers["+i+"].nameOfCommitee", "error.message.required", "Name Of Course is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "commiteeMembers["+i+"].nameOfMember", "error.message.required", "Institute Name is required.");
            i++;
        }

    }

    public void validate(CommiteeDatabean commiteeDatabean, BindingResult errors, MultipartFile multipartFile) {


        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "commiteeTitle", "error.message.required", "Commitee Title is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "error.message.required", "Commitee Description is required.");

        int i=0;
        for (CommiteeMemberDataBean qualificationInformation:commiteeDatabean.getCommiteeMembers()){
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "commiteeMembers["+i+"].nameOfCommitee", "error.message.required", "Name Of Commitee is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "commiteeMembers["+i+"].nameOfMember", "error.message.required", "Name Of Member is required.");
            i++;
        }


        if (multipartFile.isEmpty()){
            errors.rejectValue("logo","error.message.required", "Logo is required.");
        }

    }
}
