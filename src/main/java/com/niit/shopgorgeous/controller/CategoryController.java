package com.niit.shopgorgeous.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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


	
		@RequestMapping(value = "/category", method = RequestMethod.GET)
		public ModelAndView category() {
			System.out.println("in CategoryController");
			Category c = new Category();
		
			ModelAndView model = new ModelAndView("category");
			model.addObject("Categorydata",c);
			return model;	
			}
	
		
		@RequestMapping(value = "/categorylist")
		public ModelAndView categoryList(){
		ModelAndView mv = new ModelAndView("/categorylist");
		
		mv.addObject("category", category);
		mv.addObject("categoryList", this.categoryDAO.list());
		return mv;
		}
		
		@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
		public String addcategory(@Valid @ModelAttribute("Categorydata")Category reg,BindingResult result)
		{
			categoryDAO.save(reg);
			return "redirect:/categorylist";
		}



		@RequestMapping(value = "/removecategory/{category_id}")
		public String DeleteCategory(@PathVariable("category_id") int id) {
			this.categoryDAO.delete(id);
			return "redirect:/categorylist";

		}
		
		@RequestMapping("/editcategory/{category_id}")
		public String editCategory(@PathVariable("category_id") int id, Model model) {
			model.addAttribute("Category", this.categoryDAO.get(id));
//			model.addAttribute("categoryList", this.categoryDAO.list());
			return "editcategory";
		}

}
