<%@ page language="java" import="java.util.*,com.operator.manager.bean.*,java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>爱饭网——营业额查询</title>
<!-- 调用CSS，JS -->
<link href="./images/style.css" rel="stylesheet" type="text/css" />
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
		function validate(){
			var newDate = document.dateForm.newDate.value;	
			var newDate2 = document.dateForm.newDate2.value;
			//以下能够判断开始日期是否为空、开始结束日期是否同为空以及结束日期是否大于开始日期
			if(newDate!=null&&newDate2!=null){
				var begin=new Array();
			    var end=new Array();
			    begin=newDate.split("-");
			    end=newDate2.split("-");
			    var beginnum=begin[0]+begin[1]+begin[2];
			    var endnum=end[0]+end[1]+end[2];
			    if(endnum <= beginnum){
			       alert("对不起，结束日期必须大于开始日期");
			       return false;
			    }
			    return true;			    
			}
		}
	</script>
	<script type="text/javascript" src="js/calender.js"></script>

</head>
<body>
		<%
			Object total = request.getAttribute("TOTALPRICE");
		%>
		
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="74" colspan="2" background="./images/index1_03.gif">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="33%" rowspan="2"><img src="./images/index1_01.gif" width="253" height="74" /></td>
          <td width="6%" rowspan="2">&nbsp;</td>
          <td width="61%" height="38" align="right">
            <table width="120" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center"><img src="./images/index1_06.gif" width="16" height="16" /></td>
                <td align="center" class="font2"><a href="#" class="font2"><strong>帮助</strong></a></td>
                <td align="center"><img src="./images/index1_08.gif" width="16" height="16" /></td>
                <td align="center" class="font2"><a href="./logout.jsp" class="font2"><strong>退出</strong></a></td>
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
                <td width="8" height="8"><img src="./images/index1_23.gif" width="8" height="29" /></td>
                <td width="99%" background="./images/index1_24.gif">&nbsp;&nbsp;&nbsp;<span class="font2"><%=session.getAttribute("resLoginName") %>,<span class="style1">欢迎您登陆 </span></span></td>
                <td width="8" height="8"><img src="./images/index1_26.gif" width="8" height="29" /></td>
              </tr>
			  
              <tr>
                <td background="./images/index1_45.gif"></td>
                <td bgcolor="#FFFFFF" style="padding:0 2px 0 2px; vertical-align:top;height:500px;">
                  <table width="200" border="0" cellpadding="0" cellspacing="5">
                    <tr>
					<div id="vertmenu"> 
					<h1>个人信息管理</h1>
					<ul>
					<li><a href="./queryResInfo" tabindex="1">查看自己信息</a></li>
					<li><a href="./resinfo/updateResPass.jsp" tabindex="2">修改登录密码</a></li>
					</ul>
					</div>
                    </tr>
					 <tr>
					<div id="vertmenu"> 
					<h1>菜单管理</h1>
					<ul>
					<li><a href="./menu/insertDish.jsp" tabindex="1">增加菜单</a></li>
					<li><a href="./queryDish" tabindex="2">查看菜单</a></li>
					</ul>
					</div>
                    </tr>
					 <tr>
					<div id="vertmenu"> 
					<h1>订单管理</h1>
					<ul>
					<li><a href="./queryorder" tabindex="1">查看订单</a></li>
					<li><a href="./querymanager" tabindex="2">订单结算</a></li>
					<li><a href="#" tabindex="3">营业额查询</a></li>
					</ul>
					</div>
                    </tr>
					 <tr>
					<div id="vertmenu"> 
					<h1>留言管理</h1>
					<ul>
					<li><a href="./queryMessage" tabindex="1">查看留言</a></li>
					<li><a href="./resmessage/insertMessage.jsp" tabindex="2">我要留言</a></li>
					</ul>
					</div>
                    </tr>
                  </table>
                </td>
                <td background="./images/index1_47.gif"></td>
              </tr>
              <tr>
                <td width="8" height="8"><img src="./images/index1_91.gif" width="8" height="8" /></td>
                <td background="./images/index1_92.gif"></td>
                <td width="8" height="8"><img src="./images/index1_93.gif" width="8" height="8" /></td>
              </tr>
            </table>
          </td>
          <td width="70%" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="8" height="8"><img src="./images/index1_28.gif" width="8" height="39" /></td>
                <td width="99%" background="./images/index1_40.gif">
                  <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td>
                        <table width="90" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5"><img src="./images/index1_35.gif" width="5" height="39" /></td>
                            <td align="center" background="./images/index1_36.gif"><a href="#" class="font3"><strong>营业额查询</strong></a></td>
                            <td width="5"><img src="./images/index1_38.gif" width="5" height="39" /></td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                </td>
                <td width="8" height="8"><img src="./images/index1_43.gif" width="8" height="39" /></td>
              </tr>
              <tr>
                <td background="./images/index1_45.gif"></td>
                <td bgcolor="#FFFFFF" style="height:490px; vertical-align:top;">
                  <table width="100%" border="0" cellspacing="10" cellpadding="0">
                    <tr>
                      <td>
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#C4E7FB">
                          <tr>
                            <td>
                              <table width="100%" border="0" cellpadding="0" cellspacing="5" bgcolor="#FFFFFF">
                                <tr>
                                  <td>&nbsp;<a href="#" class="font1">首页</a> &gt;&gt; <a href="#" class="font1"><strong>营业额查询</strong></a></td>
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
                       		<td height="30" colspan="2" align="center" background="./images/index1_72.gif" bgcolor="#FFFFFF"><h4>餐馆营业额统计</h4></td>
                          </tr>
						  <tr>
                       		<td height="35" colspan="2" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;餐馆的总营业额为：&nbsp;￥<strong><%=total.toString()%></strong> </td>
                          </tr>
						  
                          <tr>
                            <td height="27" colspan="2" align="center" background="./images/index1_72.gif" bgcolor="#FFFFFF"><h4>营业额查询</h4></td>
                          </tr>
						
                          <tr>
                            <td width="8%" height="26" align="center" bgcolor="#FFFFFF"><img src="./images/index1_75.gif" width="16" height="15" /></td>
                            <td height="26" align="left" bgcolor="#FFFFFF">&nbsp;说明：不选择结束日期则查询所选开始日期当天的营业额</td>
                          </tr>
						</table>
                      </td>
                    </tr>
                    <tr>
                      <td>
					  <form action="./totalquery" method="post" name="dateForm">
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#E1E5E8">
                          <tr>
						  <td height="26" align="center" bgcolor="#FFFFFF">
                           请选择开始日期：<input type="text" name="newDate" size=8 readonly="readonly" onclick="fPopCalendar(this, this)";>	
							请选择结束日期：<input type="text" name="newDate2" size=8 readonly="readonly" onclick="fPopCalendar(this, this)";>&nbsp;	
							  <input type="submit" value="查询" onclick=" return validate();">
                         </td>
						  </tr>
                        </table>
						</form>
                      </td>
                    </tr>
                   
                  </table>
				  
			    </td>
                <td background="./images/index1_47.gif"></td>
              </tr>
              <tr>
                <td width="8" height="8"><img src="./images/index1_91.gif" width="8" height="8" /></td>
                <td background="./images/index1_92.gif"></td>
                <td width="8" height="8"><img src="./images/index1_93.gif" width="8" height="8" /></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
