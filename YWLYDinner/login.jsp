<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>用户登录页面</title>
  </head>
  
  <%
  	String info = (String)request.getAttribute("INFO");
  %>
  
  <body>
  	<form action="./loginCtrlLi" method="post">
	  <table bgcolor="#B1CCFE" title="用户登录框" width="283" height="188" style="height: 111px;">
	  	<tr align="center"><td colspan="3">用户登录</td></tr>
	  	<tr><td>用户名：</td><td colspan="2"><input type="text" name="userName"></td></tr>
	  	<tr><td>密&nbsp;&nbsp;码：</td><td colspan="2"><input type="password" name="userPassword"></td></tr>
	  	<tr><td>验证码：</td><td><input type="text" /></td>
	  	  <td>图片</td>
	  	</tr>
	  	<tr>
		  	<td><input type="submit" value="登录"></td>
		  	<td colspan="2" align="center"><input type="reset" value="重置"></td>
	  	</tr>
	  </table>
	</form>
	<h2><%=(info!=null)?info:"" %></h2>
  </body>
</html>
