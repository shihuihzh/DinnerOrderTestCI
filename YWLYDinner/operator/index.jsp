<%@ page language="java" pageEncoding="utf-8"%>

<html>
  <head>
    <title>运营商后台管理系统</title>
    <LINK 
		href="../css/public.css" type=text/css rel=stylesheet>
	<LINK 
		href="../css/login.css" type=text/css rel=stylesheet>
	<STYLE type=text/css></STYLE>
    <script type="text/javascript" language="JavaScript">
    function validate() {
		var userName = loginForm.userName.value;
		var userPassword = loginForm.userPassword.value;
		if(!(/^\w{5,10}$/.test(userName))){
		alert("用户名必须是5~10位！");
		loginForm.userName.focus();
		return false;
	}
	if(!(/^\w{5,10}$/.test(userPassword))){
		alert("用户密码必须是5~10位！");
		loginForm.userPassword.focus();
		return false;
	}
		loginForm.submit();
		return true;
	}

	function reload(){
		document.loginForm.codeImg.src = "img.jsp?" + Math.random(); 
	}
    </script>
  </head>
  <body>
  <%String info = request.getParameter("info"); %>
  <DIV id=div1>
  <TABLE id=login height="100%" cellSpacing=0 cellPadding=0 width=800 align=center>
    <TBODY>
      <TR id=main>
        <TD>
        <form action="../login" name="loginForm" method="post">
          <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%">          
            <TBODY>
              <TR>
                <TD colSpan=4>&nbsp;</TD>
              </TR>
              <TR height=30>
                <TD width=380>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD>
              </TR>
              <TR height=40>
                <TD rowSpan=4>&nbsp;</TD>
                <TD>用户名：</TD>
                <TD>
                  <INPUT name="userName" type="text" value="admin" class=textbox>
                </TD>
                <TD width=120>&nbsp;</TD>
              </TR>
              <TR height=40>
                <TD>密　码：</TD>
                <TD>
                  <INPUT name="userPassword" type="password" value="admin" class=textbox>
                </TD>
                <TD width=120>&nbsp;</TD>
              </TR>
              <TR height=40>
                <TD>验证码：</TD>
                <TD vAlign="middle" colSpan=2 id=txtSN >
                  <INPUT name="code" type="text" size=4 maxlength=4>
                  &nbsp; <A id=LinkButton1 href="#" onclick="reload();">
                  <img name="codeImg" src="img.jsp" border=0> 看不清楚？</A></TD>
              </TR>
              <TR height=40>
                <TD></TD>
                <TD align=right>
                  <INPUT type=submit value=" 登 录 " class=button onClick="return validate();">
                </TD>
                <TD width=120>&nbsp;</TD>
              </TR>
              <TR height=110>
                <TD colSpan=2>&nbsp;</TD>
                <td><%if("code".equals(info)){ %><center><font color="red" size="3">
         验证码错误！</font></center></td><td></td><%}else if("inco".equals(info)){ %>
         <center><font color="red" size="3">
         用户名或密码错误！</font></center><%} %><td></td>
              </TR>
            </TBODY>
          </TABLE>
         </form>
        </TD>
      </TR>
      <TR id=root height=104>
        <TD>&nbsp;</TD>
      </TR>
    </TBODY>
  </TABLE>
</DIV>
<DIV id=div2 style="DISPLAY: none"></DIV>
  </body>
</html>
