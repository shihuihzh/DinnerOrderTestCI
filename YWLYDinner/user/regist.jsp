<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.user.info_manager.bean.InfoBean"%>

<html>
<head>
   
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>订餐系统</title>

    <link rel="stylesheet" href="../css/style.css" type="text/css" media="screen" />

    <script charset="gbk" type="text/javascript" src="../js/script.js"></script>
    <script type="text/javascript">
	    function loadimage(){ 
	    	document.getElementById("img-code").src = "../common/img.jsp?" + Math.random(); 
	    }  
    </script>
    
</head>

	<%
		String message = request.getParameter("MESSAGE");
		InfoBean user = (InfoBean)session.getAttribute("infoBean");
	%>

<body>
<div id="art-main">
        <div class="art-sheet">
            <div class="art-sheet-tl"></div>
            <div class="art-sheet-tr"></div>
            <div class="art-sheet-bl"></div>
            <div class="art-sheet-br"></div>
            <div class="art-sheet-tc"></div>
            <div class="art-sheet-bc"></div>
            <div class="art-sheet-cl"></div>
            <div class="art-sheet-cr"></div>
            <div class="art-sheet-cc"></div>
            <div class="art-sheet-body">
                <div class="art-header">
                    <div class="art-header-jpeg"></div>
                    <div class="art-logo">
                        <h1 id="name-text" class="art-postheader"><a href="#"></a></h1>
                        <div id="slogan-text" class="art-postheader"></div>
                    </div>
                </div>
                <div class="art-nav">
                	<div class="l"></div>
                	<div class="r"></div>
                	<ul class="art-menu">
                		<li>
                			<a href="../index.jsp" class="active"><span class="l"></span><span class="r"></span><span class="t">首页</span></a>
                		</li>
                		<li>
                			<a href="#"><span class="l"></span><span class="r"></span><span class="t">我要订餐</span></a>
                		</li>		
                		<li>
                			<a href="#"><span class="l"></span><span class="r"></span><span class="t">我要开店</span></a>
                		</li>
				            <li>
                			<a href="#"><span class="l"></span><span class="r"></span><span class="t">我要留言</span></a>
                		</li>
				            <li>
                			<a href="../about.jsp"><span class="l"></span><span class="r"></span><span class="t">关于我们</span></a>
                		</li>
                		<li style="right: -3.5cm; font-size:medium; color: black; border-color: black">
                			<div id="myclock"></div>
                		</li>
                	</ul>
                </div>
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-sidebar1">
                            <div class="art-block">
                                <div class="art-block-body">
                                
	                                <%
	                                	if(user == null){
	                                %>
                                
                                            <div class="art-blockheader">
                                                <div class="l"></div>
                                                <div class="r"></div>
                                                 <div class="t">用户登录</div>
                                            </div>
                                            <div class="art-blockcontent">
                                                <div class="art-blockcontent-body">
                                            <!-- block-content -->
                                                            
                                                        <form action="../J_User_LoginCtrl" method="post" id="user-login-form">
                                                          <div>
                                                          
                                                          	<div class="form-item">
                                                             <label for="edit-name">用户名:</label>
                                                             <input type="text" maxlength="60" name="userName" id="edit-name" style="width: 95%;" value=""  />
                                                            </div>
                                                            
                                                            <div class="form-item">
                                                             <label for="edit-pass">密码:</label>
                                                             <input type="password" name="userPassword" id="edit-pass"  maxlength="60"  style="width: 95%;" class="form-text required" />
                                                            </div>
                                                            
                                                            <div class="form-item">
                                                             <label for="edit-pass">验证码:</label>
	                                                         <input type="text" name="code" id="edit-code"  maxlength="60"  style="width: 95%;" class="form-required" />
	                                                         <a onclick="javascript:loadimage();"><img class="art-article" title="点击换一张图片" id="img-code" src="../common/img.jsp"></a>
                                                            </div>
                                                            
                                                            <span class="art-button-wrapper">
                                                            	<span class="l"></span>
                                                            	<span class="r"></span>
                                                            	<input class="art-button" type="submit" name="login" value="登录" />
                                                            </span>
                                                            
                                                          </div>
                                                            
                                                            <div style="color: red"><%= "invalidcode".equals(message)?  "验证码错误！":"" %></div>
                                                            
                                                        </form>
                                                        
                                            <!-- /block-content -->
                                            
                                            		<div class="cleared"></div>
                                                </div>
                                            </div>
                                            
                                    <%
                                		} else {
                                    %>
                                            
                                             <div class="art-blockheader">
                                                <div class="l"></div>
                                                <div class="r"></div>
                                                 <div class="t">登录成功</div>
                                            </div>
                                            <div class="art-blockcontent">
                                                <div class="art-blockcontent-body">
                                            <!-- block-content -->
                                            
                                                <img class="art-metadata-icon" src="../images/postauthoricon.png" width="14" height="14" alt="" />
                                                <label for="edit-name">欢迎饭桶&nbsp;<%=user.getUserName()%>&nbsp;归来。</label>
                                                <div><img class="art-article" src="./images/user_head.png" alt="我的头像" /></div>
                                                <ul>
                                                    <li><a href="./user/user_info.jsp">查看个人信息</a></li>
                                                    <li><a href="../car/car.jsp"">查看所有餐馆的信息</a></li>
                                                    <li><a href="./user/logout.jsp">注销/重新登录</a></li>
                                                </ul>
                                                        
                                            <!-- /block-content -->
                                            
                                            		<div class="cleared"></div>
                                                </div>
                                            </div>
                                            
		                            <%
                                		}
		                            %>
                                            
                            		<div class="cleared"></div>
                                </div>
                            </div>
                            
                            <div class="art-block">
                                <div class="art-block-body">
                                            <div class="art-blockheader">
                                                <div class="l"></div>
                                                <div class="r"></div>
                                                 <div class="t">本周推荐</div>
                                            </div>
                                            <div class="art-blockcontent">
                                                <div class="art-blockcontent-body">
                                            <!-- block-content -->
                                             <marquee behavior="slide" direction="left">
                                                 <ul>
                                                   <li>大塘烧鹅</li>
                                                   <li>广东文昌鸡</li>
                                                   <li>宫保鸡丁</li>
                                                   <li>糖醋鱼</li>
                                                   <li>酱醋鸡</li>
                                                   <li>麻辣臭豆腐</li>
                                                 </ul>
                                            </marquee>
                                            <!-- /block-content -->
                                            
                                            		<div class="cleared"></div>
                                                </div>
                                            </div>
                            		<div class="cleared"></div>
                                </div>
                            </div>
                            
                            <div class="art-block">
                                <div class="art-block-body">
                                            <div class="art-blockheader">
                                                <div class="l"></div>
                                                <div class="r"></div>
                                                 <div class="t">友情链接</div>
                                            </div>
                                            <div class="art-blockcontent">
                                                <div class="art-blockcontent-body">
                                            <!-- block-content -->
                                                            <ul>
                                                              <li><a href="http://www.baidu.com" title="百度" target="_blank1">百度</a></li>
                                                              <li><a href="http://www.google.com.cn" title="谷歌" target="_blank2">谷歌</a></li>
                                                              <li><a href="http://www.gdcc.edu.cn" title="广东商学院" target="_blank3">广东商学院</a></li>
                                                            </ul>
                                            <!-- /block-content -->
                                            
                                            		<div class="cleared"></div>
                                                </div>
                                            </div>
                            		<div class="cleared"></div>
                                </div>
                            </div>
                            
                        </div>
                        
                        
                        <div class="art-layout-cell art-content">
                            <div class="art-post">
                                <div class="art-post-body">
                            <div class="art-post-inner">
                                            <h2 class="art-postheader">
                                                <span class="art-postheader">新用户注册</span>
                                            </h2>
                                            
                                            <div class="art-postmetadataheader">
                                                
                                            </div>
                                            
                                            <div class="art-postcontent">
                                                <!-- article-content -->
                                                
                                                <form action="../J_InsertUserCtrl" method="post" name="userRegisterForm">
                                                    <table align="center">
                                                        <tr><td align="center">用户名</td><td><input type="text" name="userName"/></td></tr>
                                                        <tr><td align="center">真实姓名</td><td><input type="text" name="userRealName"/></td></tr>
                                                        <tr><td align="center">密码</td><td><input type="password" name="userPassword"/></td></tr>
                                                        <tr><td align="center">重输密码</td><td><input type="password" name="userPassword2"/></td></tr>
                                                        <tr><td align="center">性别</td><td><input type="radio" name="userSex" value="男" checked="checked"/>男
                                                     					    <input type="radio" name="userSex" value="女"/> 女</td></tr>
                                                        <tr><td align="center">年龄</td><td><input type="text" name="userAge"/></td></tr>
                                                        <tr><td align="center">联系电话</td><td><input type="text" name="userPhone"/></td></tr>
                                                        <tr><td align="center">地址</td><td><input type="text" name="userAddress"/></td></tr>
                                                        <tr><td align="center">E-mail</td><td><input type="text" name="userMail"/></td></tr>
                                                        <tr></tr>
                                                        <tr><td colspan="2" align="center"><input class="art-button" type="submit" value="注册"/>
                                                        					<input class="art-button" type="reset" value="重置"/></td></tr>
                                                    </table>
                                                </form>
                                                  
                                                <!-- /article-content -->
                                            </div>
                                            <div class="cleared"></div>
                                            
                                            <div class="art-postmetadatafooter">
                                                
                                            </div>
                            </div>
                            
                            		<div class="cleared"></div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                
                <div class="cleared"></div><div class="art-footer">
                    <div class="art-footer-inner">
                        <div class="art-footer-text">
                            <p><a href="#">联系我们</a>&nbsp;|&nbsp;<a href="#">制作团队</a>&nbsp;|&nbsp;<a href="#">发送邮件</a><br/>Copyright &copy; 2009&nbsp;---.&nbsp;All Rights Reserved.</p>
                        </div>
                    </div>
                    <div class="art-footer-background"></div>
                </div>
        		<div class="cleared"></div>
            </div>
        </div>
        <div class="cleared"></div>
    </div>
    
</body>
</html>
