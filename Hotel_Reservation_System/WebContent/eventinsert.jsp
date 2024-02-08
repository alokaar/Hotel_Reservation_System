<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   
<head>

    <meta charset="ISO-8859-1">
    <title>Insert title here</title>

   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/eventinsert.css?aaa=2">
    

</head>
<body>

 <jsp:include page="Header.jsp" />
  <br>
 <br>
 <br>

    <div class="container form-container">
        <h2>Make your Reservation</h2>
        <form action="insert" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            
       
            <!--  -->
				<label for="type">Location Type </label>
				  <select name="type" id="type" class="form-control" Required >
				   
				   <option selected="selected" selected disabled></option>
				      <option value="Poolarea">Pool Area</option>
				      <option value="Partyhall">Party Hall</option>
				      <option value="outdoor">Outdoor - garden</option>
				  </select>
            
            <!--  -->
            
            
            <div class="form-group">
                <label for="contactNumber">Contact Number</label>
                <input type="text" class="form-control" id="contactNumber" name="contactNumber" required>
            </div>
            <div class="form-group">
                <label for="noofpeople">No of People</label>
                <input type="text" class="form-control" id="noofpeople" name="noofpeople" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" id="email" name="email" required>
            </div>
           
            <button type="submit" class="btn btn-primary" name="submit">Confirm Reservation</button>
        </form>

    </div>
    
    <!-- Add Bootstrap JS from a CDN -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
            <br>
        <br>
        <br>
        <br>
    
</body>
 <jsp:include page="Footer.jsp" />
</html>