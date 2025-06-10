package com.sagar.Controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.sagar.Binding.Student;
import com.sagar.Entity.StudentEntity;
import com.sagar.repository.StudentRepository;

@Controller
public class StudentController {
	public String Email;
	
	@Autowired 
	private StudentRepository repo;
	
	
	@GetMapping("/data")
	public String loadData(Model model) {
		
		loadFormdata(model);
		return "index";//view name 
	}
	
	
	
	@PostMapping("/save")
	
	public String handleSubmit( Student  s,Model model) {
		System.out.println(s);
		
		
		if ( s.getsName() == null || s.getsName().isBlank() ||
		        s.getEmail() == null || s.getEmail().isBlank() ||
		        s.getGender() == null || s.getGender().isBlank() ||
		        s.getCourse() == null || s.getCourse().isBlank() ||
		        s.getTimings() == null || s.getTimings().length == 0 ) {
			    model.addAttribute("blank", "Please fill in all the fields.");
			}

		
		
		else if(repo.existsByEmail(s.getEmail())) {
			model.addAttribute("exist", "email already exist");
			loadFormdata(model);
			return "index";
		}
	

		else {
		
		StudentEntity entity=new StudentEntity();
		
		
		BeanUtils.copyProperties(s, entity);
		
		entity.setTimings(Arrays.toString(s.getTimings()));
		
		repo.save(entity);
	
		
		
		
		model.addAttribute("msg","Student Saved");
		loadFormdata(model);
		return "index";
		}
		loadFormdata(model);
		return "index";
		
	}


	private void loadFormdata(Model model) {
		
		List<String> courses=new ArrayList<>();
		courses.add("java");
		courses.add("DevOps");
		courses.add("AWS");
		courses.add("Python");
	
		List<String> timings=new ArrayList<>();
		timings.add("morning");
		timings.add("afternoon");
		timings.add("evening");
	
		Student student=new Student();
		student.setEmail(" ");
		student.setPassword(" ");
		//send to UI
		
	model.addAttribute("CoursesList",courses);
	model.addAttribute("timingList",timings);
	model.addAttribute("student",new Student());
	}


@GetMapping("/loginForm")
public String loadLogIn(Model model) {

	return "login";
	
}




@PostMapping("/loginSave")

public String submitBtn(Student s,Model model) {
	System.out.println(s);
	Email=s.getEmail();
	
	
	if(s.getEmail()==null || s.getEmail().isBlank() || s.getPassword()==null || s.getPassword().isBlank()) {
		model.addAttribute("blank", "Please fill in all the fields.");
	}
	
		
	
	else {
		StudentEntity student=repo.findByEmail(Email);

	    if (student == null) {
	    	
	        model.addAttribute("error", "Email not registered.");
	        
	        return "login";
	    } 
	    else {
	       
	        if (student.getPassword().equals(s.getPassword())) {
	            model.addAttribute("message", "Login successful!");
	            
	           
	            
	        } else {
	            model.addAttribute("error1", "Incorrect password.");
	            
	            return "login";
	        }
	        return "loginSuccess";
	        
	    }

	}
	return "login";
}



@GetMapping("loginShow")
	public String showLogin(Student s,Model model) {
	StudentEntity students=repo.findByEmail(Email);
	if (students == null) {
        model.addAttribute("message", "Student not found with email: " + s.getEmail());
        return "login"; 
    }
	
	model.addAttribute("rtv", students);
	return "success";
}
}
	



 


