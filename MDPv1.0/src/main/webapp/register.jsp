<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="regist" class="beans.RegisterBean" scope="application"></jsp:useBean>
<jsp:useBean id="registdao" class="dao.RegisterDao"></jsp:useBean>

<jsp:setProperty property="*" name="regist"/>

		<%
		System.out.println(regist);
			String msg=registdao.save(regist); 
			if(msg.equals("success"))
			{
				session.setAttribute("registerval",regist);
		%>
			<jsp:forward page="home.jsp"></jsp:forward>
		<%
			}
			else{
		%>
			<jsp:include page="registration.html"></jsp:include>
		<%
			out.println("error");
			}
		%>

</body>
</html>