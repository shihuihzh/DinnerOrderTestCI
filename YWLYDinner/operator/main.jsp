<%@ page language="java" import="java.util.*,com.operator.manager.bean.*,java.sql.*" pageEncoding="utf-8"%>

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

	<body style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(../images/bg.gif); BACKGROUND-REPEAT: repeat-x">
<script type="text/javascript">
	function deleteRes(resID) {
		deleteForm.deleteID.value = resID;
		if (window.confirm("确定要删除此项数据吗？")) {
			deleteForm.submit();
		}
	}
	
	function detail(resID) {
		detailForm.detailID.value = resID;
			detailForm.submit();
	}
	
	function changeColor(obj,color){
			obj.bgColor = color ;
		}  

	function updateRes(resID, resLoginName, resPassword, resName, resAdd,
			resPhone, resCEOIDNum, resCEOName, resPermitNum, resCEOPhoneNum,
			resCEOAdd, resState, resIntroduce,resPhotoName,resDistrict) {
		updateForm.resID.value = resID;
		updateForm.resLoginName.value = resLoginName;
		updateForm.resPassword.value = resPassword;
		updateForm.resName.value = resName;
		updateForm.resAdd.value = resAdd;
		updateForm.resPhone.value = resPhone;
		updateForm.resCEOIDNum.value = resCEOIDNum;
		updateForm.resCEOName.value = resCEOName;
		updateForm.resPermitNum.value = resPermitNum;
		updateForm.resCEOPhoneNum.value = resCEOPhoneNum;
		updateForm.resCEOAdd.value = resCEOAdd;
		updateForm.resState.value = resState;
		updateForm.resIntroduce.value = resIntroduce;
		updateForm.resPhotoName.value = resPhotoName;
		updateForm.resDistrict.value = resDistrict;
		updateForm.submit();
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
        PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">餐馆列表 </SPAN>
        <SPAN style="FLOAT: left; BACKGROUND-IMAGE: url(../images/main_hr.gif); WIDTH: 60px; 
        BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN></TD>
        <TD style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(../images/main_rc.gif)" width=10></TD>
      </TR>
      <TR>
        <TD style="BACKGROUND-IMAGE: url(../images/main_ls.gif)">&nbsp;</TD>
        <TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; 
        COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white" vAlign=top align="center">
          <DIV>
          <form action="../delete" method="post" name="deleteForm">
			<input type="hidden" name="deleteID">
		</form>
		
		<form action="../queryresdetail" method="post" name="detailForm">
			<input type="hidden" name="detailID">
		</form>

		<form action="./update.jsp" method="post" name="updateForm">
			<input type="hidden" name="resID">
			<input type="hidden" name="resLoginName">
			<input type="hidden" name="resPassword">
			<input type="hidden" name="resName">
			<input type="hidden" name="resAdd">
			<input type="hidden" name="resPhone">
			<input type="hidden" name="resCEOIDNum">
			<input type="hidden" name="resCEOName">
			<input type="hidden" name="resPermitNum">
			<input type="hidden" name="resCEOPhoneNum">
			<input type="hidden" name="resCEOAdd">
			<input type="hidden" name="resState">
			<input type="hidden" name="resIntroduce">
			<input type="hidden" name="resPhotoName">
			<input type="hidden" name="resDistrict">
		</form>
		<%
			ResultSet rs = (ResultSet) request.getSession().getAttribute(
					"RESULTSET");
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
		%>
		<form action="../querykey" method="post" name="searchForm">
			关键字搜索：
			<input type="text" size="10" name="keyword">
			<a href="#"  class=cmdField onclick="searchForm.submit();">查询</a>
		</form>
		<%
			rs.absolute((curPage - 1) * countPerPage + 1);
		%>
			
            <TABLE class=gridView id=ctl00_ContentPlaceHolder2_GridView1 
      style="WIDTH: 100%; BORDER-COLLAPSE: collapse" cellSpacing=0 rules=all 
      border=1>
              <TBODY>
                <TR>
                  <TH class=gridViewHeader scope=col>餐馆名</TH>
                  <TH class=gridViewHeader scope=col>餐馆地址</TH>
                  <TH class=gridviewHeader scope=col>餐馆电话</TH>
                  <TH class=gridviewHeader scope=col>餐馆状态</TH>
                  <TH class=gridviewHeader scope=col colspan="3">操作</TH>
                </TR>
                
                
                <%
				if (rowCount == 0) {
			%>
			<tr>
				<td colspan="15" class=gridViewItem>
					暂时没有查询到任何记录！
				</td>
			</tr>
			<%
				} else {
					int i = 0;
					while (i < countPerPage && !rs.isAfterLast()) {
			%>
			<tr onMouseOver="changeColor(this,'F2F2F2')" onMouseOut="changeColor(this,'white')">
				<td class=gridViewItem><%=rs.getString(3)%></td>
				<td class=gridViewItem><%=rs.getString(4)%></td>
				<td class=gridViewItem><%=rs.getString(5)%></td>
				<%
					int state = rs.getInt(11);
					if(state == 1){
				%>				
					<td class=gridViewItem>正常</td>
				<%
					}else{
				%>
				<td class=gridViewItem>欠费</td>
				<%
					}
				%>
				<td class=gridViewItem>
					<a href="#" class=cmdField onclick="detail('<%=rs.getInt(1)%>');">详情</a>
				</td>
				
				
				<td class=gridViewItem>
					<a href="#"  class=cmdField onclick="deleteRes('<%=rs.getInt(1)%>');">删除</a>
				</td>
				<td class=gridViewItem>
					<a href="#"  class=cmdField
						onclick="updateRes('<%=rs.getInt(1)%>','<%=rs.getString(2)%>','<%=rs.getString(13)%>',
	  			'<%=rs.getString(3)%>','<%=rs.getString(4)%>','<%=rs.getString(5)%>',
	  			'<%=rs.getString(6)%>','<%=rs.getString(7)%>','<%=rs.getString(8)%>',
	  			'<%=rs.getString(9)%>','<%=rs.getString(10)%>','<%=rs.getInt(11)%>',
	  			'<%=rs.getString(12)%>','<%=rs.getString(14)%>','<%=rs.getString(15)%>');">修改</a>
				</td>
			</tr>
			<%
				i++;
				rs.next();
				}
			}
			%>
               
              </TBODY>
            </TABLE>
            	共有<%=rowCount%>条记录,当前为第<%=curPage%>,共有<%=pageCount%>页！
            <%
            	for(int i = 1;i <= 25;i ++){
            %>
            	&nbsp;
            <%
            	}
            %>
			<%
			if(rowCount == 0){
			%>
				首页&nbsp;&nbsp;上一页&nbsp;&nbsp;下一页&nbsp;&nbsp;尾页&nbsp;&nbsp;
			<%}else{
				if (curPage == 1) {
			%>
			首页&nbsp;&nbsp;下一页&nbsp;&nbsp;
			<%
				for(int i = 1;i <= pageCount;i++){
			%>
					<a href="main.jsp?pageIndex=<%=i%>"><%=i%></a>
			<%	}
					} else {
			%>
				<a href="main.jsp?pageIndex=<%=1%>">首页</a>&nbsp;&nbsp;
				<a href="main.jsp?pageIndex=<%=curPage - 1%>">上一页</a>&nbsp;&nbsp;
				<%
				for(int i = 1;i <= pageCount;i++){
			%>
					<a href="main.jsp?pageIndex=<%=i%>"><%=i%></a>
				<%}
					}
			if (curPage == pageCount) {
				%>
				下一页&nbsp;&nbsp;尾页&nbsp;&nbsp;

			<%
				} else {
			%>
			<a href="main.jsp?pageIndex=<%=curPage + 1%>">下一页</a>&nbsp;&nbsp;
			<a href="main.jsp?pageIndex=<%=pageCount%>">尾页</a>&nbsp;&nbsp;

		<%
			}
		}
		%>	            
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
