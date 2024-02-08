package com.station;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateEventServlet")
public class UpdatePartyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("cusid");
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String contactNumber=request.getParameter("contactNumber");
		String noofpeople=request.getParameter("noofpeople");
		String email=request.getParameter("email");


		
		boolean isTrue;
		
		isTrue = PartyDBUtil.updatestation(id,name,type,contactNumber,noofpeople,email);
		
		if(isTrue == true) {
			
			List<Party> cusDetails = PartyDBUtil.getEventDetailsall();
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {

			List<Party> cusDetails = PartyDBUtil.getEventDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

	
	
	
}
