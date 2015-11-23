<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.user.info_manager.bean.InfoBean"%>

<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>订餐系统</title>

    <link rel="stylesheet" href="./css/style.css" type="text/css" media="screen" />
    <script charset="gbk" type="text/javascript" src="./js/script.js"></script>
    <script type="text/javascript">
	    function loadimage(){ 
	    	document.getElementById("img-code").src = "./common/img.jsp?" + Math.random(); 
	    }
	    function cls(){
			var dish_name = document.getElementById("dish_name").value;
			var res_name = document.getElementById("res_name").value;
			if(dish_name == "请输入菜名"){
				document.queryDishForm.dish_name.value = "";
			}
			if(res_name == "请输入餐馆名"){
				document.queryResForm.res_name.value = "";
			}
		}
		function validate(thisForm){
			var userName = thisForm.userName.value;
			var userPassword = thisForm.userPassword.value;
			var code = thisForm.code.value;
			if( userName.length == 0 || /^\s+$/.test(userName)){
				alert("用户名不能为空！");return false;
			}
			if( userPassword.length == 0 || /^\s+$/.test(userPassword) ){
				alert("密码不能为空！");return false;
			}
			if( code.length == 0 || /^\s+$/.test(code) ){
				alert("您还未输入验证码！");return false;
			}
			return true;
		}
		function thisDishStyle(this_style){
			switch(this_style){
			case 1:
				document.queryDishStyleForm.dish_series.value ='粤菜';break;
			case 2:
				document.queryDishStyleForm.dish_series.value ='川菜';break;
			case 3:
				document.queryDishStyleForm.dish_series.value ='湘菜';break;
			case 4:
				document.queryDishStyleForm.dish_series.value ='徽菜';break;
			case 5:
				document.queryDishStyleForm.dish_series.value ='鲁菜';break;
			case 6:
				document.queryDishStyleForm.dish_series.value ='闽菜';break;
			case 7:
				document.queryDishStyleForm.dish_series.value ='浙菜';break;
			case 8:
				document.queryDishStyleForm.dish_series.value ='苏菜';break;
			}
			queryDishStyleForm.submit();
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
                			<a href="index.jsp" class="active"><span class="l"></span><span class="r"></span><span class="t">首页</span></a>
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
                			<a href="about.jsp"><span class="l"></span><span class="r"></span><span class="t">关于我们</span></a>
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
                                                          
                                           <form action="./J_User_LoginCtrl" method="post" id="user-login-form" onsubmit="return validate(this)">
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
	                                             <a onclick="javascript:loadimage();"><img class="art-article" title="点击换一张图片" id="img-code" src="./common/img.jsp" style="cursor: pointer"></a>
                                               </div>
                                               
                                               <span class="art-button-wrapper">
                                               	<span class="l"></span>
                                               	<span class="r"></span>
                                               	<input class="art-button" type="submit" name="login" value="登录" />
                                               </span>
                                               
                                               <div class="cleared"></div>
                                               <div><ul><li><a href="./user/regist.jsp" title="注册新用户账号">注册新用户账号</a></li></ul></div>
                                               </div>
                                               
                                               <div style="color: red"><%= "invalidcode".equals(message)?  "验证码错误！":"" %></div>
                                               <div style="color: red"><%= "loginError".equals(message)?  "用户名/密码错误！":"" %></div>
                                               <div style="color: blue"><%= "regist_success".equals(message)?  "注册成功，请登录！":"" %></div>
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
                                                        <img class="art-metadata-icon" src="./images/postauthoricon.png" width="14" height="14" alt="用户" />
                                                        <label for="edit-name">欢迎饭桶&nbsp;<%=user.getUserName()%>&nbsp;归来。</label>
                                                        <div><img class="art-article" src="./images/user_head.png" alt="我的头像" /></div>
                                                        <ul>
                                                            <li><a href="./user/user_info.jsp">查看个人信息</a></li>
                                                            <li><a href="./car/car.jsp">查看我的购物车</a></li>
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
                            
                            
                            <div class="art-block">
                                <div class="art-block-body">
                                            <div class="art-blockheader">
                                                <div class="l"></div>
                                                <div class="r"></div>
                                                 <div class="t">热诚为您服务</div>
                                            </div>
                                            <div class="art-blockcontent">
                                                <div class="art-blockcontent-body">
                                            <!-- block-content -->
                                            
                                            <img src="./images/qq.png" alt="QQ图片">
                                                            
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
                                                <span class="art-postheader">订餐系统介绍</span>
                                            </h2>
                                            
                                            <div class="art-postmetadataheader">
                                                
                                            </div>
                                            
                                            <div class="art-postcontent">
                                                <!-- article-content -->
                                                
                                                        
                                                        <img class="art-article" src="images/bread.png" alt="an image" style="float:left;border:0;margin: 1em 1em 0 0;" />
                                                    			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    				爱饭网（ www.aifan.com）作为国内一家领先的订餐、订外卖网上交易平台，致力于联合有</p>
						                                        <p>快餐经营资质、有较强生产和配送能力的餐饮企业 ，打造一批具有＂品牌、品质、品味＂的优质</p>
                                                    			<p>快餐外卖店，为都市白领提供多元化的健康、美味的快餐食品及良好的服务体验。</p>
                                    						    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    						    	爱饭网一直致力于城市消费体验的沟通和聚合。</p>
                                    						    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    						    	在这里，每个人都可以自由发表对商家的评论；在这里，每个人都可以向大家分享自己的</p>
                                    						    <p>消费心得，同时分享大家集体的智慧。</p>
                                                  
                                                <!-- /article-content -->
                                            </div>
                                            <div class="cleared"></div>
                                            
                                            <div class="art-postmetadatafooter">
                                                
                                            </div>
                            </div>
                            
                            		<div class="cleared"></div>
                                </div>
                            </div>
                            
                            <div class="art-post">
                                <div class="art-post-body">
                            <div class="art-post-inner">
                                            <h2 class="art-postheader">
                                                <span class="art-postheader">菜系</span>
                                            </h2>
                                            <div class="art-postmetadataheader">
                                               
                                            </div>
                                            <div class="art-postcontent">
                                                <!-- article-content -->
                                                
                                                <form action="./menuQueryCtrlLi" method="post" name="queryDishStyleForm" >
													<input type="hidden" name="res_id" value="0">
													<input type="hidden" name="dish_name" value="">
													<input type="hidden" name="dish_style" value="">
													<input type="hidden" name="dish_series" value="">
												</form>
                                                <div align="center">
	                                                <img width="75" height="75" alt="菜式1" title="粤菜" src="./images/dish_series_yue.bmp" onclick="thisDishStyle(1)" style="cursor: pointer"/>
	                                                <img width="75" height="75" alt="菜式2" title="川菜" src="./images/dish_series_chuan.bmp" onclick="thisDishStyle(2)" style="cursor: pointer"/>
	                                                <img width="75" height="75" alt="菜式3" title="湘菜" src="./images/dish_series_xiang.bmp" onclick="thisDishStyle(3)" style="cursor: pointer"/>
	                                                <img width="75" height="75" alt="菜式4" title="徽菜" src="./images/dish_series_hui.bmp" onclick="thisDishStyle(4)" style="cursor: pointer"/>
	                                                <img width="75" height="75" alt="菜式5" title="鲁菜" src="./images/dish_series_lu.bmp" onclick="thisDishStyle(5)" style="cursor: pointer"/>
	                                                <img width="75" height="75" alt="菜式5" title="闽菜" src="./images/dish_series_min.bmp" onclick="thisDishStyle(6)" style="cursor: pointer"/>
	                                                <img width="75" height="75" alt="菜式5" title="浙菜" src="./images/dish_series_ze.bmp" onclick="thisDishStyle(7)" style="cursor: pointer"/>
	                                                <img width="75" height="75" alt="菜式5" title="苏菜" src="./images/dish_series_su.bmp" onclick="thisDishStyle(8)" style="cursor: pointer"/>
                                                </div>    
                                                <!-- /article-content -->
                                            </div>
                                            <div class="cleared"></div>
                                            
                                            <div class="art-postmetadatafooter">
                                                
                                            </div>
                            </div>
                            
                            		<div class="cleared"></div>
                                </div>
                            </div>
                            
                            <div class="art-post">
                                <div class="art-post-body">
                            <div class="art-post-inner">
                                            <h2 class="art-postheader">
                                           		<img class="art-metadata-icon" src="./images/postcategoryicon.png" width="18" height="18" alt="" />
                                                <span class="art-postheader">搜索菜式</span>
                                            </h2>
                                            <div class="art-postmetadataheader">
                                                
                                            </div>
                                            <div class="art-postcontent">
                                                <!-- article-content -->
                                                
                                                <form action="./menuQueryCtrlLi" method="post" name="queryDishForm">
                                                		<input type="text" class="textbox" style="color:#999" name="dish_name" id="dish_name" title="请输入菜名" value="请输入菜名"
                                                		onfocus="this.style.color='#000'; if(this.value=='请输入菜名') { this.value='' }" 
                                                		onblur="if(this.value=='') { this.value='请输入菜名';this.style.color='#999' }" 
                                                		/>&nbsp;&nbsp;&nbsp;
                                                		<select name="res_id" title="请选择餐馆">
                                                			<option value="0" selected>--请选择餐馆--</option>
                                                			<option value="2">东北菜</option>
                                                			<option value="4">广州酒家</option>
                                                			<option value="15">龙记饭店</option>
                                                			<option value="18">绿洲大酒店</option>
                                                			<option value="19">花园酒店</option>
                                                			<option value="20">丽斯卡尔顿</option>
                                                			<option value="22">伴溪酒家</option>
                                                			<option value="23">北园酒家</option>
                                                			<option value="24">炳胜</option>
                                                			<option value="25">常来饭店</option>
                                                			<option value="26">粗茶淡饭</option>
                                                			<option value="27">稻香酒家</option>
                                                			<option value="28">东江海鲜酒家</option>
                                                			<option value="29">空中一号</option>
                                                			<option value="30">礼华饭店</option>
                                                			<option value="31">利苑酒家</option>
                                                			<option value="32">南园酒家</option>
                                                			<option value="33">唐苑酒家</option>
                                                			<option value="34">向群酒家</option>
                                                			<option value="35">新泰乐</option>
                                                			<option value="36">幸运楼</option>
                                                			<option value="37">渔民新村</option>
                                                		</select>
                                                		&nbsp;&nbsp;&nbsp;
                                                		<select name="dish_style" title="请选择类型">
                                                			<option value="" selected>--请选择类型--</option>
                                                			<option value="小炒">小炒</option>
                                                			<option value="小吃">小吃</option>
                                                			<option value="宵夜">宵夜</option>
                                                			<option value="正餐">正餐</option>
                                                			<option value="煲仔">煲仔</option>
                                                			<option value="汤">汤</option>
                                                		</select>
                                                		&nbsp;&nbsp;&nbsp;
                                                		<input class="art-button" type="submit" value="搜索" onclick="cls()"/>
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
                            
                            
                             <div class="art-post">
                                <div class="art-post-body">
                            <div class="art-post-inner">
                                            <h2 class="art-postheader">
                                            	<img class="art-metadata-icon" src="./images/postcategoryicon.png" width="18" height="18" alt="" />
                                                <span class="art-postheader">搜索餐馆</span>
                                            </h2>
                                            <div class="art-postmetadataheader">
                                                
                                            </div>
                                            <div class="art-postcontent">
                                                <!-- article-content -->
                                                
                                              	<form action="./J_ResQueryBySelectCtrl" method="post" name="queryResForm">
                                                    
                                                    	<input type="text" name="res_Name" style="color:#999" value="请输入餐馆名" id="res_name"
                                                		onfocus="this.style.color='#000'; if(this.value=='请输入餐馆名') { this.value='' }" 
                                                		onblur="if(this.value=='') { this.value='请输入餐馆名';this.style.color='#999' }" >&nbsp;&nbsp;
                                                    	
                                                    		<select size="1" name="res_district">
                                                    		     <option value="">--请选择所在地区--</option>
                                                    		     <option value="天河区">天河区</option>
                                                    		 	 <option value="海珠区">海珠区</option>
                                                    		 	 <option value="荔湾区">荔湾区</option>
                                                    		 	 <option value="番禺区">番禺区</option>
                                                    		     <option value="越秀区">越秀区</option>
                                                    		     <option value="黄浦区">黄浦区</option>
                                                    		     <option value="白云区">白云区</option>
                                                    		     <option value="从化区">从化区</option>
                                                    		     <option value="南沙区">南沙区</option>
                                                    		 </select>&nbsp;&nbsp;
                                                    	<input class="art-button" type="submit" value="搜索" onclick="cls()">
                                                     
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
                            
                            
                            <div class="art-post">
                                <div class="art-post-body">
                            <div class="art-post-inner">
                                            <div class="art-postmetadataheader">
                                                <div class="art-postheadericons art-metadata-icons">
                                                    
                                                </div>
                                            </div>
                                            <div class="art-postcontent">
                                                <!-- article-content -->
                                                
                                                <marquee behavior="scroll" direction="right" 
                                                	onmouseover="this.stop()" onmouseout="this.start()">
	                                                <img alt="菜式1" src="./images/dish1.bmp" height="120" width="120"/>
	                                                <img alt="菜式2" src="./images/dish2.bmp" height="120" width="120"/>
	                                                <img alt="菜式3" src="./images/dish3.bmp" height="120" width="120"/>
	                                                <img alt="菜式4" src="./images/dish4.bmp" height="120" width="120"/>
	                                                <img alt="菜式5" src="./images/dish5.bmp" height="120" width="120"/>
												</marquee>
												
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
                
                <div class="cleared"></div>
                <div class="art-footer">
                    <div class="art-footer-inner">
                        <div class="art-footer-text">
                            <p><a href="#">联系我们</a>&nbsp;|&nbsp;<a href="operator/index.jsp">后台登陆</a>&nbsp;|&nbsp;<a href="resinfo/login.jsp">餐馆登陆</a></p>
                        </div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="art-footer-text">
                            <p>Copyright &copy; 2010&nbsp;---.&nbsp;All Rights Reserved.</p>
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
