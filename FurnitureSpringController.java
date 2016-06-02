package com.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ex.model.Product;
import com.ex.model.ProductService;
import com.ex.model.User;
import com.ex.model.UserService;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;


@Controller
public class FurnitureSpringController {
	
	private ProductService productService;
	@Autowired
	private UserService userService;
	@Autowired
	public FurnitureSpringController(ProductService productService)
	{ 	
		this.productService=productService;
		//this.userService=userservice;	
	}
	@RequestMapping(value="/")
	public String getLandingPage()
	{		return "index";	}	
	@RequestMapping(value={"/index","/admin/index"})
	public String getIndex()
	{		return "index";	}
	@RequestMapping(value="/ProductDetail")
	public String getProductDetail()
	{		return "ProductDetail";	}
	@RequestMapping(value="/aboutUs")
	public String aboutUS()
	{		return "aboutUs";	}
	/*@RequestMapping(value="/signUp")
	public String signUp()
	{		return "signUp";	}*/
	@RequestMapping(value="/loginForm")
	public String login()
	{	System.out.println("Login form hit");
		return "loginForm";	
		}
	@RequestMapping(value="/home")
	public String home()
	{		return "home";	}
	  //add products


	
	
	@RequestMapping(value ={"/users/ProductRegistration"}, method = RequestMethod.POST) 
    public ModelAndView displayUserLogin(@ModelAttribute("Product") Product product,BindingResult bind) { 
    	ModelAndView model = new ModelAndView("UserProductRegistration");
    	model.addObject("Product", product); 
        return model; 
    }
	
	
	

	   @ModelAttribute("insert")
		public Product construct()
		    {	    	return new Product();	    }

	   
	   @RequestMapping("/admin/ProductRegistration")
	   public ModelAndView insertProductRegistered(@ModelAttribute("insert") Product p,HttpServletRequest request, BindingResult result)
	   {
		  
		   return new ModelAndView("ProductRegistration");
	  
	   }
	
	   //show all products once clicked on submit in product registration
	    @RequestMapping(value="/admin/actionTest",method = RequestMethod.POST)
	    public ModelAndView processRegistration(@ModelAttribute("insert") Product p,HttpServletRequest request, BindingResult result) {
	    	
	    	String filename=null;
			   int res = 0;
			   	 
			   
			   ServletContext context=request.getServletContext();
			   
			   String path=context.getRealPath("/resources/"+p.getProd()+".jpg");
			   System.out.println("Path = "+path);
			   System.out.println("File name = "+p.getImage().getOriginalFilename());
			   
			   File f=new File(path);
			   if(!p.getImage().isEmpty())
			   {
			   try
			   {
			   //filename=p.getImage().getOriginalFilename();
			   byte[] bytes=p.getImage().getBytes();
			   BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
			   bs.write(bytes);
			   bs.close();
			   System.out.println("Image uploaded");
			   productService.add(p);
			   res=1;
			   System.out.println("Data Inserted");
			   }
			   catch(Exception ex)
			   {
			   System.out.println(ex.getMessage());
			   }
			   }
			   else
			   {
			   res=0;
			   }
			   if(res>0)
			   {
			   //List<Product> products = ps.getAllProduct();
			   //model.addAttribute("products", products );
			   return new ModelAndView("index");
			   }
			   else
			   {
			   return new ModelAndView("error");
			   }
	    	//productService.add(product);
	      //  return "index";*/
	    	
	    	
	    }
	    
	  /*//show all products once clicked on submit in product registration
	    @RequestMapping(value="users/actionTest",method = RequestMethod.POST)
	    public String processUserRegistration(@ModelAttribute("Product") Product product,
	            Map<String, Object> model) {
	    	productService.add(product);
	        return "index";
	    }*/
	    
	    
	    //get the list of all products
	    @RequestMapping(value = "/getAllProduct")
	    public ModelAndView getAllProducts() {
	    	ModelAndView mav = new ModelAndView("admin/AllProduct");
	    	List<Product> productList = productService.getAllProduct();
	    	mav.addObject("productList", productList);
	    	System.out.println(productList);
	    	return mav;
	    } 
	    //delete a product
	    @RequestMapping("/deleteProduct")
	    public ModelAndView deleteProduct(@RequestParam Integer prod) {
	    productService.delete(prod);
	    return new ModelAndView("redirect:AllProduct");
	    } 
	    //displaying a single product
	    @RequestMapping({"/showProduct","/admin/showProduct"})
	    public String showProduct(@RequestParam("prod") int prod, Model model) {
	   	   	Product product = productService.getProduct(prod);
	    	model.addAttribute("product",product);
	   	   	return "ViewProduct";		}
	  //get all the products added when click on nav bar top Allproduct link
	   
	    @RequestMapping(value="/AllProduct",method=RequestMethod.POST)
		public ModelAndView getAllProduct()
		{	ModelAndView mav = new ModelAndView("AllProduct");
	    	List<Product> productList = productService.getAllProduct();
	    	mav.addObject("productList", productList);
	    	System.out.println(productList);
	    	return mav;
		}
	    @RequestMapping(value="/AllProduct",method=RequestMethod.GET)
		public ModelAndView admingetAllProduct()
		{	ModelAndView mav = new ModelAndView("AllProduct");
	    	List<Product> productList = productService.getAllProduct();
	    	mav.addObject("productList", productList);
	    	System.out.println(productList);
	    	return mav;
		}
	    
	   

		@RequestMapping(value = "/signUp", method = RequestMethod.GET) 
		    public ModelAndView displaySignUp(@ModelAttribute("User") User user,BindingResult bind) { 
	
			ModelAndView model = new ModelAndView("signUp");
			model.addObject("User", user); 
			 return model;   
		    }
		   
		   @RequestMapping(value = "/actionUser", method = RequestMethod.POST)
	        public ModelAndView doLogin(@Valid @ModelAttribute("User") User user,
	                BindingResult result, Map<String, Object> model) {
	     
	            if (result.hasErrors()) {
	                
	            	ModelAndView mav = new ModelAndView("signUp");
	            	mav.addObject("msg",result );
	            	return mav;
	            }
	            userService.add(user);
	            ModelAndView mav = new ModelAndView("loginForm");
	            
	            return mav;
	        }
	    
			
		   
		   
		   @RequestMapping("/productform")
			public ModelAndView editProductById(@RequestParam("prod") int prod,Model model){
				Product p = productService.getProduct(prod);
				ModelAndView mav = new ModelAndView("productform");
				mav.addObject("Product", p);
				return mav;
			}

		@RequestMapping(value="/actionEdit")
			public String editProduct(@ModelAttribute("Product") Product product, Map model){
			 
			    productService.edit(product);
			    List productList=productService.getAllProduct();
			    model.put("productList", productList);
			 
			    return "AllProduct";
			}}
