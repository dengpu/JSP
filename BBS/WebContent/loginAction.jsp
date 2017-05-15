<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="userDAO.UserDao"%>
<%@ page import="userDTO.UserDto"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="uDAO" class="userDAO.UserDao" scope="page" />
<jsp:useBean id="uDTO" class="userDTO.UserDto" scope="page" />

<jsp:setProperty name="uDTO" property="userID" />
<jsp:setProperty name="uDTO" property="userPassword" />
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 掲示板</title>
</head>
<body>

	<%
		UserDao user = new UserDao();

		int result = user.login(uDTO.getUserID(), uDTO.getUserPassword());

		if (result == 1) {
			out.println("<script>");
			out.println("location.href = 'main.jsp'");
			out.println("</script>");

		}

		if (result == 0) {
			out.println("<script>");
			out.println("alert('Passwordが違います。')");
			out.println("history.back()");
			out.println("</script>");
		}

		if (result == -1) {
			out.println("<script>");
			out.println("alert('存在しないアカウントです。')");
			out.println("history.back()");
			out.println("</script>");
		}

		if (result == -2) {
			out.println("<script>");
			out.println("alert('DBに問題があります。管理者にお問い合わせください。')");
			out.println("history.back()");
			out.println("</script>");
		}
	%>





</body>
</html>