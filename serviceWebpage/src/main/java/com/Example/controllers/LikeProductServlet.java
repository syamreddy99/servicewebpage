package com.Example.controllers;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LikeProductServlet")
public class LikeProductServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve product name from request parameter
        String productName = request.getParameter("productName");
        String productid = request.getParameter("productId");

        // Perform operations (e.g., save to database, update counts, etc.)
        // Simulated operation for demonstration
        String message = "Liked " + productName +""+ productid;
        System.out.println(message); // Log message to server console

        // Set response content type
        response.setContentType("text/plain");

        // Write response message
        response.getWriter().write(message);
    }
}
