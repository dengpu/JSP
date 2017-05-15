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
<jsp:setProperty name="uDTO" property="userName" />
<jsp:setProperty name="uDTO" property="userEmail" />
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>みんなの日記</title>
</head>
<body>

	<%
		if (uDTO.getUserID() == null || uDTO.getUserPassword() == null ||
			uDTO.getUserName() == null || uDTO.getUserEmail() == null) {
			out.println("<script>");
			out.println("alert('入力に空白があります。')");
			out.println("history.back()");
			out.println("</script>");
		} else {

			UserDao user = new UserDao();

			int result = user.join(uDTO);

			if (result == 1) {
				session.setAttribute("ID", uDTO.getUserID());
				out.println("<script>");
				out.println("alert('登録無事成功しました。')");
				out.println("location.href = 'main.jsp'");
				out.println("</script>");

			}

			if (result == -1) {
				out.println("<script>");
				out.println("alert('すでに存在するアカウントです。')");
				out.println("history.back()");
				out.println("</script>");
			}

		}
	%>





</body>
</html>