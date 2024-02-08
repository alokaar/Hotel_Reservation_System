package com.uniquedeveloper.regi;

import java.io.IOException;


import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;


/**
 * Servlet implementation class Registration
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String uname = request.getParameter("fullname");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("password");
		String umobile=request.getParameter("phone");
		RequestDispatcher dispatcher=null;
		Connection con = null;
		
		
		if(uname == null || uname.equals(" ")){
			 request.setAttribute("status", "invalidName");
			 dispatcher = request.getRequestDispatcher("login.jsp");
			 dispatcher.forward(request, response);
			}
			 
			if(uemail == null || uemail.equals(" ")){
			 request.setAttribute("status", "invalidemail");
			 dispatcher = request.getRequestDispatcher("login.jsp");
			 dispatcher.forward(request, response);
			}
			if(upwd == null || upwd.equals(" ")){
				 request.setAttribute("status", "invalidupwd");
				 dispatcher = request.getRequestDispatcher("login.jsp");
				 dispatcher.forward(request, response);
				}
			if(umobile == null || umobile.equals(" ")){
				 request.setAttribute("status", "invalisnumber");
				 dispatcher = request.getRequestDispatcher("login.jsp");
				 dispatcher.forward(request, response);
				}
			else if(umobile.length() > 10 ){
				 request.setAttribute("status", "invalidmobilenumber");
				 dispatcher = request.getRequestDispatcher("login.jsp");
				 dispatcher.forward(request, response);
				}

		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel" + "?useSSL=false","root","Aloka@2002");
			java.sql.PreparedStatement pst = con.prepareStatement("insert into customer(uname,upwd,uemail,umobile) values(?,?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, upwd);
			pst.setString(3, uemail);
			pst.setString(4, umobile);
			
			

			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			
		    if (rowCount >0) {
		     request.setAttribute("status", "success");
			} else {
				request.setAttribute("statu", "failed");
				
			}
			dispatcher.forward(request, response);
		
			}	catch (Exception e) {
				e.printStackTrace();
		
			}finally {
				 try {
				        if (con != null) {
				            con.close();
				        
				        }
			}catch(SQLException e) {
				e.printStackTrace();
			}
			} 
	}

}
