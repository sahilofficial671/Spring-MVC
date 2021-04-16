package com.springmvc.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springmvc.dao.ProductDao;
import com.springmvc.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getProducts() {
		try {
			Session session  = sessionFactory.getCurrentSession();
			return session.createQuery("from Product").list();
		}catch(Exception e) {
			e.printStackTrace();
			String message = "Error From: "+ this.getClass().getSimpleName() +" ["+Thread.currentThread().getStackTrace()[1].getMethodName()+"], Error Class: " + e.getClass().getSimpleName() + ", Message: "+ e.getMessage();
			System.out.println(message);
			return null;
		}
	}

	@Override
	public Boolean add(Product product) {
		try {
			Session session  = sessionFactory.getCurrentSession();
			session.save(product);
			session.flush();
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			String message = "Error From: "+ this.getClass().getSimpleName() +" ["+Thread.currentThread().getStackTrace()[1].getMethodName()+"], Error Class: " + e.getClass().getSimpleName() + ", Message: "+ e.getMessage();
			System.out.println(message);
			return null;
		}
	}

	@Override
	public Product getProductById(Integer id) {
		try {
			Session session  = sessionFactory.getCurrentSession();
			return session.get(Product.class, id);
		}catch(Exception e) {
			e.printStackTrace();
			String message = "Error From: "+ this.getClass().getSimpleName() +" ["+Thread.currentThread().getStackTrace()[1].getMethodName()+"], Error Class: " + e.getClass().getSimpleName() + ", Message: "+ e.getMessage();
			System.out.println(message);
			return null;
		}
	}

}
