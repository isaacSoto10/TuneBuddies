	package  com.example.demo.validator;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.demo.models.Idea;
import com.example.demo.models.User;
import com.example.demo.repository.IdeaRepository;



import org.springframework.validation.Errors;
import  org.springframework.validation.Validator;


import org.springframework.stereotype.Component;

@Component	
public class UserValidator implements Validator {
	

    @Override
    public boolean supports(Class<?> clazz) {
        return User.class.equals(clazz);
    }
    

    @Override
    public void validate(Object target, Errors errors) {
        User user = (User) target;
        
        if (!user.getPasswordConfirmation().equals(user.getPassword())) {
            errors.rejectValue("passwordConfirmation", "Match");
        }         
    }
}
