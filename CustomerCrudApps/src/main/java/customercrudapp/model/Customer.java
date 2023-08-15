package customercrudapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String fname;
	private String lname;
	private String street;
	private String address;
	private String city;
	private String state;
	private String email;
	private long phone;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public Customer(int id, String fname, String lname, String street, String address, String city, String state,
			String email, long phone) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.street = street;
		this.address = address;
		this.city = city;
		this.state = state;
		this.email = email;
		this.phone = phone;
	}
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", fname=" + fname + ", lname=" + lname + ", street=" + street + ", address="
				+ address + ", city=" + city + ", state=" + state + ", email=" + email + ", phone=" + phone + "]";
	}
	
	
}
