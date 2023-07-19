<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<style>
  body
  {
    margin:0px;
    padding:0px;
  }
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
<body>
 <div id="navbar">
 
   <div id="title" >Employee Portal</div>
  
 </div>
     <div align="center">
          <h2>Employee Registration Page</h2>
          <form action="addEmployee.jsp">
          
             <table>
             
             <tr> <td>ENTER NAME: </td> <td><input type="text" name="empname"></td> </tr>
             
             <tr> <td>ENTER EMAIL </td> <td><input type="email" name="empemail"></td> </tr>
             
             <tr> <td>ENTER PASSWORD </td> <td><input type="password" name="emppwd"></td> </tr>
             
             <tr> <td>ENTER CONFIRM PASSWORD </td> <td><input type="password" name="empcpwd"></td> </tr>
             
             <tr> <td></td> <td><input type="submit" name="submit" value="Submit"></td> </tr>
             
             </table>
          
          </form></br></br>
          
        
          
          
          </div>
</body>
</html>