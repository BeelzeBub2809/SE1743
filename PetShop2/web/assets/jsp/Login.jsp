<%-- 
    Document   : Login
    Created on : Jun 10, 2023, 4:30:17 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Slide Navbar</title>
        <link rel="stylesheet" type="text/css" href="../css/stylelogin.css">
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
       
        
    </head>
    <body>
        <div class="main">  	
            <input type="checkbox" id="chk" aria-hidden="true">
            <div class="signup">
                <form action="${pageContext.request.contextPath}/login" method="POST">
                    <label for="chk" aria-hidden="true">Login</label>
                    <p>${mess}</p>
                    <input type="text" name="username_in" placeholder="Username" required="">
                    <input type="password" name="pswd_in" placeholder="Password" required="">
                    <button type="submit">Login</button>
                </form>
            </div>

            <div class="login">
                <form action="signup" method="POST">
                    <label for="chk" aria-hidden="true">Sign up</label>
                    <input type="text" name="username" placeholder="User name" required="">
                    <input type="email" name="email" placeholder="Email" required="">
                    <input type="password" name="pswd" placeholder="Password" required="">
                    <input type="password" name="re-pswd" placeholder="Re-enter password" required="">
                    <button type="submit">Sign up</button>
                </form>
            </div>
        </div>
    </body>
</html>
