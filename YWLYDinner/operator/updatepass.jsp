<%@ page language="java" pageEncoding="gb2312"%>

<html>
  <head>
    <title>title</title>
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

<script type="text/javascript">
	function validate(){
		if(document.form.newPass1.value == ""||document.form.newPass2.value == ""){
			alert("�����벻��Ϊ�գ�");	
			return;
		}else if(document.form.newPass1.value != document.form.newPass2.value){
			alert("�����������벻һ�£����������룡");	
			return;
		}else if(document.form.oldPass.value != document.form.transPass.value){
			alert("����ľ����벻��ȷ��");	
			return;
		}
		form.submit();
	}
</script>
  </head>
  <%String oldPass = (String)session.getAttribute("oldPass"); %>
  <body  style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(../images/bg.gif); 
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
        PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">�޸�����</SPAN>
        <SPAN style="FLOAT: left; BACKGROUND-IMAGE: url(../images/main_hr.gif); WIDTH: 60px; 
        BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(../images/main_rc.gif)" width=10></TD>
      </TR>
      <TR>
        <TD style="BACKGROUND-IMAGE: url(../images/main_ls.gif)">&nbsp;</TD>
        <TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; 
        COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white" vAlign=top align="center">
  	<form action="../updatepassword" name="form" method="post">
  		<table  class=gridView>
  			<tr><td align="right">������ԭ���룺</td><td><input type="password" name="oldPass" ></td></tr>
  			<tr><td align="right">�����������룺</td><td><input type="password" name="newPass1" ></td></tr>
  			<tr><td align="right">���ٴ����������룺</td><td><input type="password" name="newPass2" ></td>
  		</table>
  		<center><input class=cmdField type="button" value="�޸�" onclick="validate()">
  		<input class=cmdField type="reset" value="����"></center>
  		<p><center><a class=cmdField href="../query">Back</a></center>
  		<input type="hidden" name="transPass" value=<%=oldPass %>>
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
