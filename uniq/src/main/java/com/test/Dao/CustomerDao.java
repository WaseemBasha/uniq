package com.test.Dao;

import java.util.List;

import com.test.model.Customer;

public interface CustomerDao {
void saveCustomer(Customer customer);
List<Customer> getCustomers();//duplicate username and email
}
