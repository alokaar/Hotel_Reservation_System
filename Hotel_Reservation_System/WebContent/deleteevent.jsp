<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="ISO-8859-1">
    <!-- Add Bootstrap CSS from a CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="Header.jsp" />
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
            
            <%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String type = request.getParameter("type");
		String contactNumber = request.getParameter("contactNumber");
		String noofpeople = request.getParameter("noofpeople");
		String email = request.getParameter("email");


	%>
            
                <form action="delete" method="post">
                    <h1 class="text-center">Delete Your Reservation</h1>
                    <div class="form-group">
                        <label for="cusid">ID</label>
                        <input type="text" class="form-control" id="cusid" name="cusid" value="<%= id%>" readonly>
                    </div>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" value="<%= name%>">
                    </div>
            <!--       <div class="form-group">
                        <label for="type">Type</label>
                        <input type="text" class="form-control" id="type" name="type" value="<%= type%>">
                    </div>
                    -->   
                    <div class="form-group">
                        <label for="contactNumber">Contact Number</label>
                        <input type="text" class="form-control" id="contactNumber" name="contactNumber" value="<%= contactNumber%>">
                    </div>
                    <div class="form-group">
                        <label for="noofpeople">No of People</label>
                        <input type="text" class="form-control" id="noofpeople" name="noofpeople" value="<%= noofpeople%>">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" id="email" name="email" value="<%= email%>">
                    </div>
                    <button type="submit" class="btn btn-danger" name="submit">Delete Event</button>
                </form>
                <br>
                <br>
                <br>
            </div>
        </div>
    </div>

    <!-- Add Bootstrap JS from a CDN (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
 <jsp:include page="Footer.jsp" />
</html>
