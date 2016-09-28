package com.niit.shoppingcart.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Supplier {
	
	@Id
	private String supl_id;
	private String supl_name;
	private String supl_address;
	
	@OneToMany(mappedBy = "supplier", fetch=FetchType.EAGER)
	private Set<Product> products;
	
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	public String getSupl_id() {
		return supl_id;
	}
	public void setSupl_id(String supl_id) {
		this.supl_id = supl_id;
	}
	public String getSupl_name() {
		return supl_name;
	}
	public void setSupl_name(String supl_name) {
		this.supl_name = supl_name;
	}
	public String getSupl_address() {
		return supl_address;
	}
	public void setSupl_address(String supl_address) {
		this.supl_address = supl_address;
	}
	

}
