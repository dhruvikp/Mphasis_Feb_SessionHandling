<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		/* Cookie ck = new Cookie("userName", "");

		ck.setMaxAge(0);
		
		response.addCookie(ck); */
		
		session.invalidate();
		
		response.sendRedirect("index.jsp");
	%>

</body>
</html>