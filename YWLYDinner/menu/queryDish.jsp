<%@ page language="java" import="java.util.*,com.operator.manager.bean.*,java.sql.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>爱饭网——查看菜单</title>
<!-- 调用CSS，JS -->
<link href="../images/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
	background-color: #2286C2;
}
-->
#vertmenu {
font-family: Verdana, Arial, Helvetica, sans-serif;
font-size: 100%;
width: 160px;
padding: 0px;
margin: 0px;
}

#vertmenu h1 {
display: block; 
background-color:#9EC9EF;
font-size: 90%; 
padding: 3px 0 5px 15px;
border: 1px solid #000000;
color: #333333;
margin: 0px;
width:159px;
}

#vertmenu ul {
list-style: none;
margin: 0px;
padding: 0px;
border: none;
}
#vertmenu ul li {
margin: 0px;
padding: 0px;
}
#vertmenu ul li a {
font-size: 100%;
display: block;
border-bottom: 1px dashed #C39C4E;
padding: 5px 0px 2px 35px;
text-decoration: none;
color: #666666;
width:160px;
}

#vertmenu ul li a:hover, #vertmenu ul li a:focus {
color: #000000;
background-color: #eeeeee;
}

.style1 {color: #000000}
</style>

<script type="text/javascript">
    	function deleteDish(dishId) {
		document.deleteForm.deleteID.value = dishId;
		if (window.confirm("确定要删除此菜单")) {
			document.deleteForm.submit();
		}
	}
	function updateDish(dishID,resID,dishName,dishPrice,dishHot,dishStyle,
			dishIntroduce,dishSeries,dishPhotoName) {
		document.updateForm.dishID.value=dishID;
		document.updateForm.resID.value=resID;
		document.updateForm.dishName.value =dishName;
		document.updateForm.dishPrice.value=dishPrice;
		document.updateForm.dishHot.value=dishHot;
		document.updateForm.dishStyle.value=dishStyle;
		document.updateForm.dishIntroduce.value=dishIntroduce;
		document.updateForm.dishSeries.value=dishSeries;
		document.updateForm.dishPhotoName.value=dishPhotoName;
		document.updateForm.submit();
	}
    </script>
</head>
<body>
 <form action="../deleteDish" method="post" name="deleteForm">
			<input type="hidden" name="deleteID"></input>
		</form>
	
		<form action="./updateDish.jsp" method="post" name="updateForm">
		    <input type="hidden" name="dishID"></input>
			<input type="hidden" name="resID"></input>
			<input type="hidden" name="dishName"></input>
			<input type="hidden" name="dishPrice"></input>
			<input type="hidden" name="dishHot"></input>
			<input type="hidden" name="dishStyle"></input>
			<input type="hidden" name="dishIntroduce"></input>
			<input type="hidden" name="dishSeries"></input>
			<input type="hidden" name="dishPhotoName"></input>
		</form>
		<%
			ResultSet rs = (ResultSet) request.getSession().getAttribute("RESULTLIST");
		%>
		<%
			rs.last();
			int rowCount = rs.getRow(); 
			String pageIndex = request.getParameter("pageIndex"); 
			int curPage; 

			if (pageIndex == null || pageIndex.length() == 0) {
				curPage = 1;
			} else {
				curPage = Integer.parseInt(pageIndex);
			}

			Integer countPerPage = (Integer) request.getAttribute("pageSize");
			if (countPerPage == null) {
				countPerPage = 8;
			}

			int pageCount = (rowCount + countPerPage - 1) / countPerPage; 
			if (pageCount == 0) {
				pageCount = 1;
			}

			rs.absolute((curPage - 1) * countPerPage + 1);
		%>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="74" colspan="2" background="../images/index1_03.gif">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="33%" rowspan="2"><img src="../images/index1_01.gif" width="253" height="74" /></td>
          <td width="6%" rowspan="2">&nbsp;</td>
          <td width="61%" height="38" align="right">
            <table width="120" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center"><img src="../images/index1_06.gif" width="16" height="16" /></td>
                <td align="center" class="font2"><a href="#" class="font2"><strong>退出</strong></a></td>
                <td align="center"><img src="../images/index1_08.gif" width="16" height="16" /></td>
                <td align="center" class="font2"><a href="#" class="font2"><strong>帮助</strong></a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td align="right">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center" class="font2"><div id="webjx"></div>
	   		<script>
  			 setInterval("webjx.innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
  			 </script>&nbsp; 
			    </td>
				
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td colspan="2">
      <table width="100%" border="0" cellspacing="10" cellpadding="0">
        <tr>
          <td width="10%" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="8" height="8"><img src="../images/index1_23.gif" width="8" height="29" /></td>
                <td width="99%" background="../images/index1_24.gif">&nbsp;&nbsp;&nbsp;<span class="font2"><%=session.getAttribute("resLoginName") %>,<span class="style1">欢迎您登陆 </span></span></td>
                <td width="8" height="8"><img src="../images/index1_26.gif" width="8" height="29" /></td>
              </tr>
			  
              <tr>
                <td background="../images/index1_45.gif"></td>
                <td bgcolor="#FFFFFF" style="padding:0 2px 0 2px; vertical-align:top;height:500px;">
                  <table width="200" border="0" cellpadding="0" cellspacing="5">
                    <tr>
					<div id="vertmenu"> 
					<h1>个人信息管理</h1>
					<ul>
					<li><a href="../queryResInfo" tabindex="1">查看自己信息</a></li>
					<li><a href="../resinfo/updateResPass.jsp" tabindex="2">修改登录密码</a></li>
					</ul>
					</div>
                    </tr>
					 <tr>
					<div id="vertmenu"> 
					<h1>菜单管理</h1>
					<ul>
					<li><a href="./insertDish.jsp" tabindex="1">增加菜单</a></li>
					<li><a href="../queryDish" tabindex="2">查看菜单</a></li>
					</ul>
					</div>
                    </tr>
					 <tr>
					<div id="vertmenu"> 
					<h1>订单管理</h1>
					<ul>
					<li><a href="../queryorder" tabindex="1">查看订单</a></li>
					<li><a href="../querymanager" tabindex="2">订单结算</a></li>
					<li><a href="../total" tabindex="3">营业额查询</a></li>
					</ul>
					</div>
                    </tr>
					 <tr>
					<div id="vertmenu"> 
					<h1>留言管理</h1>
					<ul>
					<li><a href="#" tabindex="1">查看留言</a></li>
					<li><a href="#" tabindex="2">我要留言</a></li>
					</ul>
					</div>
                    </tr>
                  </table>
                </td>
                <td background="../images/index1_47.gif"></td>
              </tr>
              <tr>
                <td width="8" height="8"><img src="../images/index1_91.gif" width="8" height="8" /></td>
                <td background="../images/index1_92.gif"></td>
                <td width="8" height="8"><img src="../images/index1_93.gif" width="8" height="8" /></td>
              </tr>
            </table>
          </td>
          <td width="70%" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="8" height="8"><img src="../images/index1_28.gif" width="8" height="39" /></td>
                <td width="99%" background="../images/index1_40.gif">
                  <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td>
                        <table width="90" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5"><img src="../images/index1_35.gif" width="5" height="39" /></td>
                            <td align="center" background="../images/index1_36.gif"><a href="#" class="font3"><strong>菜单列表</strong></a></td>
                            <td width="5"><img src="../images/index1_38.gif" width="5" height="39" /></td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                </td>
                <td width="8" height="8"><img src="../images/index1_43.gif" width="8" height="39" /></td>
              </tr>
              <tr>
                <td background="../images/index1_45.gif"></td>
                <td bgcolor="#FFFFFF" style="height:490px; vertical-align:top;">
                  <table width="100%" border="0" cellspacing="10" cellpadding="0">
                    <tr>
                      <td>
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#C4E7FB">
                          <tr>
                            <td>
                              <table width="100%" border="0" cellpadding="0" cellspacing="5" bgcolor="#FFFFFF">
                                <tr>
                                  <td>&nbsp;<a href="#" class="font1">首页</a> &gt;&gt; <a href="#" class="font1"><strong>菜单列表</strong></a></td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
						<tr>
                       		<td height="5" colspan="10" align="center" bgcolor="#FFFFFF">
								
							</td>
                          </tr>
						  
						  
                          <tr>
                            <td width="2%" height="27" align="center" background="../images/index1_72.gif" bgcolor="#FFFFFF">&nbsp;</td>
                            <td width="3%" height="27" align="center" background="../images/index1_72.gif" bgcolor="#FFFFFF">序号</td>
                            <td width="12%" height="27" align="center" background="../images/index1_72.gif" bgcolor="#FFFFFF">菜名</td>
                            <td width="6%" height="27" align="center" background="../images/index1_72.gif" bgcolor="#FFFFFF">单价</td>
                            <td width="8%" height="27" align="center" background="../images/index1_72.gif" bgcolor="#FFFFFF">菜的种类</td>
							<td width="8%" height="27" align="center" background="../images/index1_72.gif" bgcolor="#FFFFFF">菜系</td>
							<td width="32%" height="27" align="center" background="../images/index1_72.gif" bgcolor="#FFFFFF">菜的简介</td>
							<td width="8%" height="27" align="center" background="../images/index1_72.gif" bgcolor="#FFFFFF">受欢迎度</td>
							<td width="8%" height="27" align="center" background="../images/index1_72.gif" bgcolor="#FFFFFF">菜的图片</td>
                            <td width="13%" height="27" align="center" background="../images/index1_72.gif" bgcolor="#FFFFFF">操作</td>
                          </tr>
						  <%
								if (rowCount == 0) {
							%>
							<tr>
								<td height="35" colspan="10" align="center" bgcolor="#FFFFFF">
									您还没有添加菜单，请添加。
								</td>
							</tr>
							<%
								} else {
									int i = 0;
									while (i < countPerPage && !rs.isAfterLast()) {
							%>
                          <tr>
                            <td height="26" align="center" bgcolor="#FFFFFF"><img src="../images/index1_75.gif" width="16" height="15" /></td>
                            <td height="26" align="center" bgcolor="#FFFFFF"><%=1+i%></td>
                            <td height="26" align="center" bgcolor="#FFFFFF"><%=rs.getString("dish_name") %></td>
                            <td height="26" align="center" bgcolor="#FFFFFF"><%=rs.getFloat("dish_price") %>元/份</td>
                            <td height="26" align="center" bgcolor="#FFFFFF"><%=rs.getString("dish_style") %></td>
							<td height="26" align="center" bgcolor="#FFFFFF"><%=rs.getString("dish_series") %></td>
							<td height="26" align="center" bgcolor="#FFFFFF"><%=rs.getString("dish_introduce") %></td>
							<td height="26" align="center" bgcolor="#FFFFFF"><%=rs.getInt("dish_hot") %></td>
							<td align="center"  bgcolor="#FFFFFF"><img src="../upload/<%=rs.getString("dish_photo")%>" width="40" height="35"></td>
                            <td height="26" align="center" bgcolor="#FFFFFF">
							<a href="#" onclick="deleteDish('<%=rs.getInt("dish_id")%>');">删除</a>&nbsp;
			           		 <a href="#" onclick="updateDish('<%=rs.getInt("dish_id")%>','<%=rs.getInt("res_id")%>','<%=rs.getString("dish_name")%>',
							'<%=rs.getFloat("dish_price")%>','<%=rs.getInt("dish_hot") %>','<%=rs.getString("dish_style") %>','<%=rs.getString("dish_introduce") %>',
							'<%=rs.getString("dish_series")%>','<%=rs.getString("dish_photo")%>');">修改/查看</a>
							</td>
                          </tr>
                           <%
								i++;
										rs.next();
									}
								}
							%>                         
                        </table>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#E1E5E8">
                          <tr>
                            <td>
                              <table width="100%" border="0" cellpadding="0" cellspacing="5" bgcolor="#FDFDFF">
                                <tr>
                                  <td><%
									if (curPage == 1) {
								%>
								<center>
									第一页&nbsp;&nbsp;上一页&nbsp;&nbsp;
									<%
										} else {
									%>
									<center>
										<a href="querydish.jsp?pageIndex=<%=1%>">第一页</a>&nbsp;&nbsp;
										<a href="querydish.jsp?pageIndex=<%=curPage - 1%>">上一页</a>&nbsp;&nbsp;
										<%
											}
											if (curPage == pageCount) {
										%>
										下一页&nbsp;&nbsp;最后一页&nbsp;&nbsp;
									</center>
						
									<%
										} else {
									%>
									<a href="queryorder.jsp?pageIndex=<%=curPage + 1%>">下一页</a>&nbsp;&nbsp;
									<a href="queryorder.jsp?pageIndex=<%=pageCount%>">最后一页</a>&nbsp;&nbsp;
								</center>
						
								<%
									}
								%>
								</td>
                                </tr>
								<tr>
								<td height="35" colspan="9" align="center" bgcolor="#FFFFFF">
								<strong>当前为地<%=curPage%>页,共有<%=pageCount%>页</strong>
								</td>
								</tr>
							 </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr>
                      <td align="center"><a href="../queryDish"><img src="../images/index1_861.gif" width="74" height="31" border="0" /></a>&nbsp;</td>
                    </tr>
                  </table>
				  
			    </td>
                <td background="../images/index1_47.gif"></td>
              </tr>
              <tr>
                <td width="8" height="8"><img src="../images/index1_91.gif" width="8" height="8" /></td>
                <td background="../images/index1_92.gif"></td>
                <td width="8" height="8"><img src="../images/index1_93.gif" width="8" height="8" /></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
   <tr>
  					<td align="center">
  						
  						 ICP证书：粤B2-20100511  CopyRight (c) 爱饭网 2010 All Rights Reserved
  						 
  					</td>
  				</tr>
  				<tr>
  					<td align="center">
  						<font color="red">爱饭 </font><a href="#">www.aifan.com</a>
  					</td>
  				</tr>
</table>
</body>
</html>
