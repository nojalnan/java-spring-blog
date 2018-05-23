package com.nows.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nows.blog.entity.User;
import com.nows.blog.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@ModelAttribute("user")
	public User construct() {
		return new User();
	}
	
	@RequestMapping("/users")
	public String users(Model model) {
		model.addAttribute("users", userService.findAll());
		return "users";
	}
	
	@RequestMapping("/users/{id}")
	public String detail(Model model, @PathVariable int id) {
		model.addAttribute("user", userService.findOneWhithBlogs(id));
		return "user-detail";
	}
	
	@RequestMapping("/register")
	public String showRegistrer() {
		return "user-register";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String doRegistrer(@ModelAttribute("user") User user) {
		userService.save(user);
		return "user-register";
	}
}
