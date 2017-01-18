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

import com.niit.shopgorgeous.dao.CategoryDAO;
import com.niit.shopgorgeous.model.Category;

@Controller
public class CategoryController {
	
	public static Logger log = LoggerFactory.getLogger(CategoryController.class);

	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;


	
		@RequestMapping(value = "/category", method = RequestMethod.POST)
		public ModelAndView category() {
			System.out.println("in CategoryController");
			Category c = new Category();
		
			ModelAndView model = new ModelAndView("category");
			model.addObject("Categorydata",c);
			return model;	
			}
	
		
		
		@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
		public String addcategory(@Valid @ModelAttribute("Categorydata")Category reg,BindingResult result)
		{
			categoryDAO.save(reg);
			return "login";
		}


}
