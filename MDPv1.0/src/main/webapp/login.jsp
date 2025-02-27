<%@page import="beans.RegisterBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="regist" class="beans.RegisterBean" scope="application"></jsp:useBean>


<jsp:useBean id="logdao" class="dao.loginDao"></jsp:useBean>
<jsp:setProperty property="*" name="regist"/>

	<%

	String name=request.getParameter("mail");
	String pass=request.getParameter("pass");

	RegisterBean regbeans =logdao.login(regist);
	if(regbeans==null){
		out.println("email and password  is incorrect");
	%>
	<jsp:include page="login.html"></jsp:include>
	
			
	
	<%
	}
	else
	{
	%>	
	<jsp:include page="home.jsp"></jsp:include>
			<script type="text/javascript">
			alert("login succcess");
			</script>
	<%
	}
	%>

</body>
</html>