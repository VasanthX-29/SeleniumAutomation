<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="webselenium.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verify User/title>
</head>
<body>
  <%
  
  String email=request.getParameter("loginemail");
  String pwd=request.getParameter("loginpwd");
  
  UserDAO dao=new UserDAO();
  
  boolean result=dao.checkEmp(email, pwd);
  
  if(result)
  {
	  response.sendRedirect("dashboard.jsp");
  }
  else
  {
	  response.sendRedirect("loginfail.jsp");
  }
  
  %>
</body>
</html>