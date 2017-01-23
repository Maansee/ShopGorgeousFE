package com.niit.shopgorgeous.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopgorgeous.dao.ProductDAO;
import com.niit.shopgorgeous.model.Category;
import com.niit.shopgorgeous.model.Product;
import com.niit.shopgorgeous.model.Supplier;
import com.niit.shopgorgeous.model.User;

@Controller
public class HomeController {
	
//	@Autowired
//	ProductDAO productDAO;
	
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
//		ModelAndView model = new ModelAndView("register");
		System.out.println("in UserController");
		User u = new User();
	
		ModelAndView model = new ModelAndView("register");
		model.addObject("Userdata",u);
		return model;	
	
	}

	
//	@RequestMapping(value = "/category")
//	public ModelAndView category() {
//		System.out.println("in CategoryController");
//		Category c = new Category();
//	
//		ModelAndView model = new ModelAndView("category");
//		model.addObject("Categorydata",c);
//		return model;	
//		}
	
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

//	@RequestMapping("/supplier")
//	public ModelAndView supplier() {
////		ModelAndView model = new ModelAndView("supplier");
//		System.out.println("in SupplierController");
//		Supplier s = new Supplier();
//		ModelAndView model = new ModelAndView("supplier");
//		model.addObject("Supplierdata",s);
//		return model;
//	}
	
//	@RequestMapping("/newproduct")
//	public ModelAndView newproduct() {
//		Product p = new Product();
//		ModelAndView model = new ModelAndView("newproduct");
//		model.addObject("Productdata", p);
////		model.addObject("Catgname", productDAO.listcatgname());
////		model.addObject("Suplname", productDAO.listsuplname());
//		return model;
//	}

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
