package com.vismay.membersportal.validators;

import com.vismay.membersportal.databeans.MemberRegistrationDatabean;
import com.vismay.membersportal.databeans.QualificationInformation;
import com.vismay.membersportal.databeans.RevenueInformation;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;

@Component
public class MemberRegisterValidator implements Validator {

    @Override
    public boolean supports(Class<?> aClass) {
        return MemberRegisterValidator.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {

        MemberRegistrationDatabean memberRegistrationDatabean= (MemberRegistrationDatabean) o;

        System.out.println(memberRegistrationDatabean);
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fullName", "error.message.required", "FullName is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "birthDate", "error.message.required", "Birth Date is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "age", "error.message.required", "Age Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobileNo", "error.message.required", "Mobile No. Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneNo", "error.message.required", "Phone No. is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "bloodGroup", "error.message.required", "Blood Group is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "emailAddress", "error.message.required", "Email Address Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "maritalStatus", "error.message.required", "Marital Status Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pinCode", "error.message.required", "Pin Code Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "error.message.required", "Address Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "village", "error.message.required", "Village Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "street", "error.message.required", "Street Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "gender", "error.message.required", "Gender is required.");


        int i=0;

        for (QualificationInformation qualificationInformation:memberRegistrationDatabean.getQualificationInformations()){
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "qualificationInformations["+i+"].nameOfCourse", "error.message.required", "Name Of Course is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "qualificationInformations["+i+"].instituteName", "error.message.required", "Institute Name is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "qualificationInformations["+i+"].passingYear", "error.message.required", "Passing Year is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "qualificationInformations["+i+"].percentage", "error.message.required", "Percentage Time is required.");
            i++;
        }

        int j=0;
        for (RevenueInformation revenueInformation:memberRegistrationDatabean.getRevenueInformations()){
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "revenueInformations["+j+"].typeOFRevenue", "error.message.required", "Type OF Revenue is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "revenueInformations["+j+"].typeOfJob", "error.message.required", "Type Of Job is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "revenueInformations["+j+"].experience", "error.message.required", "Experience is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "revenueInformations["+j+"].WorkingPlace", "error.message.required", "Working Place Time is required.");
            j++;
        }


    }

    public void validate(MemberRegistrationDatabean memberRegistrationDatabean, BindingResult errors, MultipartFile multipartFile) {

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fullName", "error.message.required", "FullName is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "birthDate", "error.message.required", "Birth Date is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "age", "error.message.required", "Age Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobileNo", "error.message.required", "Mobile No. Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneNo", "error.message.required", "Phone No. is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "bloodGroup", "error.message.required", "Blood Group is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "emailAddress", "error.message.required", "Email Address Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "maritalStatus", "error.message.required", "Marital Status Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pinCode", "error.message.required", "Pin Code Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "error.message.required", "Address Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "village", "error.message.required", "Village Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "street", "error.message.required", "Street Time is required.");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "chiefOfFamily", "error.message.required", "Chief Of Family Time is required.");

        if (multipartFile.isEmpty()){
            errors.rejectValue("image","error.message.required", "Image is required.");
        }

        int i=0;
        for (QualificationInformation qualificationInformation:memberRegistrationDatabean.getQualificationInformations()){
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "qualificationInformations["+i+"].nameOfCourse", "error.message.required", "Name Of Course is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "qualificationInformations["+i+"].instituteName", "error.message.required", "Institute Name is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "qualificationInformations["+i+"].passingYear", "error.message.required", "Passing Year is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "qualificationInformations["+i+"].percentage", "error.message.required", "Percentage Time is required.");
            i++;
        }

        int j=0;
        for (RevenueInformation revenueInformation:memberRegistrationDatabean.getRevenueInformations()){
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "revenueInformations["+j+"].typeOFRevenue", "error.message.required", "Type OF Revenue is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "revenueInformations["+j+"].typeOfJob", "error.message.required", "Type Of Job is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "revenueInformations["+j+"].experience", "error.message.required", "Experience is required.");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "revenueInformations["+j+"].workingPlace", "error.message.required", "Working Place Time is required.");
            j++;
        }
    }
}
