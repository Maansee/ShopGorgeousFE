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

import com.niit.shopgorgeous.dao.SupplierDAO;
import com.niit.shopgorgeous.model.Supplier;



@Controller
public class SupplierController {

	public static Logger log = LoggerFactory.getLogger(SupplierController.class);

	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	Supplier supplier;


	
		@RequestMapping(value = "/supplier", method = RequestMethod.POST)
		public ModelAndView category() {
			System.out.println("in SupplierController");
			Supplier s = new Supplier();
		
			ModelAndView model = new ModelAndView("supplier");
			model.addObject("Supplierdata",s);
			return model;	
			}
	
		
		
		@RequestMapping(value = "/addSupplier", method = RequestMethod.POST)
		public String addcategory(@Valid @ModelAttribute("Supplierdata")Supplier reg,BindingResult result)
		{
			supplierDAO.save(reg);
			return "supplier";
		}
//
//		@RequestMapping(value = "/supplierlist")
//		public String ViewSupplier(Model model) {
//			model.addAttribute("supplierList", this.supplierDAO.list());
//			return "supplierlist";
//		}
		
		@RequestMapping(value = "/supplierlist")
		public ModelAndView supplierList(){
			ModelAndView mv = new ModelAndView("/supplierlist");
			System.out.println("supcon");
			mv.addObject("supplier", supplier);
			mv.addObject("supplierList", this.supplierDAO.list());
			return mv;
		}
		
	
		@RequestMapping(value = "/removesupplier/{Supplier_id}")
		public String DeleteSupplier(@PathVariable("Supplier_id") int id) {
			this.supplierDAO.delete(id);
			return "supplierlist";

		}
		
		@RequestMapping("/editsupplier/{Supplier_id}")
		public String editSupplier(@PathVariable("Supplier_id") int id, Model model) {
			model.addAttribute("Supplier", this.supplierDAO.get(id));
			model.addAttribute("supplierList", this.supplierDAO.list());
			return "editsupplier";
		}

	 
	    
}
