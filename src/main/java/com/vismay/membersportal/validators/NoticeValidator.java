package com.vismay.membersportal.validators;

import com.vismay.membersportal.databeans.NoticeDatabean;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;

@Component
public class NoticeValidator implements Validator {

    @Override
    public boolean supports(Class<?> aClass) {
        return NoticeDatabean.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        NoticeDatabean noticeDatabean= (NoticeDatabean) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "noticeTitle", "error.message.required", "Marital Status Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "noticeDescription", "error.message.required", "Gender is required.");

    }

    public void validate(NoticeDatabean noticeDatabean, BindingResult result, MultipartFile multipartFile, MultipartFile supportingDocs) {
        ValidationUtils.rejectIfEmptyOrWhitespace(result, "noticeTitle", "error.message.required", "Marital Status Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(result, "noticeDescription", "error.message.required", "Gender is required.");

        if (multipartFile.isEmpty()){
            result.rejectValue("noticeLogo","error.message.required", "Notice Logo required.");
        }
        if (supportingDocs.isEmpty()){
            result.rejectValue("supportingDocs","error.message.required", "Supporting Docs is required.");
        }
    }
}
