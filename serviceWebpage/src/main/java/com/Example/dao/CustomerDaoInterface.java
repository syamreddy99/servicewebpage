package com.Example.dao;

import java.util.List;

import com.Example.models.*;
import java.util.List;


public interface CustomerDaoInterface {
	public String updateUserName(UpdateModel um);
	public String insert ( CustomerModel cm) ;
	public String adminlogin ( AdminModel am) ;
	public String customerlogin ( CustomerLoginModel clm);
	public String checkUserID ( String userID);
	public List<Product> getProducts();
	public List<CustomerProfile> profileDet(CustomerLoginModel clm);
	public String passwordChange(PasswordChangeRequest PCR);
	public String adminProdAdd(ProductCollectionModel pcm);
	public List<ActiveProducts> getActiveProducts();
	}
