package com.springapp.mvc.validation;

import com.springapp.mvc.domain.Track;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Created by Aspire on 18.12.2015.
 */
@Component
public class TrackValidator implements Validator{

    @Override
    public boolean supports(Class<?> aClass){
        return Track.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object model, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "required.name","Name is required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "text", "required.text","Text is required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "album", "required.album","Album is required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "record", "required.record","Record is required");
    }
}
