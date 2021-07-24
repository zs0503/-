<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="dao.*,entity.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>listUsers</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<style type="text/css">
		           .page a{
		            text-decoration: none;/* 去掉超链接中的下划线 */
		            
		           }
		</style>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<!-- 引入Header.jsp 
				指令include：代码片段
				file:指定要的文件名
				容器在将jsp转换为servlet时，会将file属性执行的文件内容插入到该指令的位置
				-->
				<%@ include file="Header.jsp" %>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						Welcome!
					</h1>
					<table class="table">
						<tr class="table_header">
							<td>
								ID
							</td>
							<td>
								用户名
							</td>
							<td>
								电话
							</td>
							<td>
								邮箱
							</td>
							<td>
								操作
							</td>
						</tr>
						<!-- 动态显示数据 -->
						<%-- <%
						//获取绑定request绑定值
						List<User> list=(List<User>)request.getAttribute("list");
						
						for(int i=0;i<list.size();++){
							User user=list.get(i);
						
					  %> --%>
					  <c:forEach items="${map.list}" var="s" varStatus="t">
							<tr class="row${t.index%2+1}">
							    <td>${s.id}</td>
							    <td>${s.userName}</td>
							    <td>${s.userPhone}</td>
							    <td>${s.userEmail}</td>
							    <td><a onclick="return  confirm( '确定要删除${s.userName}吗')" href="toDelete.do?id=${s.id}">删除</a>
							    <a href="updateById.do?id=${s.id}">修改</a>
							    </td>
							</tr>
							
				</c:forEach>
							
						
						
						<!-- <tr class="row1">
							<td>
								1
							</td>
							<td>
								zhangshan
							</td>
							<td>
								111
							</td>
							<td>
								eric@126.com
							</td>
							<td>
								<a href="listUsers.html">delete</a>&nbsp;
							</td>
						</tr>
						<tr class="row2">
							<td>
								2
							</td>
							<td>
								sdd
							</td>
							<td>
								111
							</td>
							<td>
								eric@126.com
							</td>
							<td>
								<a href="listUsers.html">delete</a>&nbsp;
							</td>
						</tr> -->
					</table>
					<p>
						<input type="button" class="button" value="添加用户"  onclick="location='addUser.jsp'"/>
					</p>
					<!-- 分页 -->
					
					<div class="page" align="center" style="background:white">
					     <a href="before?page=${map.page}">上一页</a>
					     
					     <!-- 遍历业务 -->
					     <c:forEach  var="s" begin="1" end="${map.pageAll}" >
					          <%--  <a>${s}</a>
					           <!--或<a>${t.count}</a>  --> --%>
					           <!-- 如果遍历的v的数值是当前页数则为红色，否则为灰色 -->
					           <c:if test="${map.page==s}">
					            <a href="now?page=${s}"  style="color:red">${s}</a>
					           </c:if>
					           <c:if test="${map.page!=s}">
					            <a  href="now?page=${s}"  style="color:#ccc">${s}</a>
					           </c:if>
					     </c:forEach>
					     
					     <a href="nextPage?page=${map.page}">下一页</a>
					     
					     总页数:${map.pageAll}
					</div>
				</div>
			</div>
		   <%@ include file="footer.jsp" %>
		</div>
	</body>
</html>
