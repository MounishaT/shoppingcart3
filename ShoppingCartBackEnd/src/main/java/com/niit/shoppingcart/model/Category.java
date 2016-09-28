package com.niit.shoppingcart.model;

import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Category {

	@Id
	private String ctgy_id;
	@NotEmpty
	private String ctgy_name;
	@NotEmpty
	private String ctgy_description;
	
	
	

	@OneToMany(fetch=FetchType.EAGER,mappedBy="category")
	private Set<Product> products;
	public Set<Product> getProducts() {
		return products;
	}

	public void SetProducts(Set<Product> products) {
		this.products = products;
	}

	public String getctgy_id() {
		return ctgy_id;
	}

	public void setctgy_id(String ctgy_id) {
		this.ctgy_id = ctgy_id;
	}

	public String getctgy_name() {
		return ctgy_name;
	}

	public void setctgy_name(String ctgy_name) {
		this.ctgy_name = ctgy_name;
	}

	public String getctgy_description() {
		return ctgy_description;
	}

	public void setctgy_description(String ctgy_description) {
		this.ctgy_description = ctgy_description;
	}

	

}




