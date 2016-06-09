package com.ex.model;

import com.ex.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
