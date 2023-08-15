package customercrudapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import customercrudapp.model.Customer;

@Component
public class CustomerDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createCustomer(Customer customer) {
		this.hibernateTemplate.saveOrUpdate(customer);
	}
	
	//get all products
	public List<Customer> getCustomers()
	{
		List<Customer> customers = this.hibernateTemplate.loadAll(Customer.class);
		
		return customers;
	}
	
	@Transactional
	//delete the single product
	public void deleteCustomer(int pid)
	{
		Customer p = this.hibernateTemplate.load(Customer.class, pid);
		this.hibernateTemplate.delete(p);
	}
	
	//get single product
	public Customer getCustomer(int pid)
	{
		return this.hibernateTemplate.get(Customer.class, pid);
	}
	
	
}
