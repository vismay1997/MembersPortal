package com.vismay.membersportal.validators;

import com.vismay.membersportal.databeans.MarqueeDataBean;
import org.hibernate.event.spi.SaveOrUpdateEvent;
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
public class MarqueeValidators  implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return  MarqueeDataBean.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        MarqueeDataBean  marqueeDataBean= (MarqueeDataBean) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "title", "error.message.required", "Title is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "error.message.required", "Description is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "startDateTime", "error.message.required", "Start Date Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "endDateTime", "error.message.required", "End Date Time is required.");


        if (!errors.hasFieldErrors("startDateTime") || !errors.hasFieldErrors("endDateTime")) {
            Date startDate= new Date();
            Date endDate= new Date();

            try {
                startDate = new SimpleDateFormat("yyyy-mm-dd").parse(marqueeDataBean.getStartDateTime());
                endDate=new SimpleDateFormat("yyyy-mm-dd").parse(marqueeDataBean.getEndDateTime());
                if (startDate.after(endDate)) {
                    errors.rejectValue("endDateTime", "error.message.required", "End Date Does Not Comes First.");
                }
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }

    }

    public void validate(MarqueeDataBean marqueeDataBean, BindingResult errors, MultipartFile multipartFile) throws ParseException {

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "title", "error.message.required", "Title is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "error.message.required", "Description is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "startDateTime", "error.message.required", "Start Date Time is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "endDateTime", "error.message.required", "End Date Time is required.");

        if (multipartFile.isEmpty()){
            errors.rejectValue("image","error.message.required", "Title is required.");
        }

        if (!errors.hasFieldErrors("startDateTime") || !errors.hasFieldErrors("endDateTime")) {
            Date startDate= new Date();
            Date endDate= new Date();

            try {
                startDate = new SimpleDateFormat("yyyy-mm-dd").parse(marqueeDataBean.getStartDateTime());
                endDate=new SimpleDateFormat("yyyy-mm-dd").parse(marqueeDataBean.getEndDateTime());
                if (startDate.after(endDate)) {
                    errors.rejectValue("endDateTime", "error.message.required", "End Date Does Not Comes First.");
                }
            } catch (ParseException e) {
                e.printStackTrace();
            }

        }

    }
}
