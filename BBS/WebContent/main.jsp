<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>みんなの日記</title>
</head>
<body>
	<%
		String ID = null;
		if (session.getAttribute("ID") != null) {
			ID = (String) session.getAttribute("ID");
		}
	%>


	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type=button class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>

			</button>
			<a class="navbar-brand" href="main.jsp">みんなの日記</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav ">
				<li class="active"><a href="main.jsp">メイン</a></li>
				<li><a href="bbs.jsp">掲示板</a></li>
			</ul>


			<%
				if (ID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">アクセス <span class="caret"></span></a>


					<ul class="dropdown-menu">
						<li><a href="login.jsp">ログイン</a></li>
						<li><a href="join.jsp">会員登録</a></li>

					</ul></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">アクセス <span class="caret"></span></a>


					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">ログアウト</a></li>

					</ul></li>
			</ul>
			<%
				}
			%>

		</div>
	</nav>
	
	<div align=center>
		<img src="img/USEN.png" style="width: 320px; height: auto;">
	
	<h2>みんなで作る物語</h2>
	<h2>みんなの日記にようこそ！</h2>
	<h2>誰でも自由に書き込みが可能です！</h2>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>