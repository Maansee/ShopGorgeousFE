package com.niit.shopgorgeous.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shopgorgeous.dao.CartDAO;
import com.niit.shopgorgeous.dao.CustomerOrderDAO;
import com.niit.shopgorgeous.model.Cart;
import com.niit.shopgorgeous.model.CustomerOrder;
import com.niit.shopgorgeous.model.UserCustomer;




@Controller
public class CustomerOrderController {

	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	CustomerOrderDAO customerOrderDAO;
	

    @RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") int cartId){
        CustomerOrder customerOrder = new CustomerOrder();
        Cart cart = cartDAO.getCartByCartId(cartId);
        //UPDATE CARTID FOR CUSTOMERORDER - SET CARTID
        customerOrder.setCart(cart);


        UserCustomer customer = cart.getUserCustomer();
        //SET CUSTOMERID
        customerOrder.setUser(customer);
        //SET BILLINGADDRESSID
        customerOrder.setBillingAddress(customer.getBillingAddress());
        //SET SHIPPINGADDRESSID
        customerOrder.setShippingAddress(customer.getShippingAddress());

        customerOrderDAO.addCustomerOrder(customerOrder);
        return "redirect:/checkout?cartId=" + cartId;

    }
}
