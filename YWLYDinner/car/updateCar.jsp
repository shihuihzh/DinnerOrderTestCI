<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.user.info_manager.bean.InfoBean"%>
<%@ page import="com.user.car_manager.dao.*,com.user.car_manager.bean.*" %>

<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>订餐系统</title>

    <link rel="stylesheet" href="../css/style.css" type="text/css" media="screen" />
    <script charset="gbk" type="text/javascript" src="../js/script.js"></script>
    <script type="text/javascript">
	    function loadimage(){ 
	    	document.getElementById("img-code").src = "./common/img.jsp?" + Math.random(); 
	    }
	    function sumPrice(price){
		    newCount = document.updateCountForm.newCount.value;
			document.updateCountForm.sum.value = newCount * price;
	    }
	    function checkCount(){
	    	count = document.updateCountForm.newCount.value;
	    	if(count == 0){
				alert("数量不能为0！");return false;
		    }
		    return true;
	    }
    </script>
    
</head>

	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		InfoBean user = (InfoBean)session.getAttribute("infoBean");

		int dishId = Integer.parseInt(request.getParameter("dishId"));
		CarDao carDao = (CarDao)request.getSession().getAttribute("carDao");
		List<CarBean> cars = null;
		if (carDao != null) {
			cars = carDao.getCars();
		}
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
                                             <a onclick="javascript:loadimage();"><img class="art-article" title="点击换一张图片" id="img-code" src="../common/img.jsp"></a>
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
                                                        <img class="art-metadata-icon" src="../images/postauthoricon.png" width="14" height="14" alt="用户" />
                                                        <label for="edit-name">欢迎饭桶&nbsp;<%=user.getUserName()%>&nbsp;归来。</label>
                                                        <div><img class="art-article" src="../images/user_head.png" alt="我的头像" /></div>
                                                        <ul>
                                                            <li><a href="../user/user_info.jsp">查看个人信息</a></li>
                                                            <li><a href="./car.jsp">查看我的购物车</a></li>
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
                                                <span class="art-postheader">修改订菜数量</span>
                                            </h2>
                                            
                                            <div class="art-postmetadataheader"></div>
                                            
                                            <div class="art-postcontent">
                                                <!-- article-content -->
                                                
                                                  <%
												  	for(int i=0;i<cars.size();i++){
													  if(cars.get(i).getDishBean().getDishId()==dishId){
														    CarBean car = cars.get(i);
														 	int count = car.getCount();
														  	String dishName = car.getDishBean().getDishName();
														  	float dishPrice = car.getDishBean().getDishPrice();
														  	String resName = car.getDishBean().getResName();
														  	float sumPrice = dishPrice*count ;
												  %>
												<br/>
													<form action="../J_updateCarCtrl" method="post" name="updateCountForm" onsubmit="return checkCount()">
														<input type="hidden" name="dishId" value="<%=dishId %>">
														<table border="1">
															<tr align="center"><th bgcolor="FFFF99" width="30%">菜名</th><td width="70%"><%=dishName%></td></tr>
															<tr align="center"><th bgcolor="FFFF99">餐馆名</th><td><%=resName %></td></tr>
															<tr align="center"><th bgcolor="FFFF99">单价</th><td><%=dishPrice %>元/份</td></tr>
															<tr align="center"><th bgcolor="FFFF99">数量</th><td><input type="text" size="8"  name="newCount" value="<%=count %>" style="text-align:center" onchange="sumPrice(<%=dishPrice %>)">份</td></tr>
															<tr align="center"><th bgcolor="FFFF99">总价</th><td><input type="text" size="8" name="sum" value="<%=sumPrice %>" style="text-align:center" readonly="readonly">元</td></tr>
															<tr align="right" bgcolor="CCFFCC">
																<td colspan="2">
																	<input class="art-button" type="submit" value="确定修改">
																	<input class="art-button" type="button" value="返回" onclick="javascript:history.go(-1);">
																</td>
															</tr>
														</table>	  
													</form>	  
														  
												  <%
														} 
												  	}
												  %> 
                                                <br/>
                                               
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
