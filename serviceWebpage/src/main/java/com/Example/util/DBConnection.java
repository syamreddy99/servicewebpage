package com.Example.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	Connection con ;
	

	public Connection getConnection(){
		
          try {
        	  Class.forName("com.mysql.cj.jdbc.Driver");
          

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skincare","root","root");
          }catch(Exception e) {
        	  System.out.println(e);
          }
          return con ;

		
	}

}
