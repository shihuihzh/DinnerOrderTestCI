<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.ResultSet"%>
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>订单详情</title>
    <link rel="stylesheet" href="../css/style.css" type="text/css" media="screen" />
    <script charset="gbk" type="text/javascript" src="../js/script.js"></script>
  </head>
  
  <%
  	request.setCharacterEncoding("utf-8");
  	Map<String,ResultSet> resultMap = (Map<String,ResultSet>)session.getAttribute("resultMap");
	ResultSet dishes = resultMap.get("dishes");
  	int order_id = Integer.parseInt(request.getParameter("order_id"));
  	float order_sum_price = Float.parseFloat(request.getParameter("order_sum_price"));
  %>
  
  <body>
	<div class="art-layout-cell art-content">
	  	<div class="art-layout-cell art-content">
			<div class="art-post">
			    <div class="art-post-body">
			<div class="art-post-inner">
			       <h2 class="art-postheader">
			           <span class="art-postheader"><%=order_id %>号订单详情</span>
			       </h2>
			</div>
				</div>
			</div>
		</div>
		<!-- 头部 -->
		<div class="art-postmetadataheader">
	        <div class="art-metadata-icons">
	        	<img alt="标签" src="../images/posttagicon.png"/>&nbsp;&nbsp;&nbsp;
				 本订单总价为:  <%=order_sum_price %> 元
	        </div>
		</div>
		<!-- /头部 -->
		
		<div class="art-postcontent">
        <!-- 内容 -->
        <br/>
        <table border="1" style="border-color: gray" align="center">
        		<tr bgcolor="#D7D8C0"><th>订单项</th><th>菜名</th><th>单价</th><th>数量</th><th>小计</th></tr>
        
        <%
        	int i = 1;
        	while(dishes.next()){
        		if(dishes.getInt("order_id") == order_id){
        			float dish_price = dishes.getFloat("dish_price");
        			int dish_count = dishes.getInt("dish_count");
        %>
        
        		<tr align="center">
        			<td><%=i++ %></td>
        			<td><%=dishes.getString("dish_name") %></td>
        			<td><%=dish_price %>元</td>
        			<td><%=dish_count %>份</td>
        			<td><%=dish_price*dish_count %>元</td>
        		</tr>
        
        <%
        		}
        	}
        %>
        
        </table>
        <br/>
        <!-- /内容 -->
        </div>
        <div class="cleared"></div>
        
        <!-- 注脚 -->
        <div class="art-postmetadatafooter" align="center">
        	<a href="#" onclick="window.close();">关闭窗口</a>
        </div>
		<!-- /注脚 -->
		
	</div>

	<% dishes.beforeFirst();%>

  </body>
</html>
