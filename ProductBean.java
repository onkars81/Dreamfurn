package com.ex.model;



public class ProductBean {

	
	private Integer prod;
	private String productname;
	private String category;
	private String description;
	private String price;
	private String image;
	
	
	public Integer getProd() {
		return prod;
	}
	public void setProd(int prod) {
		this.prod = prod;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	public ProductBean(){}
	
	public ProductBean(int prod, String productname, String category, String description, String price, String image) {
		super();
		this.prod = prod;
		this.productname = productname;
		this.category = category;
		this.description = description;
		this.price = price;
		this.image = image;
	}
	
	
}
