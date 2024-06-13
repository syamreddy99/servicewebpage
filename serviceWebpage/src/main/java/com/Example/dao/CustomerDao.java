package com.Example.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Example.models.CustomerProfile;
import com.Example.models.PasswordChangeRequest;
import com.Example.models.ActiveProducts;
import com.Example.models.AdminModel;
import com.Example.models.CustomerLoginModel;
import com.Example.models.CustomerModel;
import com.Example.models.Product;
import com.Example.models.ProductCollectionModel;
import com.Example.models.UpdateModel;
import com.Example.util.DBConnection;

public class CustomerDao implements CustomerDaoInterface {
	String status = "Failure";

	@Override
	public String insert(CustomerModel cm) {
		try {
			DBConnection db = new DBConnection();
			Connection con = db.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"INSERT INTO Customer (CName, CUserID, Gmail, PhoneNo, Pass) VALUES (?, ?, ?, ?, ?)");
			ps.setString(1, cm.getFullName());
			ps.setString(2, cm.getUserId());
			ps.setString(3, cm.getGmail());
			ps.setString(4, cm.getPhoneno());
			ps.setString(5, cm.getPassWord());

			int n = ps.executeUpdate();
			System.out.println("no of rows inserted=" + n);

			if (n > 0) {
				status = "Success";
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	@Override
	public String adminlogin(AdminModel am) {
		try {
			DBConnection db = new DBConnection();
			Connection con = db.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM ADMIN WHERE ADMINID = ? AND PASSWORD =?");
			ps.setString(1, am.getAdminName());
			ps.setString(2, am.getAdminPass());
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				status = "Success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	@Override
	public String customerlogin(CustomerLoginModel clm) {
		try {
			DBConnection db = new DBConnection();
			Connection con = db.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM Customer WHERE CUserID=? AND Pass=?");
			ps.setString(1, clm.getUserId());
			ps.setString(2, clm.getPassWord());
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				status = "Success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	@Override
	public String checkUserID(String userID) {
		try {
			DBConnection db = new DBConnection();
			Connection con = db.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM Customer WHERE CUserID = ?");
			ps.setString(1, userID);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				status = "Failure";
			} else {
				status = "Success";
			}
		} catch (Exception e) {
			System.out.println(e);
			status = "Error";
		}

		return status;
	}

	@Override
	public String updateUserName(UpdateModel um) {
		// Implement this method if needed
		return null;
	}

	@Override
	public List<Product> getProducts() {
		List<Product> products = new ArrayList<>();

		try {
			DBConnection db = new DBConnection();
			Connection con = db.getConnection();
			String sql = "SELECT image_path, product_name, product_price FROM products";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				String imagePath = rs.getString("image_path");
				String productName = rs.getString("product_name");
				double productPrice = rs.getDouble("product_price");

				Product product = new Product(imagePath, productName, productPrice);
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return products;
	}

	public List<CustomerProfile> profileDet(CustomerLoginModel clm) {
		List<CustomerProfile> customers = new ArrayList<>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			DBConnection db = new DBConnection();
			con = db.getConnection();
			ps = con.prepareStatement("SELECT CID , Cname, cuserid, gmail, phoneno FROM skincare.customer WHERE CUserID = ?");
			ps.setString(1, clm.getUserId());
			rs = ps.executeQuery();

			while (rs.next()) {
				int cid = rs.getInt("CID");
				String customerId = rs.getString("cuserid");
				String name = rs.getString("Cname");
				String email = rs.getString("gmail");
				String phoneNumber = rs.getString("phoneno");

				CustomerProfile customer = new CustomerProfile(cid ,customerId, name, email, phoneNumber);
				customers.add(customer);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return customers;
	}

	@Override
	public String passwordChange(PasswordChangeRequest PCR) {
		try {
			DBConnection db = new DBConnection();
			Connection con = db.getConnection();
			PreparedStatement ps = con
					.prepareStatement("UPDATE customer SET pass = ? WHERE cuserid = ? AND pass = ?");
			ps.setString(1, PCR.getNewPassword());
			ps.setString(2, PCR.getCustomerId());
			ps.setString(3, PCR.getPreviousPassword());
			System.out.println("daodata"+ PCR.getCustomerId());

			int n = ps.executeUpdate(); 

			if (n > 0) {
				status = "Success";
			} else {
				status = "Failure";
			}

			// Close resources
			ps.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	@Override
	 public String adminProdAdd(ProductCollectionModel pcm) {
        try {
            DBConnection db = new DBConnection();
            Connection con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO product (product_name, product_price, product_image, is_active) VALUES (?, ?, ?, 'active')");
            ps.setString(1, pcm.getProductName());
            ps.setString(2, pcm.getProductPrice());
            ps.setString(3, pcm.getProductImage());
            
            int n = ps.executeUpdate();
            if (n > 0) {
                status = "Success";
            }

            ps.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }
	public List<ActiveProducts> getActiveProducts() {
	    List<ActiveProducts> products = new ArrayList<>();
	    try {
	        DBConnection db = new DBConnection();
	        Connection con = db.getConnection();
	        PreparedStatement ps = con.prepareStatement("SELECT product_id, product_name, product_price, product_image FROM product WHERE is_active = 'active'");
	        ResultSet rs = ps.executeQuery();
	        while (rs.next()) {
	            // Using an empty constructor and setting properties
	            ActiveProducts ap = new ActiveProducts();
	            ap.setProduct_id(rs.getInt("product_id"));
	            ap.setProductName(rs.getString("product_name"));
	            ap.setProductPrice(rs.getString("product_price"));
	            ap.setProductImage(rs.getString("product_image"));
	            products.add(ap);
	        }
	        rs.close();
	        ps.close();
	        con.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return products;
	}

}
