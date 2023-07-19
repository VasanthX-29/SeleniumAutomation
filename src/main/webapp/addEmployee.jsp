<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="webselenium.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
</head>
<body>

<%

String name=request.getParameter("empname");
String email=request.getParameter("empemail");
String password=request.getParameter("emppwd");
String confirmpassword=request.getParameter("empcpwd");
User user=new User();

user.setName(name);
user.setEmail(email);
user.setPassword(password);
user.setComfirmpassword(confirmpassword);

UserDAO dao=new UserDAO();

int i=dao.insert(user);

if(i>0)
{
	response.sendRedirect("registrationsuccess.jsp");
}
else
{
	response.sendRedirect("registrationsuccess.jsp");
}

%>
</body>
</html>