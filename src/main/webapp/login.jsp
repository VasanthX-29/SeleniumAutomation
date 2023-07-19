<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
    table {
        border-collapse: collapse;
        width: 100%;
        max-width: 500px;
        margin: 0 auto;
    }

    table td {
        padding: 8px;
        border: 1px solid #ddd;
    }

    table tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    table tr:nth-child(odd) {
        background-color: #f1f1f1;
    }
 #navbar
   {
     width:100%;
     background-color:black;
     height:80px;
     color:white;
     display:flex;
     justify-content:center;
     align-items:center;
     font-size:35px
     
   }
  
</style>
</head>
<body>
  <div id="navbar">
 
   <div id="title" >Employee Portal</div>
  
 </div>
 <div align="center">
          <h2>Employee Login Page</h2>
          <form action="verify.jsp">
          
             <table>
             
            
             
             <tr> <td>ENTER EMAIL </td> <td><input type="email" name="loginemail"></td> </tr>
             
             <tr> <td>ENTER PASSWORD </td> <td><input type="password" name="loginpwd"></td> </tr>
             
             
             
             <tr> <td></td> <td><input type="submit" name="login" value="Login"></td> </tr>
             
             </table>
          
          </form></br></br>
          
         
          
          
          </div>
</body>
</html>