<%@ page language="java" pageEncoding="utf-8"%>

<html>
	<head>
		<title>top</title>
		<STYLE type=text/css>
* {
	FONT-SIZE: 12px;
	COLOR: white
}

#logo {
	COLOR: white
}

#logo A {
	COLOR: white
}

FORM {
	MARGIN: 0px
}
</STYLE>
		<SCRIPT src="../js/Clock.js" type=text/javascript></SCRIPT>
	</head>

	<body
		style="BACKGROUND-IMAGE: url(../images/bg.gif); MARGIN: 0px; BACKGROUND-REPEAT: repeat-x">
		<form id="form1">
			<DIV id=logo
				style="BACKGROUND-IMAGE: url(../images/logo.png); BACKGROUND-REPEAT: no-repeat">
				<DIV
					style="PADDING-RIGHT: 50px; BACKGROUND-POSITION: right 50%; DISPLAY: block; PADDING-LEFT: 0px;
					BACKGROUND-IMAGE: url(../images/bg_banner_menu.gif); PADDING-BOTTOM: 0px; PADDING-TOP: 3px; 
					BACKGROUND-REPEAT: no-repeat; HEIGHT: 30px; TEXT-ALIGN: right">
					<A href="#"><IMG src="../images/mail.gif" align=Middle border=0></A> 
					您有新消息1条
					<IMG src="../images/menu_seprator.gif" align=Middle>
					<A href="./resLogout.jsp" target=_top><IMG src="../images/nav_changePassword.gif" align=Middle border=0>注销</A>
					<IMG src="../images/menu_seprator.gif" align=Middle>
					<A id=HyperLink3 href="javascript:window.top.close()">
						<IMG src="../images/minical_btnClose.gif" align=Middle border=0>关闭系统</A></DIV>
				<DIV style="DISPLAY: block; HEIGHT: 54px"></DIV>
				<DIV
					style="BACKGROUND-IMAGE: url(../images/bg_nav.gif); BACKGROUND-REPEAT: repeat-x; HEIGHT: 30px">
					<TABLE cellSpacing=0 cellPadding=0 width="100%">
						<TBODY>
							<TR>
								<TD>
									<DIV>
										<IMG src="../images/nav_pre.gif" align=Middle>
										欢迎
										<SPAN id=lblBra> [<%=session.getAttribute("USERNAME")%>]管理员
										</SPAN>光临!
									</DIV>
								</TD>
								<TD align=right width="70%">
									<SPAN style="PADDING-RIGHT: 50px"> <A
										href="javascript:history.go(-1);"><IMG
												src="../images/nav_back.gif" align=Middle border=0>后退</A> <A
										href="javascript:history.go(1);"><IMG
												src="../images/nav_forward.gif" align=Middle border=0>前进</A>
									    <a href="../updatepass" target="mainFrame"><IMG
												src="../images/nav_resetPassword.gif" align=Middle border=0>修改密码</a>
										<IMG
												src="../images/nav_help.gif" align=Middle border=0>帮助 
												<IMG src="../images/menu_seprator.gif" align=Middle>
												<SPAN id=clock></SPAN>
									</SPAN>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</DIV>
			</DIV>
			<SCRIPT type=text/javascript>
    			var clock = new Clock();
    			clock.display(document.getElementById("clock"));
			</SCRIPT>
		</form>
	</body>
</html>
