package com.niit.shopgorgeous.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.niit.shopgorgeous.dao.CartDAO;
import com.niit.shopgorgeous.dao.CartItemDAO;
import com.niit.shopgorgeous.dao.ProductDAO;
import com.niit.shopgorgeous.dao.UserDAO;
import com.niit.shopgorgeous.model.Cart;
import com.niit.shopgorgeous.model.CartItem;
import com.niit.shopgorgeous.model.Product;
import com.niit.shopgorgeous.model.UserCustomer;



@Controller
public class CartItemController {

	@Autowired
	private CartItemDAO cartitemDAO;

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private CartDAO cartDAO;
	
	@RequestMapping("/cart/add/{productid}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addCartItem(@PathVariable(value = "productid") int productid) {
		// Is to get the username of the customer
		// User object contains details about the user -username , password,
		// activeuser or not
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println("Stage1");
		String username = user.getUsername();
		System.out.println("Stage2");
		UserCustomer user1 = userDAO.get(username);
		System.out.println("Stage3");
		Cart cart = user1.getCart();

		List<CartItem> cartItems = cart.getCartItems();
		System.out.println(cartItems.isEmpty());
		Product product = productDAO.get(productid);

		for (int i = 0; i < cartItems.size(); i++) {
			CartItem cartItem = cartItems.get(i);
			System.out.println("Stage4");
			if (product.getProductid() == cartItem.getProduct().getProductid()) {
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setTotalprice(cartItem.getQuantity() * cartItem.getProduct().getProductprice());
				cartitemDAO.addCartItem(cartItem);
				return;
			}
		}
		CartItem cartItem = new CartItem();
		cartItem.setQuantity(1);
		cartItem.setProduct(product);
		cartItem.setTotalprice(product.getProductprice() * 1);
		cartItem.setCart(cart);
		cartitemDAO.addCartItem(cartItem);
		System.out.println(cartItem.getTotalprice());
	}

	@RequestMapping("/cart/removecartitem/{cartitemid}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeCartItem(@PathVariable(value = "cartitemid") int cartItemId) {
		System.out.println("removing item");
		cartitemDAO.removeCartItem(cartItemId);
	}

	@RequestMapping("/cart/removeAllItems/{cartId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeAllCartItems(@PathVariable(value = "cartId") int cartId) {
		Cart cart = cartDAO.getCartByCartId(cartId);
		cartitemDAO.removeAllCartItems(cart);
	}
	
}
