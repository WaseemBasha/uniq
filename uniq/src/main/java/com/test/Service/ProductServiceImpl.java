package com.test.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.Dao.ProductDao;
import com.test.model.product;
@Service
public class ProductServiceImpl implements ProductService{
@Autowired	
private ProductDao productDao;
	public void saveProduct1(product product) {
	   productDao.saveProduct(product);
		
	}
	public void saveProduct(product product) {
		// TODO Auto-generated method stub
		
	}

}