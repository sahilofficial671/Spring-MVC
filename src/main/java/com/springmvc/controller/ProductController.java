package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.springmvc.helper.Flash;
import com.springmvc.model.Product;
import com.springmvc.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired 
	private ProductService productService;
	
	@GetMapping("/product/add")
	public String add(Model model) {
		Product product = new Product();
		model.addAttribute("product", product);
		return "product/add";
	}
	
	@PostMapping("/product/submit")
	public String submit(@ModelAttribute("product") Product product, HttpServletRequest request)
	{	
		if(productService.add(product)) {
			Flash.success(request, "Product Added.");
			return "index";
		}
		
		Flash.error(request, "Something went wrong.");
		return "redirect:/product/add";
	}
	
	@GetMapping("/products")
	public String viewAll(Model model) {
		model.addAttribute("products", productService.getProducts());
		return "product/viewAll";
	}
	
	@GetMapping("/product/{id}")
	public String viewAll(@PathVariable("id") Integer id, Model model) {
		model.addAttribute("product", productService.getProductById(id));
		return "product/view";
	}
}
