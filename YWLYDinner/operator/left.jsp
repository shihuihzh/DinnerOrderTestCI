<%@ page language="java" pageEncoding="utf-8"%>

<html>
	<head>
		<title>left</title>
		<STYLE type=text/css>
{
FONT-SIZE:12 px
}
#menuTree A {
	COLOR: #566984;
	TEXT-DECORATION: none
}
</STYLE>
		<SCRIPT src="../js/TreeNode.js" type=text/javascript></SCRIPT>
		<SCRIPT src="../js/Tree.js" type=text/javascript></SCRIPT>
	</head>

	<body
		style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(../images/bg.gif); BACKGROUND-REPEAT: repeat-x">
		<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%">
			<TBODY>
				<TR>
					<TD width=10 height=29>
						<IMG src="../images/bg_left_tl.gif">
					</TD>
					<TD
						style="FONT-SIZE: 18px; BACKGROUND-IMAGE: url(../images/bg_left_tc.gif); COLOR: white; FONT-FAMILY: system">
						Menu
					</TD>
					<TD width=10>
						<IMG src="../images/bg_left_tr.gif">
					</TD>
				</TR>
				<TR>
					<TD style="BACKGROUND-IMAGE: url(../images/bg_left_ls.gif)"></TD>
					<TD id=menuTree
						style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px; HEIGHT: 100%; BACKGROUND-COLOR: white"
						vAlign=top></TD>
					<TD style="BACKGROUND-IMAGE: url(../images/bg_left_rs.gif)"></TD>
				</TR>
				<TR>
					<TD width=10>
						<IMG src="../images/bg_left_bl.gif">
					</TD>
					<TD style="BACKGROUND-IMAGE: url(../images/bg_left_bc.gif)"></TD>
					<TD width=10>
						<IMG src="../images/bg_left_br.gif">
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<SCRIPT type=text/javascript>
	var tree = null;
	var root = new TreeNode('系统菜单');
	var fun1 = new TreeNode('餐馆管理');
	var fun3 = new TreeNode('餐馆信息', '../query', 'tree_node.gif', null,
			'tree_node.gif', null);
	fun1.add(fun3);
	var fun2 = new TreeNode('注册餐馆', './manager.jsp', 'tree_node.gif', null,
			'tree_node.gif', null);
	fun1.add(fun2);
	root.add(fun1);
	var fun13 = new TreeNode('消息传递');
	var fun14 = new TreeNode('消息管理', '../query', 'tree_node.gif', null,
			'tree_node.gif', null);
	fun13.add(fun14);
	var fun15 = new TreeNode('信箱', '../query', 'tree_node.gif', null,
			'tree_node.gif', null);
	fun13.add(fun15);
	root.add(fun13);
	var fun16 = new TreeNode('系统管理');
	var fun17 = new TreeNode('角色管理', '../query', 'tree_node.gif', null,
			'tree_node.gif', null);
	fun16.add(fun17);
	var fun18 = new TreeNode('登录日志', '../query', 'tree_node.gif', null,
			'tree_node.gif', null);
	fun16.add(fun18);
	var fun19 = new TreeNode('操作日志', '../query', 'tree_node.gif', null,
			'tree_node.gif', null);
	fun16.add(fun19);
	var fun20 = new TreeNode('菜单排序', '../query', 'tree_node.gif', null,
			'tree_node.gif', null);
	fun16.add(fun20);
	root.add(fun16);
	tree = new Tree(root);
	tree.show('menuTree')
</SCRIPT>
	</body>
</html>
