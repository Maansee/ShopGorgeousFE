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

	/*@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView model = new ModelAndView("login");
		return model;
	}
	
	@RequestMapping("/loginerror")
	public String LoginError(@RequestParam(value = "error", required = false) String error, Model model) {
		model.addAttribute("error", "Typos are expected! Pls try again.");
		return "login";
	}

	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		System.out.println("Logout1");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			System.out.println("Logout2");
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}System.out.println("Logout3");
//		model.addAttribute("logout", "Have a great time! Thank you for visiting us.");
		return "login";
	}*/


	
	@RequestMapping("/about")
	public ModelAndView about() {
		ModelAndView model = new ModelAndView("about");
		return model;
	}

//	@RequestMapping("/product")
//	public ModelAndView product() {
//		ModelAndView model = new ModelAndView("product");
//		return model;
//	}

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

	@RequestMapping("/offer")
	public ModelAndView offer() {
		ModelAndView model = new ModelAndView("offer");
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
