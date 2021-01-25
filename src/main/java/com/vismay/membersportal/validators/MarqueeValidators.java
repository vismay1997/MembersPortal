package com.vismay.membersportal.validators;

import com.vismay.membersportal.databeans.MarqueeDataBean;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class MarqueeValidators  implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return  MarqueeDataBean.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "title", "error.message.required", "Title is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "image", "error.message.required", "Image is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "error.message.required", "Description is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "startDateTime", "error.message.required", "Start Date Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "endDateTime", "error.message.required", "End Date Time is required.");



    }
}
