<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
  <head>
  </head>
  
  <body>  
  	<%
  		session.invalidate();
  		response.sendRedirect("./resinfo/login.jsp");
  	%>
  </body>
</html>
