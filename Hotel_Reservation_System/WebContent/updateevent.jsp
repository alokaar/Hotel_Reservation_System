<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<jsp:include page="Header.jsp" />
<body>
    <div class="container">
        <div class="row">
            <div class="col-12">
            
            	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String type= request.getParameter("type");
		String contactNumber = request.getParameter("contactNumber");
		String noofpeople = request.getParameter("noofpeople");
		String email = request.getParameter("email");


			
	%>
            
                <form action="update" method="post">
                    <h1 class="mt-5">Reservation Update</h1>

                    <div class="form-group">
                        <label for="cusid">ID</label>
                        <input type="text" class="form-control" id="cusid" name="cusid" value="<%= id %>" readonly>
                    </div>

                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" value="<%= name %>">
                    </div>

                    <div class="form-group">
                        <label for="type"> Location Type</label>
                        <input type="text" class="form-control"  value="<%= type %>" readonly>
                    </div>
                    
                    
                      <select name="type" id="type" class="form-control">
				   
				   <option selected="selected" selected disabled></option>
				      <option value="Poolarea">Pool Area</option>
				      <option value="Parthall">Party Hall</option>
				      <option value="Outdoor">Outdoor - garden</option>
				  </select>

                    <div class="form-group">
                        <label for="contactNumber">Contact Number</label>
                        <input type="text" class="form-control" id="contactNumber" name="contactNumber" value="<%= contactNumber %>">
                    </div>

                    <div class="form-group">
                        <label for="noofpeople">No of People</label>
                        <input type="text" class="form-control" id="noofpeople" name="noofpeople" value="<%= noofpeople %>">
                    </div>

                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" id="email" name="email" value="<%= email %>">
                    </div>

                    <button type="submit" class="btn btn-primary" name="submit">Update Event</button>
                </form>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
 <jsp:include page="Footer.jsp" />
</html>