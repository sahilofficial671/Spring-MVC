package com.springmvc.dao;

import java.util.List;

import com.springmvc.model.Product;

public interface ProductDao {
	List<Product> getProducts();
	Product getProductById(Integer id);
	Boolean add(Product product);
}
