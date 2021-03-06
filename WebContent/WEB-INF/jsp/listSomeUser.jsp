<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header" style="text-align:center">
				<h1>
					User list
				</h1>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-bordered table-hover">
				<thead>
					<tr class="warning">
						<th>id</th>
						<th>name</th>
						<th>password</th>
						<th width="50">课程<th>
						<th width="50">编辑</th>
						<th width="50">删除</th>
					</tr>
				</thead>
				<c:forEach items="${users}" var="user" varStatus="st">
					<tr class="success">
						<td>${user.id}</td>
						<td>${user.name}</td>
						<td>${user.password}</td>
						<td><a href="listSomeCourse?id=${user.id}" width="50">课程</a></td>
						<td><a herf="editUser?id=${user.id}" width="50">编辑</a></td>
						<td><a herf="deleteUser?id=${user.id}" width="50">删除</a></td>
					</tr>
				</c:forEach>
			</table>
			<div style="text-align: center">
				<a href="?start=0">首 页</a> <a
					href="?start=${page.start-page.count}">上一页</a> <a
					href="?start=${page.start+page.count}">下一页</a> <a
					href="?start=${page.last}">末 页</a>
			</div>
		</div>
	</div>
	
	<div style="text-align:center;margin-top:40px">
		
		<form method="post" action="addUser">
			用户名称： <input name="name" value="" type="text"> <br><br>
			<input type="submit" value="添加用户">
		</form>

	</div>	
	
</div>