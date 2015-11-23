<%@ page language="java" pageEncoding="gb2312"%>

<html>
  <head>
    <title>运营商管理模块</title>

<STYLE type=text/css> 
{
	FONT-SIZE: 12px
}
.gridView {
	BORDER-RIGHT: #bad6ec 1px; BORDER-TOP: #bad6ec 1px; BORDER-LEFT: #bad6ec 1px; COLOR: #566984; 
	BORDER-BOTTOM: #bad6ec 1px; FONT-FAMILY: Courier New
}
.gridViewHeader {
	BORDER-RIGHT: #bad6ec 1px solid; BORDER-TOP: #bad6ec 1px solid; BACKGROUND-IMAGE: 
	url(../images/bg_th.gif); BORDER-LEFT: #bad6ec 1px solid; LINE-HEIGHT: 27px; 
	BORDER-BOTTOM: #bad6ec 1px solid
}
.gridViewItem {
	BORDER-RIGHT: #bad6ec 1px solid; BORDER-TOP: #bad6ec 1px solid; BORDER-LEFT: 
	#bad6ec 1px solid; LINE-HEIGHT: 32px; BORDER-BOTTOM: #bad6ec 1px solid; TEXT-ALIGN: center
}
.cmdField {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; BACKGROUND-IMAGE: url(../images/bg_rectbtn.png); 
	OVERFLOW: hidden; BORDER-LEFT: 0px; WIDTH: 67px; COLOR: #364c6d; LINE-HEIGHT: 27px; 
	BORDER-BOTTOM: 0px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 27px; BACKGROUND-COLOR: transparent; 
	TEXT-DECORATION: none
}
.buttonBlue {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; BACKGROUND-IMAGE: url(../images/bg_button_blue.gif); 
	BORDER-LEFT: 0px; WIDTH: 78px; COLOR: white; BORDER-BOTTOM: 0px; BACKGROUND-REPEAT: no-repeat; 
	HEIGHT: 21px
}
</STYLE>
  </head>
  
  <%
  	int resID = Integer.parseInt(request.getParameter("resID"));
  	String resLoginName = request.getParameter("resLoginName");
    String resPassword = request.getParameter("resPassword");
    String resName = request.getParameter("resName");
    String resAdd = request.getParameter("resAdd");
    String resPhone = request.getParameter("resPhone"); 
    String resCEOIDNum = request.getParameter("resCEOIDNum");
    String resCEOName = request.getParameter("resCEOName");
    String resPermitNum = request.getParameter("resPermitNum");
    String resCEOPhoneNum = request.getParameter("resCEOPhoneNum");
    String resCEOAdd = request.getParameter("resCEOAdd");
    int resState = Integer.parseInt(request.getParameter("resState"));
    String resIntroduce = request.getParameter("resIntroduce");
    String resPhotoName = request.getParameter("resPhotoName");
    String resDistrict = request.getParameter("resDistrict");
  %>
  
  <body style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(../images/bg.gif); 
	BACKGROUND-REPEAT: repeat-x">
	<DIV>
  <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR style="BACKGROUND-IMAGE: url(../images/bg_header.gif); BACKGROUND-REPEAT: repeat-x" height=47>
        <TD width=10><SPAN style="FLOAT: left; BACKGROUND-IMAGE: url(../images/main_hl.gif); 
        WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD><SPAN style="FLOAT: left; BACKGROUND-IMAGE: url(../images/main_hl2.gif); 
        WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN>
        <SPAN style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; 
        BACKGROUND-IMAGE: url(../images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; 
        PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">修改信息</SPAN>
        <SPAN style="FLOAT: left; BACKGROUND-IMAGE: url(../images/main_hr.gif); WIDTH: 60px; 
        BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(../images/main_rc.gif)" width=10></TD>
      </TR>
      <TR>
        <TD style="BACKGROUND-IMAGE: url(../images/main_ls.gif)">&nbsp;</TD>
        <TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; 
        COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white" vAlign=top align="center">
  	<form action="../update" name="form" method="post" enctype="multipart/form-data">
  	<input type="hidden" name="photoName" value=<%=resPhotoName %>>
  		<table class=gridView>
  			<tr><td colspan="2"><input type="hidden" name="resID" value="<%=resID %>"></td></tr>
  			<tr><td>登录用户名：</td><td><input type="text" name="resLoginName" value="<%=resLoginName %>" ></td>
  			<td>登录密码：</td><td><input type="text" name="resPassword" value="<%=resPassword %>" ></td></tr>
  			<tr><td>餐馆名：</td><td><input type="text" name="resName" value="<%=resName %>"></td>
  			<td>餐馆地址：</td><td><input type="text" name="resAdd" value="<%=resAdd %>" ></td></tr>
  			<tr><td>餐馆电话：</td><td><input type="text" name="resPhone" value="<%=resPhone %>" ></td>
  			<td>老板ID：</td><td><input type="text" name="resCEOIDNum" value="<%=resCEOIDNum %>" ></td></tr>
  			<tr><td>老板姓名：</td><td><input type="text" name="resCEOName" value="<%=resCEOName %>" ></td>
  			<td>营业执照：</td><td><input type="text" name="resPermitNum" value="<%=resPermitNum %>" ></td></tr>
  			<tr><td>老板Tel：</td><td><input type="text" name="resCEOPhoneNum" value="<%=resCEOPhoneNum %>" ></td>
  			<td>老板住址：</td><td><input type="text" name="resCEOAdd" value="<%=resCEOAdd %>" ></td></tr>
  			<tr><td>餐馆图片：</td><td><input type="file" name="pic"></td>  			
  			<td>餐馆状态：</td><td><select name="resState"><%if(resState==1){%><option value="1" selected="selected"><%}else{ %>
  			<option value="1"><%} %>正常</option><%if(resState==2){%><option value="2" selected="selected"><%}else{ %><option value="2"><%} %>欠费</option></select></td>
  			</tr>
  			<tr align="center"><td colspan="2"><font color="red" size="2">如果不上传，可以不选！</font></td>
  			<tr><td><select name="resDistrict">
  			<%if("天河区".equals(resDistrict)){%><option value="天河区" selected="selected"><%}else{ %><option value="天河区"><%} %>天河区</option>
  			<%if("海珠区".equals(resDistrict)){%><option value="海珠区" selected="selected"><%}else{ %><option value="海珠区"><%} %>海珠区</option>
  			<%if("越秀区".equals(resDistrict)){%><option value="越秀区" selected="selected"><%}else{ %><option value="越秀区"><%} %>越秀区</option>
  			<%if("白云区".equals(resDistrict)){%><option value="白云区" selected="selected"><%}else{ %><option value="白云区"><%} %>白云区</option>
  			<%if("黄埔区".equals(resDistrict)){%><option value="黄埔区" selected="selected"><%}else{ %><option value="黄埔区"><%} %>黄埔区</option>
  			<%if("荔湾区".equals(resDistrict)){%><option value="荔湾区" selected="selected"><%}else{ %><option value="荔湾区"><%} %>荔湾区</option>
  			<%if("番禺区".equals(resDistrict)){%><option value="番禺区" selected="selected"><%}else{ %><option value="番禺区"><%} %>番禺区</option>
  			<%if("南沙区".equals(resDistrict)){%><option value="南沙区" selected="selected"><%}else{ %><option value="南沙区"><%} %>南沙区</option>
  			<%if("萝岗区".equals(resDistrict)){%><option value="萝岗区" selected="selected"><%}else{ %><option value="萝岗区"><%} %>萝岗区</option>
  			<%if("增城区".equals(resDistrict)){%><option value="增城区" selected="selected"><%}else{ %><option value="增城区"><%} %>增城区</option>
  			</select></td></tr>
  			<tr><td>餐馆介绍：</td><td><textarea cols="20" rows="5" name="resIntroduce"><%=resIntroduce %></textarea></td></tr>
  		</table>
  		<input class=cmdField type="submit" value="修改">
  		<input class=cmdField type="reset" value="重置">
  		<p><center><a  class=cmdField href="../query">Back</a></center>
  	</form>
  	 </TD>
        <TD style="BACKGROUND-IMAGE: url(../images/main_rs.gif)"></TD>
      </TR>
      <TR 
  style="BACKGROUND-IMAGE: url(../images/main_fs.gif); BACKGROUND-REPEAT: repeat-x" height=10>
        <TD style="BACKGROUND-IMAGE: url(../images/main_lf.gif)"></TD>
        <TD style="BACKGROUND-IMAGE: url(../images/main_fs.gif)"></TD>
        <TD style="BACKGROUND-IMAGE: url(../images/main_rf.gif)"></TD>
      </TR>
    </TBODY>
  </TABLE>
</DIV>  	
  </body>
</html>