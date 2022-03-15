<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
		String userName = (String) session.getAttribute("userName");
		boolean isCookieFound = false;
		if (userName != null) {
			out.print("<h2 style='color:green; text-align:center'> Hello User " + userName + "</h2>");
			isCookieFound = true;
		}

		/* 	Cookie ck[] = request.getCookies();
			
		
		
		for(Cookie c: ck) {
			
				if(c.getName().equals("userName")) {
					out.print("<h2 style='color:green; text-align:center'> Hello User"+ c.getValue()+"</h2>");
					isCookieFound = true;
					break;
				}
		}
		
		 */
		if (!isCookieFound) {
			throw new ServletException("Invalid user access, please login first!");
		}
	%>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>