<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" type="text/css" href="css/useraccount.css?aaa=1">
    
</head>
<body>
<jsp:include page="Header.jsp" />
<div class="container">
    <h1 class="cus">Party Booking Details</h1>

    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Location Type</th>
            <th>Contact Number</th>
            <th>No of People</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        </thead>
        <c:forEach var="cus" items="${cusDetails}">
            <tr>
                <td>${cus.id}</td>
                <td>${cus.name}</td>
                <td>${cus.type}</td>
                <td>${cus.contactNumber}</td>
                <td>${cus.noofpeople}</td>
                <td>${cus.email}</td>
                <td class="action-buttons">
                    <a href="updateevent.jsp?id=${cus.id}&name=${cus.name}&type=${cus.type}&contactNumber=${cus.contactNumber}&noofpeople=${cus.noofpeople}&email=${cus.email}" class="btn btn-info">Update</a>
                    <a href="deleteevent.jsp?id=${cus.id}&name=${cus.name}&type=${cus.type}&contactNumber=${cus.contactNumber}&noofpeople=${cus.noofpeople}&email=${cus.email}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<!-- Include Bootstrap JavaScript and jQuery (optional) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 <jsp:include page="Footer.jsp" />
</body>
<br>
<br>
<br>


</html>
