<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ page import="com.user.info_manager.bean.InfoBean"%>
<%@ page import="com.user.car_manager.dao.CarDao"%>
<%@ page import="com.user.car_manager.bean.*" %>

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
	    function update(dishId){
			updateCarForm.dishId.value=dishId;
			updateCarForm.submit();
		}
		function deleteCar(dishId){
			deleteCarForm.dishId.value=dishId;
			deleteCarForm.submit();
		}
		function commitOrder(condiction){
			if(condiction){
				if(confirm("确认提交订单？（送餐时将会以当前页面的用户信息为准，请仔细核对）"))userInfoForm.submit();
				else return false;
			} else {
				alert("您当前的购物车为空！");
				return false;
			}
		}
    </script>
    
</head>

	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		InfoBean user = (InfoBean)session.getAttribute("infoBean");
		CarDao carDao = (CarDao)session.getAttribute("carDao");
		List<CarBean> cars = null;
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
                                               <div><ul><li><a href="./user/regist.jsp" title="注册新用户账号">注册新用户账号</a></li></ul></div>
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
                                       <span class="art-postheader">
										<img class="art-metadata-icon" src="../images/car.png" width="14" height="14" alt="" />
										我的购物车
                                       </span>
                                   </h2>
                                   
                                   <div class="art-postmetadataheader"></div>
                                      
                                   <div class="art-postcontent">
                                       <!-- article-content -->
                                       
									  <br/>
									   <table align="center" border="1">
										  <tr bgcolor="FFFF99">
											  <th>序号</th>
											  <th>菜名</th>
											  <th>餐馆名</th>
											  <th>单价</th>
											  <th>数量</th>
											  <th>总价</th>
											  <th>操作</th>
										  </tr>
									  <%
									  	boolean isNotEmpty = (carDao != null && carDao.TotalPrice() != 0);
										if (isNotEmpty == true) {
											cars = carDao.getCars();	
										  	for(int i=0;i<cars.size();i++){ 
											  	CarBean car = cars.get(i);
											  	int count = car.getCount();
											  	int dishId = car.getDishBean().getDishId();
											  	String dishName = car.getDishBean().getDishName();
											  	double dishPrice = car.getDishBean().getDishPrice();
											  	String resName = car.getDishBean().getResName();
											  	double sumPrice = dishPrice*count ;
									  %> 
									 <tr align="center">
									 	<td><%=i+1 %></td>
									  	<td><%=dishName %></td>
									  	<td><%=resName %></td>
									  	<td><%=dishPrice %>元</td>
									  	<td><%=count %>份</td>
									  	<td><%=sumPrice %>元</td>
									  	<td>
										  	<a href="#" onclick="update(<%=dishId %>)">修改</a>
										  	&nbsp;&nbsp;
									  		<a href="#" onclick="deleteCar(<%=dishId %>)">取消</a>
									  	</td>
									 </tr>
									   
											<%} %>
									  
									  <tr> 
										   <td colspan="7" align="right" bgcolor="CCFFCC">
										   <%
										  	 double totalPrice = carDao.TotalPrice();
										   	 if(totalPrice != 0){
										   %>
												本次订餐的总价格为：<%=totalPrice%>元
										  		
										   <%
										   	 } else {
										   %>
										   		<div align="center">当前购物车为空！</div>
										   <%
										   	 }
										   %>
										   </td>
									   </tr>
									   
									   <%
										 } else {
									   %>
									   
									   <tr>
									   	<td bgcolor="CCFFCC" colspan="7" align="center">当前购物车没有任何菜！</td>
									   </tr>
									   
									   <%
										 }
									   %>
									   
									  </table>
									  
									  <br/>
									  <div align="right">
									  	<input class="art-button" type="button" onclick="window.location='../index.jsp'" value="继续订餐">
									  	<input class="art-button" type="button" onclick="window.location='../J_CleanCarCtrl'" value="清空购物车" <%=isNotEmpty?"":"disabled=\"disabled\""%>>
									  </div>
									  
									<form action="updateCar.jsp" name="updateCarForm" method="post">
										<input type="hidden" name="dishId">
									</form>
									<form action="../J_DeleteCarCtrl" name="deleteCarForm" method="post">
										<input type="hidden" name="dishId">
									</form>
									   
								</div>
									   
									   <br/>
									   
                                       <!-- /article-content -->
                                       
                             </div>
                                   
                                   <div class="cleared"></div>
                                   
                             <%
                             	if(user != null){
                             %>

							<div class="art-postmetadatafooter" style="background-color: FFFF99;">
								&nbsp;
								<img class="art-metadata-icon" src="../images/image-a-55.png" width="14" height="14" alt="确认信息" />
								&nbsp;
								用户信息确认
							</div>
							<br>
							<div class="art-postmetadatafooter">
								   
							   	<form action="../insertOrderCtrlLi" name="userInfoForm" method="post">
							   		<table>
										<tr>
											<td align="center">用户&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
											<td><input type="text" name="user_name" value="<%=user.getUserName() %>" readonly="readonly"></td>
										</tr>
										<tr>
											<td align="center">用户电话：</td>
											<td><input type="text" name="user_phone" value="<%=user.getUserPhone() %>"></td>
										</tr>
										<tr>
											<td align="center">用户地址：</td>
											<td><input type="text" name="user_address" value="<%=user.getUserAddress() %>" size="50"></td>
										</tr>
									</table>
								</form>

                            </div>
                            
                            <br/>
                            <div align="center">
							  	<input class="art-button" type="button" onclick="return commitOrder(<%=isNotEmpty %>);" value="确认订单">
							</div>
                            
                            <%
                             	} else {
                            %>
                            
                            <div class="art-postmetadatafooter" style="background-color: FFFF99;">
								&nbsp;
								<img class="art-metadata-icon" src="../images/error_info.png" width="14" height="14" alt="确认信息"/>
								&nbsp;
								您还没有登录，请<a href="../index.jsp" style="color: red">登录</a>后再访问。
							</div>
                            
                            <%
                             	}
                            %>
                            
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
