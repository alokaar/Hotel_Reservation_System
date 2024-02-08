<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<jsp:include page="Header.jsp" />
<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
    <div class="login-container">
        <h1>Sign In</h1>
        <form action="login" method="post">
        <div>
        
            <label for="username">User Name:</label>
            <input type="text" id="username" name="username" required></div><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <a href="#">Forget the password?</a>
             <div class="remember-me">
                <input type="checkbox" id="remember-me" name="remember-me">
                <label for="remember-me">Remember me</label>
            </div>
            
           <div class="social-icons">
    	   <a href="https://www.gmail.com">
               <img src="images/gm.png" alt="Gmail">
           </a>
           <a href="https://www.facebook.com">
               <img src="images/fb.png" alt="Facebook">
           </a>
          
           </div>

            <button type="submit">Login</button>
        </form>
        <div class="login-options">
            <p>Don't have an account? <a href="registration.jsp">Sign up</a></p>
            <p><a href="#">Terms and Conditions</a></p>
        </div>
    </div>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
			var status = document.getElementById("status").value;
            if(status == "failed"){
			 swal("Sorry","Wrong username or password", "failed");
}
</script>
 <jsp:include page="Footer.jsp" />   
</body>
 
</html>
