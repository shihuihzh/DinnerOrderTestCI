<%@ page language="java" pageEncoding="gb2312"%>

<html>
  <head>
    <title>��Ӫ�̹���ģ��</title>
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
        PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">ע��͹�</SPAN>
        <SPAN style="FLOAT: left; BACKGROUND-IMAGE: url(../images/main_hr.gif); WIDTH: 60px; 
        BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(../images/main_rc.gif)" width=10></TD>
      </TR>
      <TR>
        <TD style="BACKGROUND-IMAGE: url(../images/main_ls.gif)">&nbsp;</TD>
        <TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; 
        COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white" vAlign=top align="center">
  	<form action="../insert" name="form" method="post" enctype="multipart/form-data">
  		<table  class=gridView>
  			<tr><td align="right">��¼�û�����</td><td><input type="text" name="resLoginName" ></td>
  			<td align="right">��¼���룺</td><td><input type="text" name="resLoginPassword" ></td></tr>
  			<tr><td align="right">�͹�����</td><td><input type="text" name="resName" ></td>
  			<td align="right">�͹ݵ�ַ��</td><td><input type="text" name="resAdd" ></td></tr>
  			<tr><td align="right">�͹ݵ绰��</td><td><input type="text" name="resPhone" ></td>
  			<td align="right">�ϰ�ID��</td><td><input type="text" name="resCEOIDNum" ></td></tr>
  			<tr><td align="right">�ϰ�������</td><td><input type="text" name="resCEOName" ></td>
  			<td align="right">Ӫҵִ�գ�</td><td><input type="text" name="resPermitNum" ></td></tr>
  			<tr><td align="right">�ϰ�Tel��</td><td><input type="text" name="resCEOPhone" ></td>
  			<td align="right">�ϰ�סַ��</td><td><input type="text" name="resCEOAdd" ></td></tr>
  			<tr><td align="right">�͹�ͼƬ��</td><td><input type="file" name="pic"></td>  			
  			<td align="right">�͹�״̬��</td><td><select name="resState">
  				<option value="1">����</option>
  				<option value="2">Ƿ��</option>
  			</select></td></tr>
  			<tr><td></td><td><font color="red" size="2">������ϴ������Բ�ѡ��</font></td>
  			<td align="right">�͹���������</td><td><select name="resDistrict">
  				<option value="�����">�����</option>
  				<option value="������">������</option>
  				<option value="Խ����">Խ����</option>
  				<option value="������">������</option>
  				<option value="������">������</option>
  				<option value="������">������</option>
  				<option value="��خ��">��خ��</option>
  				<option value="��ɳ��">��ɳ��</option>
  				<option value="�ܸ���">�ܸ���</option>
  				<option value="������">������</option>
  			</select></td>
  			</tr>
  			<tr><td align="right">�͹ݽ��ܣ�</td><td><textarea cols="20" rows="5" name="resIntroduce"></textarea></td></tr>
  			<tr><td colspan="2"></td>
  			</tr>  			
  		</table>
  		<center><input class=cmdField type="submit" value="�ύ">
  		<input class=cmdField type="reset" value="����"></center>
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
