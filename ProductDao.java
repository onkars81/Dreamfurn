package com.ex.model;

import java.util.List;

public interface ProductDao {
 public void add(Product product);
 public void edit(Product product);
 public void delete(int  productId);
 public void deleteProduct(Product product);
 
 public Product getProduct(int productId);

 public List getAllProduct();
}
