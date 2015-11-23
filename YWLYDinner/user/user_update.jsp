<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.user.info_manager.bean.InfoBean"%>

<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>订餐系统</title>

    <link rel="stylesheet" href="../css/style.css" type="text/css" media="screen" />
    <script charset="gbk" type="text/javascript" src="../js/script.js"></script>
    
</head>

	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		InfoBean user = (InfoBean)session.getAttribute("infoBean");
		
	    String userName = request.getParameter("userName");
	    String userRealName = request.getParameter("userRealName");
	    String userPassword = request.getParameter("userPassword");
	    String userAge = request.getParameter("userAge");
	    String userSex = request.getParameter("userSex");
	    String userPhone = request.getParameter("userPhone");
	    String userAdderss = request.getParameter("userAdderss");
	    String userMail = request.getParameter("userMail");
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
                                
                                             <div class="art-blockheader">
                                                <div class="l"></div>
                                                <div class="r"></div>
                                                 <div class="t">登录成功</div>
                                            </div>
                                            <div class="art-blockcontent">
                                                <div class="art-blockcontent-body">
                                            <!-- block-content -->
                                                   
                                                 <img class="art-metadata-icon" src="../images/postauthoricon.png" width="14" height="14" alt="用户" />       
                                                 <label for="edit-name">欢迎饭桶&nbsp;<%=user.getUserName()%>&nbsp;归来。</label>
                                                 <div><img class="art-article" src="../images/user_head.png" alt="我的头像" /></div>
                                                 <ul>
	                                                 <li><a href="./user_info.jsp">查看个人信息</a></li>
	                                                 <li><a href="../car/car.jsp"">查看我的购物车</a></li>
	                                                 <li><a href="logout.jsp">注销/重新登录</a></li>
                                                 </ul>
                                                        
                                            <!-- /block-content -->
                                            
                                            		<div class="cleared"></div>
                                                </div>
                                            </div>
                                            
                            		<div class="cleared"></div>
                                </div>
                            </div>
                            <hr/>
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
                            <hr/>
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
                                                <span class="art-postheader">修改个人信息</span>
                                            </h2>
                                            
                                            <div class="art-postmetadataheader"></div>
                                            
                                            <div class="art-postcontent">
                                                <!-- article-content -->
                                                
                                               <div align="center">
                                                 <form action="../J_UpdateSelfCtrl" method="post">
												   <table align="center" border="1" style="border-color: gray">
													   <tr><th>用户名</th><td><input type="text" name="userName" value="<%=userName %>" size="30"></td></tr>   
													   <tr><th>真实姓名</th><td><%=userRealName %></td></tr> 
													   <tr><th>密 码</th><td><input type="password" name="newUserPassword" value="<%=userPassword %>" size="30"></td></tr> 
													   <tr><th>性 别</th><td><%=userSex %></td></tr> 
													   <tr><th>年 龄</th><td><input type="text" name="newUserAge" value="<%=userAge %>" size="10"></td></tr> 
													   <tr><th>联系方式</th><td><input type="text" name="newUserPhone" value="<%=userPhone%>"></td></tr> 
													   <tr><th>地 址</th><td><input type="text" name="newUserAddress" value="<%=userAdderss %>" size="<%=userAdderss.length()*2+5 %>"></td></tr> 
													   <tr><th>E-Mail</th><td><input type="text" name="newUserMail" value="<%=userMail %>"></td></tr> 
												   </table>
												   <div align="right">
												   		<input class="art-button" type="submit" value="提交">
												   		<input class="art-button" type="button" value="返回" onclick="history.go(-1)">
													</div>
												 </form>
                                               </div>
                                               
                                                <!-- /article-content -->
                                            </div>
                                            <div class="cleared"></div>
                                            
                                            <div class="art-postmetadatafooter"></div>
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
                            <p><a href="#">联系我们</a>&nbsp;|&nbsp;<a href="#">制作团队</a>&nbsp;|&nbsp;<a href="#">发送邮件</a><br/>Copyright &copy; 2010&nbsp;---.&nbsp;All Rights Reserved.</p>
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
