<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>

<html>
	<head>
		<title>main</title>
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

	<body style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(../images/bg.gif); 
	BACKGROUND-REPEAT: repeat-x">
	<script type="text/javascript">
		function changeColor(obj,color){
			obj.bgColor = color ;
		} 
	</script>
<SCRIPT src="../js/WebResource.axd" type=text/javascript></SCRIPT>
<SCRIPT src="../js/ScriptResource.axd" type=text/javascript></SCRIPT>
<SCRIPT src="../js/ScriptResource(1).axd" type=text/javascript></SCRIPT>
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
        PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">餐馆详情 </SPAN>
        <SPAN style="FLOAT: left; BACKGROUND-IMAGE: url(../images/main_hr.gif); WIDTH: 60px; 
        BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(../images/main_rc.gif)" width=10></TD>
      </TR>
      <TR>
        <TD style="BACKGROUND-IMAGE: url(../images/main_ls.gif)">&nbsp;</TD>
        <TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; 
        COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white" vAlign=top align="center">
          <DIV>
          
		<%
			ResultSet rs = (ResultSet) request.getSession().getAttribute("RESULTSET");
          	rs.first();
		%>
		
            <TABLE class=gridView id=ctl00_ContentPlaceHolder2_GridView1 
      style="WIDTH: 100%; BORDER-COLLAPSE: collapse" cellSpacing=0 rules=all 
      border=1>
              <TBODY>
                <TR>
                  <TH class=gridViewHeader scope=col>用户名</TH>
                  <TH class=gridViewHeader scope=col>密码</TH>
                  <TH class=gridViewHeader scope=col>餐馆名</TH>
                  <TH class=gridViewHeader scope=col>餐馆区域</TH>
                  <TH class=gridViewHeader scope=col>餐馆地址</TH>
                  <TH class=gridviewHeader scope=col>餐馆电话</TH>
                  <TH class=gridviewHeader scope=col>老板身份证</TH>
                  <TH class=gridviewHeader scope=col>老板姓名</TH>
                  <TH class=gridviewHeader scope=col>营业执照</TH>
                  <TH class=gridviewHeader scope=col>老板电话</TH>
                  <TH class=gridviewHeader scope=col>老板住址</TH>
                  <TH class=gridviewHeader scope=col>餐馆状态</TH>
                  <TH class=gridviewHeader scope=col>餐馆介绍</TH>
                  <TH class=gridviewHeader scope=col>餐馆图片</TH>
                </TR>
                
			<tr onMouseOver="changeColor(this,'F2F2F2')" onMouseOut="changeColor(this,'white')">
				<td class=gridViewItem><%=rs.getString(2)%></td>
				<td class=gridViewItem><%=rs.getString(13)%></td>
				<td class=gridViewItem><%=rs.getString(3)%></td>
				<td class=gridViewItem><%=rs.getString(15)%></td>
				<td class=gridViewItem><%=rs.getString(4)%></td>
				<td class=gridViewItem><%=rs.getString(5)%></td>
				<td class=gridViewItem><%=rs.getString(6)%></td>
				<td class=gridViewItem><%=rs.getString(7)%></td>
				<td class=gridViewItem><%=rs.getString(8)%></td>
				<td class=gridViewItem><%=rs.getString(9)%></td>
				<td class=gridViewItem><%=rs.getString(10)%></td>
				<td class=gridViewItem><%=rs.getInt(11)%></td>
				<td class=gridViewItem><%=rs.getString(12)%></td>
				<td class=gridViewItem><img src="../upload/<%=rs.getString(14)%>" width="30" height="25"></td>
		
			</tr>
			
              </TBODY>
            </TABLE>
            <p><center><a  class=cmdField href="../query">Back</a></center>
          </DIV>
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
<SCRIPT type=text/javascript>
//<![CDATA[
Sys.Application.initialize();
//]]>
</SCRIPT>
	</body>
</html>
