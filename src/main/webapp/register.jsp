<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body style="background-color:grey">
<h1><font style="color:black">REGISTRATION FORM</font></h1>
<form action="../customer/save" method="post">
<br>
<p>Name : <input type="text" name="name"></p>
<p>City : &nbsp &nbsp<input type="text" name="city" required></p>
<p>Mobile : <input type="number" name="mobile" required></p>
<p>Username : <input type="email" name="username" required></p>
<p>Password : <input type="password" name="pass" required></p>
<br><p style="text-indent: 8em;"><input type="submit" value="submit"></p>
</form>
</body>
</html>