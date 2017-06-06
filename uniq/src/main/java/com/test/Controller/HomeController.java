package com.test.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String home()
	{
		return "Home";
	}
	@RequestMapping("/login")
	public String login()
	{
		return "Login";
	}
	@RequestMapping("/signup")
	public String signup()
	{
		return "signup";
	}

}
