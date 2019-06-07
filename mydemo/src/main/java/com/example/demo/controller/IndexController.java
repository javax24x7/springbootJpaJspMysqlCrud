package com.example.demo.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.service.UserService;

@Controller
public class IndexController {
	@Autowired
	UserService userService;

	@RequestMapping("/")
	public String inde(Model model) {
		model.addAttribute("date", new Date());
		model.addAttribute("listUser", userService.findAll());
		return "index";
	}
	
	
	/*
	 * @RequestMapping(value="/newUser", method= RequestMethod.GET) public
	 * ModelAndView newUser(ModelAndView model) { model.setViewName("user"); return
	 * model; }
	 */
}
