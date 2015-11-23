<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		InfoBean user = (InfoBean)session.getAttribute("infoBean");
		int dishId = Integer.parseInt(request.getParameter("dishId")); 
		int resId = Integer.parseInt(request.getParameter("resId")); 
		String dishName = request.getParameter("dishName"); 
		String resName = request.getParameter("resName");
		String dishPrice = request.getParameter("dishPrice");
		String dishIntroduce = request.getParameter("dishIntroduce");
		String dishSeries = request.getParameter("dishSeries");
		String dishStyle = request.getParameter("dishStyle");
		String dishPhoto = request.getParameter("dishPhoto");
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
                                              <div><div class="form-item">
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
                                            <a onclick="javascript:loadimage();"><img class="art-article" title="点击换一张图片" id="img-code" src="../common/img.jsp" style="cursor: pointer"></a>
                                              </div>
                                              
                                              <span class="art-button-wrapper">
                                              	<span class="l"></span>
                                              	<span class="r"></span>
                                              	<input class="art-button" type="submit" name="login" value="登录" />
                                              </span>
                                              
                                              <div class="cleared"></div>
                                              <div><ul><li><a href="../user/regist.jsp" title="注册新用户账号">注册新用户账号</a></li></ul></div>
                                              </div>
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
                                                    <div><img class="art-article" src="../images/user_head.png" alt="我的头像" /></div>
                                                    <ul>
                                                        <li><a href="../user/user_info.jsp">查看个人信息</a></li>
                                                        <li><a href="../J_ResQueryCtrl">查看我的购物车</a></li>
                                                        <li><a href="../user/logout.jsp">注销/重新登录</a></li>
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
                                       <span class="art-postheader">
	                                       <img class="art-metadata-icon" src="../images/comment-06.png" width="14" height="14" alt="" />
	                                       <%=dishName %>
                                       </span>
                                   </h2>
                                   
                                   <div class="art-postmetadataheader"></div>
                                      
                                   <div class="art-postcontent">
                                       <!-- article-content -->
                                       
                                     <br/><br/>
                                     <table border="1" style="border-color: gray" align="center">
									    <tr align="center">
										  <th bgcolor="#D7D8C0" width="20%">餐馆名</th><td><%=resName %></td>
										  <td width="20%" rowspan="5"><img class="art-article" src="../upload/<%=dishPhoto %>" alt="菜图像"/></td>
										</tr>
										<tr align="center">
										  <th bgcolor="#D7D8C0">菜名</th><td><%=dishName %></td>
										</tr>
										<tr align="center">
										  <th bgcolor="#D7D8C0">菜单价</th><td><%=dishPrice %></td>
										</tr>
										<tr align="center">
										  <th bgcolor="#D7D8C0">菜系</th><td><%=dishSeries %></td><td></td>
										</tr>
										<tr align="center">
										  <th bgcolor="#D7D8C0">菜类型</th><td><%=dishStyle %></td>
										</tr>
										<tr align="center">
										  <th bgcolor="#D7D8C0">菜介绍</th><td colspan="2"><%=dishIntroduce %></td>
										</tr>
									 </table>
									   <br/>
									   <form action="../J_AddDishCtrl" name="addDishForm" method="post">
										   	<input type="hidden" name="dishId"  value=<%=dishId %>>
										   	<input type="hidden" name="resId"  value=<%=resId %>>
										   	<input type="hidden" name="dishName"  value=<%=dishName %>>
										   	<input type="hidden" name="resName"  value=<%=resName %>>
										   	<input type="hidden" name="dishPrice"  value=<%=dishPrice%>>
										   	<input type="hidden" name="dishIntroduce"  value=<%=dishIntroduce %>>
										   	<input type="hidden" name="dishSeries"  value=<%=dishSeries %>>
										   	<input type="hidden" name="dishStyle"  value=<%=dishStyle %>>
										   	<div class="art-postmetadatafooter" align="right">
											          购买数量 <input style="text-align: center;" type="text" name="dishCount" size="5" value="1"> 份
											    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											    <input class="art-button" type="submit" value="加入购物车" >
										    </div>
									   </form>
									   
                                       <!-- /article-content -->
                                       
                                   </div>
                                   
                                   <div class="cleared"></div>

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
