<%-- 
    Document   : Login
    Created on : May 29, 2023, 9:36:43 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Login" method="POST">
                <div>
                    <label for="user">UserName</label>
                    <input type="text" placeholder="UserName" name="user"><br>
                    <label for="pass">Password</label>
                    <input type="password" placeholder="Password" name="pass"><br>
                    <button type="submit"  value="LOGIN">Login</button>
                </div>
            </form>
    </body>
</html>
