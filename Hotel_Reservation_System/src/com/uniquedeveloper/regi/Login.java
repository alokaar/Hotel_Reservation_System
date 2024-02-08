package com.uniquedeveloper.regi;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uemail = request.getParameter("username");
		String upwd = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		if(uemail == null || uemail.equals(" ")){
		 request.setAttribute("status", "invalidEmail");
		 dispatcher = request.getRequestDispatcher("login.jsp");
		 dispatcher.forward(request, response);
		}
		 
		if(upwd == null || upwd.equals(" ")){
		 request.setAttribute("status", "invalidupwd");
		 dispatcher = request.getRequestDispatcher("login.jsp");
		 dispatcher.forward(request, response);
		}
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel?useSSL=false","root","Aloka@2002");
		    PreparedStatement pst = (PreparedStatement) con.prepareStatement("select * from customer where uemail = ? and upwd = ? ");
		    pst.setString(1, uemail);
		    pst.setString(2, upwd);
		
		    
		    ResultSet rs = pst.executeQuery();
		    if(rs.next()) {
		    	session.setAttribute("event", rs.getString("uname"));
		    	dispatcher = request.getRequestDispatcher("eventinsert.jsp");
		    }else {
		    	request.setAttribute("status", "failed");
		    	dispatcher = request.getRequestDispatcher("login.jsp");
		     }
		    dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
	}

	}
		}
