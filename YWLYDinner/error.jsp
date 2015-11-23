<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<html>
  <head>
    
    
    <title>添加菜单失败</title>
    
	

  </head>
  
  <body>
   
   <center><font color="red" size="3">
   <%=session.getAttribute("MESSAGE") %>
   </font></center>
    
    <center><a href="./insertDish.jsp">返回</a></center>
  </body>
</html>
