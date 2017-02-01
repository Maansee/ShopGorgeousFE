package com.niit.shopgorgeous.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopgorgeous.dao.UserDAO;
import com.niit.shopgorgeous.model.BillingAddress;
import com.niit.shopgorgeous.model.Cart;
import com.niit.shopgorgeous.model.ShippingAddress;
import com.niit.shopgorgeous.model.UserCustomer;


@Controller
public class UserController {

	public static Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserDAO userDAO;

	@Autowired
	UserCustomer user;
		
		

//	
//		@RequestMapping(value = "/register", method = RequestMethod.POST)
//		public ModelAndView register() {
//			System.out.println("in UserController");
//			User u = new User();
//		
//			ModelAndView model = new ModelAndView("register");
//			model.addObject("Userdata",u);
//			return model;	
//			}

	
		@RequestMapping("/register")
		public ModelAndView register() {
	//		ModelAndView model = new ModelAndView("register");
			System.out.println("in UserController");
			UserCustomer u = new UserCustomer();
			BillingAddress billingAddress = new BillingAddress();
			ShippingAddress shippingAddress = new ShippingAddress();
			Cart cart = new Cart();
			u.setBillingAddress(billingAddress);
			u.setShippingAddress(shippingAddress);
			ModelAndView model = new ModelAndView("register");
			model.addObject("Userdata",u);
			return model;	
		
		}
		
		@RequestMapping(value = "/saveuser", method = RequestMethod.POST)
		public String adduser(@Valid @ModelAttribute("Userdata")UserCustomer reg,BindingResult result)
		{
			userDAO.save(reg);
			return "login";
		}

}


