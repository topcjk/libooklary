<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/account.css" />
</head>
<body>
<BR><BR><BR>
<div align="center">
	<h3>로그인</h3>
	<form action="login.do" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="member_id"></td>
				<td rowspan="2"><input type="submit" value="로그인"></td>
			</tr>
			
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="member_pw"></td>
			</tr>
		</table>
	</form>
	<a href="createAccountForm.do">[회원가입]</a>
	<a href="findId.do">[아이디 찾기]</a>
	<a href="findPassword.do">[비밀번호 찾기]</a>
</div>
</body>
</html>
<%@ include file="/WEB-INF/views/bottom.jsp"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/account.css" />
<style>
#formbox{width:45%;}
#title{margin-bottom:20px; margin-top: 30px; color:#9BE8D8;}
</style>
</head>
<body>
	<div align="center" id="#cover">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="login.do">
					<h2 style="text-align: center;" id="title">로그인</h2>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="member_id" maxlength="20" id="formbox"required>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="member_pw" maxlength="20" id="formbox" required>
					</div>
					<input type="submit" class="btn btn-primary form-control" value="로그인" id="formbox">
				</form>
	<a href="createAccountForm.do">[회원가입]</a>
	<a href="findId.do">[아이디 찾기]</a>
	<a href="findPassword.do">[비밀번호 찾기]</a>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
<BR><BR><BR><BR><BR><BR>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
<%@ include file="/WEB-INF/views/bottom.jsp"%>