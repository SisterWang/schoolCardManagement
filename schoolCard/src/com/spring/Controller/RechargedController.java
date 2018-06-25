package com.spring.Controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class RechargedController{
@RequestMapping("/recharged")
	public String recharged(){
			return "recharged";
		}
}