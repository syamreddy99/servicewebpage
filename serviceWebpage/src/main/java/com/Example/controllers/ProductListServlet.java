package com.Example.controllers;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.Example.models.*;

@WebServlet("/product-list")
public class ProductListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = new ArrayList<>();
        String jdbcURL = "jdbc:mysql://localhost:3306/yourdatabase";
        String dbUser = "yourusername";
        String dbPassword = "yourpassword";
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
            String sql = "SELECT image_path, product_name, product_price FROM products";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            
            while (resultSet.next()) {
                String imagePath = resultSet.getString("image_path");
                String productName = resultSet.getString("product_name");
                double productPrice = resultSet.getDouble("product_price");
                
                Product product = new Product(imagePath, productName, productPrice);
                products.add(product);
            }
            
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        request.setAttribute("products", products);
        request.getRequestDispatcher("/product-list.jsp").forward(request, response);
    }
}
