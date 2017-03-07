package com.niit.shopgorgeous.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	
	@RequestMapping("/")
	public ModelAndView homepage() {
		System.out.println("Executing method Homepage");
		ModelAndView model = new ModelAndView("index");
		return model;
	}
	
	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView model = new ModelAndView("index");
		return model;
	}

	
	@RequestMapping("/about")
	public ModelAndView about() {
		ModelAndView model = new ModelAndView("about");
		return model;
	}



	@RequestMapping("/contact")
	public ModelAndView contact() {
		ModelAndView model = new ModelAndView("contact");
		return model;
	}



	@RequestMapping("faqs")
	public ModelAndView faqs() {
		ModelAndView model = new ModelAndView("faqs");
		return model;
	}


	@RequestMapping("/shipping")
	public ModelAndView shipping() {
		ModelAndView model = new ModelAndView("shipping");
		return model;
	}

	@RequestMapping("/single")
	public ModelAndView single() {
		ModelAndView model = new ModelAndView("single");
		return model;
	}

	@RequestMapping("/terms")
	public ModelAndView terms() {
		ModelAndView model = new ModelAndView("terms");
		return model;
	}

	@RequestMapping("/wishlist")
	public ModelAndView wishlist() {
		ModelAndView model = new ModelAndView("wishlist");
		return model;
	}

}
