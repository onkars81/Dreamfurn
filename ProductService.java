package com.ex.model;

import java.util.List;

public interface ProductService {

	 public void add(Product product);

	public Product getProduct(int prod);
	public List getAllProduct();
	public void delete(int productId);
	public void edit(Product product);
	/*// 
	 * 	public void edit(Product product);
	 public void deleteProduct(Product product);
	 public List getAllProduct();*/	
}
