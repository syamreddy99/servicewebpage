package com.Example.controllers;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import com.Example.dao.CustomerDao;
import com.Example.models.*;
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Login Servlet");
		String userId=request.getParameter("UserName");
		String passWord=request.getParameter("PassWord");
		//sending the above obtained data from frontend to customerloginmodel 
		//an object is created for customerloginmodel and the data is set and obtained from the customerloginmodel
		CustomerLoginModel clm = new CustomerLoginModel();
		//setting the values in the customerloginmodel
		clm.setUserId(userId);
	    clm.setPassWord(passWord);
	    //getting the values from the customerloginmodel
	    System.out.println(clm.getUserId());
	    System.out.println(clm.getPassWord());
	    //creating an object of CustomerDao and calling the check method
	    CustomerDao cd = new CustomerDao();
	    String status = cd.customerlogin(clm);
	    System.out.println(status);
	    if (status.equals("Success")) {
	    	HttpSession session = request.getSession();
       	 session.setAttribute("userId", userId);

	 		RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
	 				rd.include(request,response);
	 		}
	 	else {

	 	RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
	 	rd.include(request,response);
	}
	}
}
