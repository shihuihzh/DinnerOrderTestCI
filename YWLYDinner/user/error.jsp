<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
  <head>
    <title>error</title>
  </head>
  
  <body>
    <%
    	String message = (String)request.getAttribute("ErrorMessage");
    %>
    <h2>错误信息：</h2>
    <h3><%=message %></h3>
  </body>
</html>
