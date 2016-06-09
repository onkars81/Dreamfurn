package com.ex.model;

import com.ex.model.CustomerOrderDao;
import com.ex.model.Cart;
import com.ex.model.CartItem;
import com.ex.model.CustomerOrder;
import com.ex.model.CartService;
import com.ex.model.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;


@Service

public class CustmerOrderServiceImpl implements CustomerOrderService
{

    
@Autowired
  
  private CustomerOrderDao customerOrderDao;


    @Autowired
   
 private CartService cartService;

  
  public void addCustomerOrder(CustomerOrder customerOrder)
{
       
 customerOrderDao.addCustomerOrder(customerOrder);

    }

   
 public double getCustomerOrderGrandTotal(int cartId)
{
  
      double grandTotal = 0;
  
      Cart cart = cartService.getCartById(cartId);

        List<CartItem> cartItems =cart.getCartItems();

 
       for (CartItem item : cartItems)
{
        
    grandTotal += item.getTotalPrice();
 
       }

     
   return grandTotal;

    }


} // The End of Class;
