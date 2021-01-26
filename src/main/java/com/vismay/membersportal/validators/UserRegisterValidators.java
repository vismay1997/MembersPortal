package com.vismay.membersportal.validators;

import com.vismay.membersportal.databeans.UserRegistrationDataBean;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class UserRegisterValidators implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return UserRegistrationDataBean.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fullName", "error.message.required", "Full Name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "emailId", "error.message.required", "Email ID is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobileNo", "error.message.required", "Mobile No. is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "error.message.required", "User Name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "error.message.required", "Password Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userRole", "error.message.required", "Role Time is required.");

    }
}
