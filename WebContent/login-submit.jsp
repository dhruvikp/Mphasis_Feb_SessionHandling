<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if (email == null || password == null || email.equals("") || password.equals("")) {
			throw new ServletException(":: Mandatory Parameters are missing");
		} else {

			if (email.equals("dhruvik@simplilearn.com") && password.equals("admin@123")) {
				/* Cookie ck1 = new Cookie("userName", "Dhruvik");
				response.addCookie(ck1); */
	
				session.setAttribute("userName", "Dhruvik");
				out.print("<h2 style='color:green'> Successfully Logged In! </h2>");

			} else {
				throw new ServletException(":: Invalid credential");
			}

		}
	%>

</body>
</html>