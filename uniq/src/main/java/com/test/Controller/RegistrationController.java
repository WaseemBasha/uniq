package com.test.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.test.Service.CustomerService;
import com.test.model.BillingAddress;
import com.test.model.Customer;
import com.test.model.ShippingAddress;

@Controller
public class RegistrationController 
{

	@Autowired
	private CustomerService customerservice;

	public CustomerService getCustomerservice() {
		return customerservice;
	}

	public void setCustomerservice(CustomerService customerservice) {
		this.customerservice = customerservice;
	}
	
	@RequestMapping("/registration")
	public ModelAndView getRegistrationForm(){ 
	
		Customer customer = new Customer();
		BillingAddress billingaddress = new BillingAddress();
		ShippingAddress shippingaddress = new ShippingAddress();
		customer.setBillingAddress(billingaddress);
		customer.setShippingAddress(shippingaddress);
		return new ModelAndView("signup","customer",customer);
	}
	
	@RequestMapping(value="/registration",method=RequestMethod.POST)
	public String registerCustomer(@Value(value="customer")@ModelAttribute Customer customer,Model model,BindingResult result)
	{
		if(result.hasErrors())
			return "signup";
		
		customerservice.saveCustomer(customer);
		model.addAttribute("registrationSuccess","Registered Successfully.Login Using Username Password");
		return "Login";
	}
}
