package com.station;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PartyInsert")
public class PartyInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String contactNumber=request.getParameter("contactNumber");
		String noofpeople=request.getParameter("noofpeople");
		String email=request.getParameter("email");


		
		boolean isTrue;
		
		isTrue = PartyDBUtil.insertstation(name,type,contactNumber,noofpeople,email);
		
		if(isTrue == true) {
			
			String Name = request.getParameter("name");
			
			
			isTrue = PartyDBUtil.validate(Name);
			
			if (isTrue == true) {
				List<Party> cusDetails = PartyDBUtil.getEvent(Name);
				request.setAttribute("cusDetails", cusDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
				dis.forward(request, response);
				
			} else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
			}
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
