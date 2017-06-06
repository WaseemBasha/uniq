package com.test.Service;

import java.util.List;

import com.test.model.Customer;

public interface CustomerService {
void saveCustomer(Customer customer);
List<Customer> getCustomers();
}