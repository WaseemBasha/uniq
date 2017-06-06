package com.test.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.model.Authorities;
import com.test.model.Customer;
import com.test.model.Users;

@Repository
public class CustomerDaoImpl implements CustomerDao {
	@Autowired
private SessionFactory sessionFactory;
	
	
	public void saveCustomer1(Customer customer) {
		Users users=customer.getUsers();
		users.setEnabled(true);
		//0,john,123,true
		Authorities authorities=new Authorities();
		authorities.setUsername(users.getUsername());
		authorities.setRole("ROLE_USER");
		
		Session session=sessionFactory.openSession();
		session.save(authorities);//Authorities table //insert into authorities values (1,'john','ROLE_USER')
		
		/*Cart cart=new Cart();
		cart.setCustomer(customer); // update the value of customer_id column in the cart table.
		customer.setCart(cart);//update the cart_id in customer table
		session.save(customer); // Users,Customer,BillingAddress,ShippingAddress,Cart
		session.flush();
		session.close();
		*/
		
	}


	public List<Customer> getCustomers() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Customer");
		List<Customer> customers=query.list();
		session.close();
		return customers;
	}


	public void saveCustomer(Customer customer) {
		// TODO Auto-generated method stub
		
	}

}
