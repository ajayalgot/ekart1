package com.springproject.service;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.dao.CartDAO;
import com.springproject.model.Cart;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	CartDAO cartDAO;

	

	public boolean saveProductToCart(Cart cart) {
		// TODO Auto-generated method stub
		return cartDAO.saveProductToCart(cart);
	}

	public Cart getitem(int prodId, int userId) {
		// TODO Auto-generated method stub
		return cartDAO.getitem(prodId, userId);
	}

}
