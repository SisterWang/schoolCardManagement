package com.spring.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.Entities.Student;
@Controller
public class LoginController {

@RequestMapping("/login")
	public ModelAndView login(@Validated Student student,Model model){
	ModelAndView mv = new ModelAndView();
	model.addAttribute(student);
	if(student.getStudentId()=="123"&&student.getPassword()=="123"){
			mv.setViewName("index");
	}
	return mv;
	}
}
