package com.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import com.ex.model.BillingAddress;
import com.ex.model.Cart;
import com.ex.model.CartItem;
import com.ex.model.CartItemService;
import com.ex.model.CartService;
import com.ex.model.Customer;
import com.ex.model.CustomerOrder;
import com.ex.model.CustomerOrderService;
import com.ex.model.CustomerService;
import com.ex.model.Product;
import com.ex.model.ProductService;
import com.ex.model.ShippingAddress;
import com.ex.model.User;
import com.ex.model.UserService;
import com.ex.security.User_authentication;
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
	
    @Autowired
    private CartService cartService;

    @Autowired
    private CartItemService cartItemService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private CustomerOrderService customerOrderService;
	
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


	@RequestMapping(value="/Cart")
	public String viewCart()
	{
		
		return "Cart";
	}
	
	
	
	
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
	   
	   @RequestMapping("/valid")
	   public void validate(@ModelAttribute("data") Product p)
	   {
		   System.out.print("data is valid !");
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
			   
			   System.out.println("Data Inserted"+res++);
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
			 
			    return "redirect:/AllProduct";
			}


	    @RequestMapping("/order/{cartId}")
	    public String createOrder(@PathVariable("cartId") int cartId){
	        CustomerOrder customerOrder = new CustomerOrder();
	        Cart cart = cartService.getCartById(cartId);
	        customerOrder.setCart(cart);

	        Customer customer = cart.getCustomer();
	        customerOrder.setCustomer(customer);
	        customerOrder.setBillingAddress(customer.getBillingAddress());
	        customer.setShippingAddress(customer.getShippingAddress());

	        customerOrderService.addCustomerOrder(customerOrder);

	        return "redirect:/checkout?cartId=" + cartId;

	    }
	/*---------------------
	@RequestMapping("/rest/cart")
	---------------------*/



	    @RequestMapping("/rest/Cart/{cartId}")
	    public @ResponseBody Cart getCartById(@PathVariable(value = "cartId") int cartId){
	        return cartService.getCartById(cartId);
	    }

	    @RequestMapping(value = "/rest/Cart/add/{productId}", method = RequestMethod.PUT)
	    @ResponseStatus(value = HttpStatus.NO_CONTENT)
	    public void addItem (@PathVariable(value = "productId") int productId, @AuthenticationPrincipal User_authentication activeUser){
	        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
	        Cart cart = customer.getCart();
	        Product product = productService.getProduct(productId);
	        List<CartItem> cartItems = cart.getCartItems();
	        
	        int val=Integer.parseInt(product.getPrice());
	        
	        for (int i=0; i < cartItems.size(); i++){
	            if(product.getProd() == cartItems.get(i).getProduct().getProd()){
	                CartItem cartItem = cartItems.get(i);
	                cartItem.setQuantity(cartItem.getQuantity() + 1);
	               
	                
	                cartItem.setTotalPrice(val*cartItem.getQuantity());
	                cartItemService.addCartItem(cartItem);

	                return;
	            }
	        }

	        CartItem cartItem = new CartItem();
	        cartItem.setProduct(product);
	        cartItem.setQuantity(1);
	        cartItem.setTotalPrice(val*cartItem.getQuantity());
	        cartItem.setCart(cart);
	        cartItemService.addCartItem(cartItem);
	    }

	    @RequestMapping(value = "/rest/Cart/remove/{productId}", method = RequestMethod.PUT)
	    @ResponseStatus(value = HttpStatus.NO_CONTENT)
	    public void removeItem(@PathVariable(value = "productId") int productId){
	        CartItem cartItem = cartItemService.getCartItemByProductId(productId);
	        cartItemService.removeCartItem(cartItem);

	    }

	    @RequestMapping(value = "/rest/Cart/{cartId}", method = RequestMethod.DELETE)
	    @ResponseStatus(value = HttpStatus.NO_CONTENT)
	    public void clearCart(@PathVariable(value = "cartId") int cartId){
	        Cart cart = cartService.getCartById(cartId);
	        cartItemService.removeAllCartItems(cart);
	    }

	    @ExceptionHandler(IllegalArgumentException.class)
	    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload")
	    public void handleClientErrors (Exception ex){

	    }

	    @ExceptionHandler(Exception.class)
	    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal Server Error")
	    public void handleServerErrors (Exception ex){

	    }


	/*-------------
	@RequestMapping("/product")
	----------------


	    @RequestMapping("/productList/all")
	    public String getProducts(Model model){
	        List<Product> products = productService.getAllProduct();
	        model.addAttribute("products", products);

	        return "productList";
	    }

	    @RequestMapping("/viewProduct/{productId}")
	    public String viewProduct(@PathVariable int productId, Model model) throws IOException{
	        Product product = productService.getProduct(productId);
	        model.addAttribute("product", product);

	        return "viewProduct";
	    }

	    @RequestMapping("/productList")
	    public String getProductByCategory(@RequestParam("searchCondition") String searchCondition, Model model){
	        List<Product> products = productService.getAllProduct();
	        model.addAttribute("products", products);
	        model.addAttribute("searchCondition", searchCondition);

	        return "productList";
	    }
	*/
	    
	    

	    @RequestMapping("/register")
	    public String registerCustomer(Model model){
	        Customer customer = new Customer();
	        BillingAddress billingAddress = new BillingAddress();
	        ShippingAddress shippingAddress = new ShippingAddress();
	        customer.setBillingAddress(billingAddress);
	        customer.setShippingAddress(shippingAddress);

	        model.addAttribute("customer", customer);

	        return "registerCustomer";
	    }


	   @RequestMapping(value = "/register", method = RequestMethod.POST)
	    public String registerCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, Model model){

	        if(result.hasErrors()){
	            return "registerCustomer";
	        }

	        List<Customer> customerList = customerService.getAllCustomers();

	        for (int i=0; i< customerList.size(); i++){
	            if(customer.getCustomerEmail().equals(customerList.get(i).getCustomerEmail())){
	                model.addAttribute("emailMsg", "Email already exists");

	                return "registerCustomer";
	            }

	            if(customer.getUsername().equals(customerList.get(i).getUsername())){
	                model.addAttribute("usernameMsg", "Username already exists");

	                return "registerCustomer";
	            }
	        }

	        customer.setEnabled(true);
	        customerService.addCustomer(customer);
	        return "registerCustomerSuccess";
	    }

		
		
		
}
