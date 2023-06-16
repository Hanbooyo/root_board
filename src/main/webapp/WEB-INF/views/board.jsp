<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<c:set var="result" value="${param.result}" />
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창</title>
<style type="text/css">
.sel_page {
	color: red;
}

a {
	text-decoration: none;
	color: black;
}
</style>

</head>
<body>
	<header>
		<table width="100%">
			<tr>
				<td>
					<h1 align="center">
						<a href="${contextPath}/main.do"> H O M E </a>
					</h1>
				</td>
				<td>
					<h1 align="center">로그인 게시판 TEST</h1>
				</td>
				<td align="center">

					<form action="${contextPath}/login.do" method="post">
						<h3 align="center">
							로그인 창
							</h2>
							<table align="center">
								<tr>
									<td width="200"><p align="right">아이디</p></td>
									<td width="400"><input type="text" name="id"></td>
								</tr>
								<tr>
									<td width="200"><p align="right">비밀번호</p></td>
									<td width="400"><input type="text" name="pwd"></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><input type="submit"
										value="로그인"> <input type="reset" value="다시입력">
									</td>
								</tr>
							</table>
					</form>
				</td>
			</tr>
		</table>
	</header>
	<div align="center">
		<h1>게시판 목록</h1>
		<table border="1">
			<colgroup>
				<col width="50">
				<col width="100">
				<col width="300">
				<col width="100">
				<col width="50">
			</colgroup>
			<tr>
				<th>글번호</th>
				<th>작성자</th>
				<th>제 목</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<c:forEach items="${list}" var="board">
				<tr>
					<th>${board.no}</th>
					<th>${board.id}</th>
					<th><a href="${contextPath}/view.do?no=${board.no}">${board.title}</a></th>
					<th>${board.wdate}</th>
					<th>${board.views}</th>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4" align="right"></td>
			</tr>
		</table>
	</div>
</body>
</html>