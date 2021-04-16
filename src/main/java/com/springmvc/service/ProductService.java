package com.springmvc.service;

import java.util.List;

import com.springmvc.model.Product;

public interface ProductService {
	List<Product> getProducts();
	Product getProductById(Integer id);
	Boolean add(Product product);
}
