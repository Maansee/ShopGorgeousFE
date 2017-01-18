package com.niit.shopgorgeous.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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

	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView model = new ModelAndView("login");
		return model;
	}

	@RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView model = new ModelAndView("register");
		return model;
	}

	@RequestMapping("/category")
	public ModelAndView category() {
		ModelAndView model = new ModelAndView("category");
		return model;
	}
	
	@RequestMapping("/about")
	public ModelAndView about() {
		ModelAndView model = new ModelAndView("about");
		return model;
	}

	@RequestMapping("/product")
	public ModelAndView product() {
		ModelAndView model = new ModelAndView("product");
		return model;
	}

	@RequestMapping("/contact")
	public ModelAndView contact() {
		ModelAndView model = new ModelAndView("contact");
		return model;
	}

	@RequestMapping("/supplier")
	public ModelAndView supplier() {
		ModelAndView model = new ModelAndView("supplier");
		return model;
	}

	@RequestMapping("faqs")
	public ModelAndView faqs() {
		ModelAndView model = new ModelAndView("faqs");
		return model;
	}

	@RequestMapping("/supplierlist")
	public ModelAndView supplierlist() {
		ModelAndView model = new ModelAndView("supplierlist");
		return model;
	}

	@RequestMapping("/kitchen")
	public ModelAndView kitchen() {
		ModelAndView model = new ModelAndView("kitchen");
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
