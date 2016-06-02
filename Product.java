package com.ex.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;


@Entity
@Table(name="Product")
public class Product implements Serializable{
	
	
		@Id
		@Column
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int prod;
		@Column
		private String productname;
		@Column
		private String category;
		@Column
		private String description;
		@Column
		private String price;
		@Transient
		private MultipartFile image;

	    public Product()
	    {
	    super();
	    }
    
	
		public int getProd() {
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


		public MultipartFile getImage() {
			return image;
		}


		public void setImage(MultipartFile image) {
			this.image = image;
		}


		

		public Product(int prod, String productname, String category, String description, String price,
				MultipartFile image) {
			super();
			this.prod = prod;
			this.productname = productname;
			this.category = category;
			this.description = description;
			this.price = price;
			this.image = image;
		}


		@Override
		public String toString() {
			return "Product [prod=" + prod + ", productname=" + productname + ", category=" + category
					+ ", description=" + description + ", price=" + price + ", image=" + image + "]";
		}


		
	    
	  		
	 
	}

