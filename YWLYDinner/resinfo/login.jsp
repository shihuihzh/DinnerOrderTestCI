<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登陆页面</title>
<!-- 调用CSS，JS -->
<link href="../images/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	background-image: url(login1_08.gif);
	background-repeat: repeat-x;
	margin-bottom: 0px;
	font-family: "宋体";
	font-size: 12px;
	line-height: 1.5;
	font-weight: normal;
	color: #546D87;
	background-color: #BBD9F5;
}
-->
</style>
</head>
<body>
<table width="990" height="650" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <td width="318" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="299" align="right"><img src="../images/login1_01.gif" width="318" height="299" /></td>
        </tr>
        <tr>
          <td height="351" align="right"><img src="../images/login1_04.gif" width="318" height="351" /></td>
        </tr>
      </table>
    </td>
    <td width="366" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="299" background="../images/login_6.gif"><img src="../images/login1_02.gif" width="366" height="299" /></td>
        </tr>
        <tr>
          <td height="96" valign="top" background="../images/login_9.gif">
		   <form action="../resLogin" method="post" name="resLogin">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="25%" height="25">&nbsp;</td>
                <td width="48%" valign="top">
                  <label>
                  <input name="resLoginName" type="text" class="txt" size="25" value="好看计划"/>
                  </label>
                </td>
                <td width="27%" rowspan="2"><a  href="#" onclick="javaScript:resLogin.submit();" ><img src="../images/login_2.gif" width="57" height="55" border="0" /></a></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>
                  <input name="resPassword" type="password" value="aaa" class="txt" size="25" />
                </td>
              </tr>
             
            </table>
			</form>
          </td>
        </tr>
        <tr>
          <td height="255" background="../images/login1_07.gif">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="129">&nbsp;</td>
              </tr>
              <tr>
                <td align="center">版权所有 &copy;TOGOGO技术团队 </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
    <td width="318" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="299" align="left" background="../images/login1_03.gif">&nbsp;</td>
        </tr>
        <tr>
          <td height="351" align="left" background="../images/login1_06.gif">&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
