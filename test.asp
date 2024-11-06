<%@ Language="VBScript" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <h2>Login</h2>
    <form method="post" action="login.asp">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <input type="submit" value="Login">
    </form>

    <%
    ' Process login if form is submitted
    If Request.ServerVariables("REQUEST_METHOD") = "POST" Then
        Dim username, password
        username = Request.Form("username")
        password = Request.Form("password")

        
        If username = "admin" And password = "password123" Then
            Response.Write("<h3>Login Successful!</h3>")
            <!-- ' Here, you would typically set a session variable and redirect the user -->
            <!-- ' Session("user") = username -->
            <!-- ' Response.Redirect("welcome.asp") -->
        Else
            Response.Write("<h3>Invalid username or password</h3>")
        End If
    End If
    %>


    

</body>
</html>
