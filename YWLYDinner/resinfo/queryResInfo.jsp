<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>�����������鿴������Ϣ</title>
<!-- ����CSS��JS -->
<link href="images/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "����";
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
</head>
<%ResultSet resList=(ResultSet)request.getAttribute("RESLIST");
 
  %>
  
   
<body >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="74" colspan="2" background="images/index1_03.gif">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="33%" rowspan="2"><img src="images/index1_01.gif" width="253" height="74" /></td>
          <td width="6%" rowspan="2">&nbsp;</td>
          <td width="61%" height="38" align="right">
            <table width="120" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center"><img src="images/index1_06.gif" width="16" height="16" /></td>
                <td align="center" class="font2"><a href="#" class="font2"><strong>����</strong></a></td>
                <td align="center"><img src="images/index1_08.gif" width="16" height="16" /></td>
                <td align="center" class="font2"><a href="./logout.jsp" class="font2"><strong>�˳�</strong></a></td>
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
  			 setInterval("webjx.innerHTML=new Date().toLocaleString()+' ����'+'��һ����������'.charAt(new Date().getDay());",1000);
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
                <td width="8" height="8"><img src="images/index1_23.gif" width="8" height="29" /></td>
                <td width="99%" background="images/index1_24.gif">&nbsp;&nbsp;&nbsp;<span class="font1"><%=session.getAttribute("resLoginName") %>,<span class="style1">��ӭ����½ </span></span></td>
                <td width="8" height="8"><img src="images/index1_26.gif" width="8" height="29" /></td>
              </tr>
			  
              <tr>
                <td background="images/index1_45.gif"></td>
                <td bgcolor="#FFFFFF" style="padding:0 2px 0 2px; vertical-align:top;height:500px;">
                  <table width="200" border="0" cellpadding="0" cellspacing="5">
                    <tr>
					<div id="vertmenu"> 
					<h1>������Ϣ����</h1>
					<ul>
					<li><a href="./queryResInfo" tabindex="1">�鿴�Լ���Ϣ</a></li>
					<li><a href="./resinfo/updateResPass.jsp" tabindex="2">�޸ĵ�¼����</a></li>
					</ul>
					</div>
                    </tr>
					 <tr>
					<div id="vertmenu"> 
					<h1>�˵�����</h1>
					<ul>
					<li><a href="./menu/insertDish.jsp" tabindex="1">���Ӳ˵�</a></li>
					<li><a href="./queryDish" tabindex="2">�鿴�˵�</a></li>
					</ul>
					</div>
                    </tr>
					 <tr>
					<div id="vertmenu"> 
					<h1>��������</h1>
					<ul>
					<li><a href="./queryorder" tabindex="1">�鿴����</a></li>
					<li><a href="./querymanager" tabindex="2">��������</a></li>
					<li><a href="./total" tabindex="3">Ӫҵ���ѯ</a></li>
					</ul>
					</div>
                    </tr>
					 <tr>
					<div id="vertmenu"> 
					<h1>���Թ���</h1>
					<ul>
					<li><a href="./queryMessage" tabindex="1">�鿴����</a></li>
					<li><a href="./resmessage/insertMessage.jsp" tabindex="2">��Ҫ����</a></li>
					</ul>
					</div>
                    </tr>
                  </table>
                </td>
                <td background="images/index1_47.gif"></td>
              </tr>
              <tr>
                <td width="8" height="8"><img src="images/index1_91.gif" width="8" height="8" /></td>
                <td background="images/index1_92.gif"></td>
                <td width="8" height="8"><img src="images/index1_93.gif" width="8" height="8" /></td>
              </tr>
            </table>
          </td>
          <td width="70%" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="8" height="8"><img src="images/index1_28.gif" width="8" height="39" /></td>
                <td width="99%" background="images/index1_40.gif">
                  <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td>
                        <table width="90" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5"><img src="images/index1_35.gif" width="5" height="39" /></td>
                            <td align="center" background="images/index1_36.gif"><strong class="font3">������Ϣ��</strong></td>
                            <td width="5"><img src="images/index1_38.gif" width="5" height="39" /></td>
                          </tr>
                        </table>
                      </td>
                     
                    </tr>
                  </table>
                </td>
                <td width="8" height="8"><img src="images/index1_43.gif" width="8" height="39" /></td>
              </tr>
              <tr>
                <td background="images/index1_45.gif"></td>
                <td bgcolor="#FFFFFF" style="height:490px; vertical-align:top;">
                  <table width="100%" border="0" cellspacing="10" cellpadding="0">
                    <tr>
                      <td>
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#C4E7FB">
                          <tr>
                            <td>
                              <table width="100%" border="0" cellpadding="0" cellspacing="5" bgcolor="#FFFFFF">
                                <tr>
                                  <td>&nbsp;<a href="./loginsuccess.jsp" class="font1">��ҳ</a> &gt;&gt; <strong>������Ϣ</td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr>
                      <td>
					 
				   
				    <%if(resList.next()){ %>
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
                          <tr>
                            <td width="5%" height="27" align="center" bgcolor="#FFFFFF"><img src="images/index1_75.gif" width="16" height="15" /></td>
                            <td width="15%" height="27" align="center" background="images/index1_72.gif" bgcolor="#FFFFFF">�͹�ID�� </td>
                            <td width="65%" height="27" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<%=resList.getInt("res_id") %></td>
                            <td width="15%" height="27" align="center" bgcolor="#FFFFFF">�͹���Ƭ</td>
                          </tr>
                          <tr>
                            <td width="5%" height="27" align="center"  bgcolor="#FFFFFF"><img src="images/index1_75.gif" width="16" height="15" /></td>
                            <td width="15%" height="27" align="center" background="images/index1_72.gif" bgcolor="#FFFFFF">�͹��û���</td>
                            <td width="65%" height="27" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<%=resList.getString("res_login_name")%></td>
                            <td width="15%" rowspan="4" align="center" bgcolor="#FFFFFF"><img src="./upload/<%=resList.getString("res_photo")%>" width="110" height="100"></td>
                          </tr>
                          <tr>
                            <td width="5%" height="27" align="center"  bgcolor="#FFFFFF"><img src="images/index1_75.gif" width="16" height="15" /></td>
                            <td width="15%" height="27" align="center" background="images/index1_72.gif" bgcolor="#FFFFFF">�͹��� </td>
                            <td width="65%" height="27" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<%=resList.getString("res_name") %></td>
                            <td width="15%" height="27"></td>
                          </tr>
                          <tr>
                            <td width="5%" height="27" align="center"  bgcolor="#FFFFFF"><img src="images/index1_75.gif" width="16" height="15" /></td>
                            <td width="15%" height="27" align="center" background="images/index1_72.gif" bgcolor="#FFFFFF">�͹���ϸ��ַ </td>
                            <td width="65%" height="27" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<%=resList.getString("res_address") %></td>
                            <td width="15%" height="27"></td>
                          </tr>
                          <tr>
                            <td width="5%" height="27" align="center"  bgcolor="#FFFFFF"><img src="images/index1_75.gif" width="16" height="15" /></td>
                            <td width="15%" height="27" align="center" background="images/index1_72.gif" bgcolor="#FFFFFF">�͹ݵ绰 </td>
                            <td width="65%" height="27" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<%=resList.getString("res_phone") %></td>
                            
                          </tr>
                          <tr>
                            <td width="5%" height="27" align="center"  bgcolor="#FFFFFF"><img src="images/index1_75.gif" width="16" height="15" /></td>
                            <td width="15%" height="27" align="center" background="images/index1_72.gif" bgcolor="#FFFFFF">�͹ݸ����� </td>
                            <td height="27" colspan="2" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<%=resList.getString("res_ceo_name") %></td>
                          </tr>
                          <tr>
                            <td width="5%" height="27" align="center"  bgcolor="#FFFFFF"><img src="images/index1_75.gif" width="16" height="15" /></td>
                            <td width="15%" height="27" align="center" background="images/index1_72.gif" bgcolor="#FFFFFF">��������ϵ��ʽ</td>
                            <td height="27" colspan="2" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<%=resList.getString("res_ceo_phone") %></td>
                          </tr>
                          <tr>
                            <td width="5%" height="27" align="center"  bgcolor="#FFFFFF"><img src="images/index1_75.gif" width="16" height="15" /></td>
                            <td width="15%" height="27" align="center" background="images/index1_72.gif" bgcolor="#FFFFFF">��������ϸ��ַ </td>
                            <td height="27" colspan="2" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<%=resList.getString("res_ceo_address") %></td>
                          </tr>
                          <tr>
                            <td width="5%" height="27" align="center"  bgcolor="#FFFFFF"><img src="images/index1_75.gif" width="16" height="15" /></td>
                            <td width="15%" height="27" align="center" background="images/index1_72.gif" bgcolor="#FFFFFF">���������֤�� </td>
                            <td height="27" colspan="2" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<%=resList.getString("res_ceo_id") %></td>
                          </tr>
                          <tr>
                            <td width="5%" height="27" align="center"  bgcolor="#FFFFFF"><img src="images/index1_75.gif" width="16" height="15" /></td>
                            <td width="15%" height="27" align="center" background="images/index1_72.gif" bgcolor="#FFFFFF">�͹�״̬ </td>
                            <td height="27" colspan="2" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;
                              <%String state = resList.getString("res_state");
                            	if(state.equals("1")){
                            	%>
                              ����
                              <%}else{ %>
									      Ƿ��
									      <%} %>
                            </td>
                          </tr>
                          <tr>
                            <td width="5%" height="27" align="center"  bgcolor="#FFFFFF"><img src="images/index1_75.gif" width="16" height="15" /></td>
                            <td width="15%" height="27" align="center" background="images/index1_72.gif" bgcolor="#FFFFFF">Ӫҵִ�ձ�� </td>
                            <td height="27" colspan="2" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<%=resList.getString("res_permit_num") %></td>
                          </tr>
                          <tr>
                            <td width="5%" height="27" align="center"  bgcolor="#FFFFFF"><img src="images/index1_75.gif" width="16" height="15" /></td>
                            <td width="15%" height="27" align="center" background="images/index1_72.gif" bgcolor="#FFFFFF">�͹ݼ�� </td>
                            <td height="27" colspan="2" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<%=resList.getString("res_introduce") %></td>
                          </tr>
                        </table>
                        <%
							    }else{
							     %>
							                         û�н��!
							      <%
							    }
							      %>
                      </td>
                    </tr>
                    <tr>
                      <td>
                      <form action="./resinfo/updateResInfo.jsp" method="post" name="updateForm">
							<input type="hidden" name="resLoginName" value="<%=resList.getString("res_login_name")%>"></input>
							<input type="hidden" name="resName" value="<%=resList.getString("res_name")%>"></input>
							<input type="hidden" name="resAdd" value="<%=resList.getString("res_address")%>"></input>
							<input type="hidden" name="resPhone" value="<%=resList.getString("res_phone")%>"></input>
							<input type="hidden" name="resCeoIdNum" value="<%=resList.getString("res_ceo_id")%>"></input>
							<input type="hidden" name="resCeoName" value="<%=resList.getString("res_ceo_name")%>"></input>
							<input type="hidden" name="resPermitNum" value="<%=resList.getString("res_permit_num")%>"></input>
							<input type="hidden" name="resCeoPhoneNum" value="<%=resList.getString("res_ceo_phone")%>"></input>
							<input type="hidden" name="resCeoAdd" value="<%=resList.getString("res_ceo_address")%>"></input>
							<input type="hidden" name="resIntroduce" value="<%=resList.getString("res_introduce")%>"></input>
							<input type="hidden" name="resPhoto" value="<%=resList.getString("res_photo")%>"></input>
							
					</form>
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#E1E5E8">
                          <tr>
                            <td>&nbsp;</td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr>
                      <td align="center">&nbsp; <a href="#" onclick="javaScript:updateForm.submit();"><img src="images/index1_821.gif" width="74" height="31" border="0" /></a></td>
                    </tr>
                  </table>
				  
			    </td>
                <td background="images/index1_47.gif"></td>
              </tr>
              <tr>
                <td width="8" height="8"><img src="images/index1_91.gif" width="8" height="8" /></td>
                <td background="images/index1_92.gif"></td>
                <td width="8" height="8"><img src="images/index1_93.gif" width="8" height="8" /></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
  					<td align="center">
  						
  						 ICP֤�飺��B2-20100511  CopyRight (c) ������ 2010 All Rights Reserved
  						 
  					</td>
  				</tr>
  				<tr>
  					<td align="center">
  						<font color="red">���� </font><a href="#">www.aifan.com</a>
  					</td>
  				</tr>
</table>
</body>
</html>
