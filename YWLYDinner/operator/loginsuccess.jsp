<%@ page language="java" pageEncoding="utf-8"%>

<html>
	<head>
		<title>运营商管理系统</title>
	</head>

	<FRAMESET id=index border=0 frameSpacing=0 rows=120,* frameBorder=no>
		<FRAME id=topFrame name=topFrame src="./operator/top.jsp"
			noResize scrolling=no>
		<FRAMESET border=0 frameSpacing=0 frameBorder=no cols=18%,*>
			<FRAME id=leftFrame name=leftFrame src="./operator/left.jsp"
				noResize scrolling=no>
			<FRAME id=mainFrame name=mainFrame
				src="./query" noResize scrolling=yes>
		</FRAMESET>
	</FRAMESET>
	<noframes></noframes>
</html>
