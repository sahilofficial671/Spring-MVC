package com.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.dao.ProductDao;
import com.springmvc.model.Product;
import com.springmvc.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDao productDao;
	
	@Override
	public List<Product> getProducts() {
		return productDao.getProducts();
	}

	@Override
	public Boolean add(Product product) {
		return productDao.add(product);
	}

	@Override
	public Product getProductById(Integer id) {
		return productDao.getProductById(id);
	}

}
