package customercrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import customercrudapp.dao.CustomerDao;
import customercrudapp.model.Customer;

@Controller
public class MainController {

	@Autowired
	private CustomerDao customerDao;
	
	@RequestMapping("/")
	public String home(Model m) {
		
		List<Customer> customers = customerDao.getCustomers();
		m.addAttribute("customers", customers);
		
		return "index";
	}
	
	//show add product form
	@RequestMapping("/add-customers")
	public String addProduct(Model m)
	{
		m.addAttribute("title","Add Customer");
		return "add_customer_form";
	}
	
	//handle add product form
	@RequestMapping(value = "/handle-customer", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Customer customer,HttpServletRequest request)
	{
		System.out.println(customer);
		customerDao.createCustomer(customer);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	//delete handler
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId ,HttpServletRequest request)
	{
		this.customerDao.deleteCustomer(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid, Model m)
	{
		Customer product = this.customerDao.getCustomer(pid);
		m.addAttribute("customer", product);
		
		return "update_form";
	}
	
	
}
