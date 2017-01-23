package com.niit.shopgorgeous.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopgorgeous.dao.ProductDAO;
import com.niit.shopgorgeous.dao.SupplierDAO;
import com.niit.shopgorgeous.model.Product;

@Controller
public class ProductController {
	public static Logger log = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	Product product;

	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/newproduct")
	public ModelAndView newproduct() {
		System.out.println("in ProductController");
		Product p = new Product();
		ModelAndView model = new ModelAndView("newproduct");
		model.addObject("Productdata", p);
		model.addObject("Catgname", productDAO.listcatgname());
		model.addObject("Suplname", productDAO.listsuplname());
		return model;
	}
	
	@RequestMapping(value = "/addproduct", method = RequestMethod.POST)
	public String addprod(@Valid @ModelAttribute("Productdata") Product reg, HttpServletRequest request,BindingResult result) 

	{System.out.println("add product");

		if (result.hasErrors())
			return "productForm";

		MultipartFile image = reg.getImage();
		if (image != null && !image.isEmpty()) {
			Path path = Paths
					.get("F:\\Eclipse Workspace\\MyProject\\ShopGorgeousFE\\src\\main\\webapp\\resources\\images"
							+ reg.getProductname() + ".jpg");
			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		productDAO.save(reg);
		return ("redirect:/productlist");

	}
	
	@RequestMapping(value = "/productlist")
	public String ViewProducts(Model model) {
		model.addAttribute("productList", this.productDAO.list());
		return "/productlist";
	}

	@RequestMapping(value = "/removeproduct/{productid}")
	public String DeleteProducts(@PathVariable("productid") int id) {
		this.productDAO.delete(id);
		return "redirect:/productlist";

	}

	@RequestMapping("/editproduct/{productid}")
	public String editProducts(@PathVariable("productid") int id, Model model) {
		model.addAttribute("Product", this.productDAO.get(id));
		model.addAttribute("productList", this.productDAO.list());
		return "editproduct";
	}

//	@RequestMapping(value = "/listproductsjson")
//	public @ResponseBody List<Product> listProdInJSON() {
//		return productDAO.list();
//	}

	// @RequestMapping("/infoprod/{productid}")
	// public ModelAndView trial() {
	// ModelAndView model = new ModelAndView("singleProduct");
	// return model;
	// }

//	@RequestMapping("/infoprod/{productid}")
//	public ModelAndView getRecord(@PathVariable("productid") int id, Model model) {
//		Product productObject = productDAO.get(id);
//		// System.out.println("view:"+movieObject.getMoviename());
//		return new ModelAndView("singleProduct", "productObject", productObject);
//	}
}
	


