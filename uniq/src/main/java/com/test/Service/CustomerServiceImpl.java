package com.test.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.Dao.CustomerDao;
import com.test.model.Customer;
@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
private CustomerDao customerDao;
	public void saveCustomer(Customer customer) {
	   customerDao.saveCustomer(customer);
	}
	public List<Customer> getCustomers() {
		return customerDao.getCustomers();
	}
}