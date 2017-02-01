package com.niit.shopgorgeous.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.shopgorgeous.dao.CartDAO;
import com.niit.shopgorgeous.dao.UserDAO;
import com.niit.shopgorgeous.model.Cart;
import com.niit.shopgorgeous.model.UserCustomer;


@Controller
public class CartController {

	@Autowired
	private UserDAO userDAO;

	@Autowired
	CartDAO cartDAO;



	@RequestMapping("/**/cart/**/getCartId")
	public String getCartId(Model model) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String id = user.getUsername();
		UserCustomer user1 = userDAO.get(id);
		model.addAttribute("cartId", user1.getCart().getCartId());
		return "Cart";
	}

	@RequestMapping("/cart/**/getCart/{cartId}")
	public @ResponseBody Cart getCartItems(@PathVariable(value = "cartId") int cartId) {
		Cart cart = cartDAO.getCartByCartId(cartId);
		return cart;
	}
}
