package com.ex.model;

import com.ex.model.CartDao;
import com.ex.model.Cart;
import com.ex.model.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service

public class CartServiceImpl implements CartService
{

    @Autowired
 
   private CartDao cartDao;

 
   public Cart getCartById(int cartId)
{
      
  return cartDao.getCartById(cartId);

    }

   
 public void update(Cart cart){
  
      cartDao.update(cart);
 
   }


} // The End of Class;
