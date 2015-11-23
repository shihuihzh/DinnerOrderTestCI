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
	    function getCurrentRes(res_id){
			document.resForm.res_id.value = res_id;
			resForm.submit();
	    } 
    </script>
    
</head>

	<%
		InfoBean user = (InfoBean)session.getAttribute("infoBean");
  		ResultSet res_rs = (ResultSet)session.getAttribute("res_rs");
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
                                       <span class="art-postheader">搜索结果</span>
                                   </h2>
                                   
                                   <div class="art-postmetadataheader">
                                   
                                      <div class="art-metadata-icons">
                                      
                                      <img alt="标签" src="../images/posttagicon.png"/>&nbsp;&nbsp;&nbsp;
                                      
                                      <%
									  	if(res_rs.next()){
									  		
									  		res_rs.last();
										  	int rowCount = res_rs.getRow();
										  	
										  	String pageIndex = request.getParameter("pageIndex");
										  	int curPage;
										  	
										  	if(pageIndex == null || pageIndex.length() == 0){
										  		curPage = 1;
										  	} else {
										  		curPage = Integer.parseInt(pageIndex);
										  	}
										  	
										  	// 设置每页显示的行数
										  	int countPerPage = 8;
										 	
										  	int pageCount = (rowCount + countPerPage - 1)/countPerPage;
										  	
										  	res_rs.absolute((curPage - 1)*countPerPage+1);
										  	
										  	if(curPage == 1){
									  %>
										  		第一页&nbsp;&nbsp;&nbsp;&nbsp;
										  		上一页&nbsp;&nbsp;&nbsp;&nbsp;
									  <%
									  		} else {
									  %>
										  		<a href="restaurants.jsp?pageIndex=<%=1 %>">第一页</a>
										  		&nbsp;&nbsp;&nbsp;&nbsp;
										  		<a href="restaurants.jsp?pageIndex=<%=curPage - 1 %>">上一页</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
									  <%
										  	}  
										  	if(curPage == pageCount){
									  %>
												下一页&nbsp;&nbsp;&nbsp;&nbsp;
										  		最后页&nbsp;&nbsp;&nbsp;&nbsp;
									  <%
									  		} else {
									  %>
										  		<a href="restaurants.jsp?pageIndex=<%=curPage + 1 %>">下一页</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="restaurants.jsp?pageIndex=<%=pageCount %>">最后页</a>
										  		&nbsp;&nbsp;&nbsp;&nbsp;
									  <%
									  		}
									  %>
									    
                                      </div>
                                    </div>
                                    <!-- /标题信息 -->
                                      <div class="art-postcontent">
                                          <!-- article-content -->
                                         
                                        <!-- 这个表单用于传递餐馆的信息 -->
									    <form action="../queryResMenuDetailLi" method="post" name="resForm">
									 		<input type = "hidden" name = "res_id"/>
									    </form>
									  
									  	<br><br>
									  	<table border="1" style="border-color: gray" align="center">
									  	<tr bgcolor="#D7D8C0">
									  		<th>序号</th>
									  		<th width="18%">餐馆名</th>
									  		<th>餐馆介绍</th>
									  		<th>餐馆地址</th>
									  		<th>餐馆电话</th>
									  	</tr>
									  		<%
									  			int j = (curPage - 1)*countPerPage+1;
									  			int i = 0;
									  			while(i < countPerPage && !res_rs.isAfterLast()){
									  		%>
											<tr>
									  			<td align="center"><%=j %></td>
									  			<td align="center"><a href="#" onclick="getCurrentRes(<%=res_rs.getInt("res_id")%>)"><%=res_rs.getString("res_name") %></a></td>
									  			<td><%=res_rs.getString("res_introduce") %></td>
									  			<td align="center"><%=res_rs.getString("res_address") %></td>
									  			<td><%=res_rs.getString("res_phone") %></td>
									  		</tr>
									  		<%
									  				i++;
									  				j++;
									  				res_rs.next();
									  			}
									  		%>
									  	</table>
									  	<br><br>
									  	
									  	<%-- 在这里使游标滚回去，使页面的刷新不会错误 --%>
									  	<% res_rs.first(); %>
                                         
                                          <!-- /article-content -->
                                      </div>
                                      <div class="cleared"></div>
                                      
                                      <div class="art-postmetadatafooter" align="right">
                                      
                                    	 检索出<%=rowCount %>条记录。当前为第<%=curPage %>页，共有<%=pageCount %>页。
                                      
                                      </div>
                                      
                                      <%
                                       	} else {
                                      %>
                                      
											<%="您查询的餐馆不存在！"%>
									  		<a href="../index.jsp">返回继续查询</a>
										
                                      <%
                                       	}
                                      %>
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
