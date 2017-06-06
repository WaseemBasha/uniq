package com.test.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.Service.ProductService;
import com.test.model.product;

@Controller
public class productcontroller {
	@Autowired
private ProductService productService;
@RequestMapping("admin/product/productform")
public String getProductForm(Model model){
	model.addAttribute("product",new product());
	return "productform";
}

	
@RequestMapping("admin/product/saveproduct")
public String saveProduct(@ModelAttribute(value="product") product product){
	productService.saveProduct(product);
	return "redirect:/all/product/productlist";
}
}