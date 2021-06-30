package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
//@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		/*
		 * out.println("<!DOCTYPE html>"); out.println("<html>"); out.println("<head>");
		 * out.println("<title>Servlet Register</title>"); out.println("</head>");
		 * out.println("<body>");
		 */
		//getting the all incoming detail from the request
		String name = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		
		/*
		 * out.println(name); out.println(password); out.println(email);
		 */
		//creating connection
		try {
			Thread.sleep(3000);
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Youtube","root","root");
			String query="insert into user(name,password,email) values(?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, password);
			ps.setString(3, email);
			ps.executeUpdate();
			out.println("done");
		}catch (Exception e) {
			e.printStackTrace();
			out.println("error");
		}
		//query
		/*
		 * out.println("</body>"); out.println("</html>");
		 */
	}

}
