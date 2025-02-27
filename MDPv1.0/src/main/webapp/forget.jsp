
<%@page import="dao.ForgetDao"%>
<%@page import="beans.ForgetBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="forget" class="beans.ForgetBean" scope="application"></jsp:useBean>
<jsp:useBean id="fordao" class="dao.ForgetDao"></jsp:useBean>
<jsp:setProperty property="*" name="forget"/>

<%
//String name=request.getParameter("email");
//String pass=request.getParameter("newwpass");


String msg=fordao.forgetone(forget); 
if(msg.equals("success"))
{
	session.setAttribute("forgeterval",forget);

	out.println("email  is updated");
	%>	
	
	<jsp:include page="login.html"></jsp:include>
	<script type="text/javascript">
	alert("password update success");
</script>
	<%
}
else
{
%>	
<jsp:include page="forget.html"></jsp:include>
<script type="text/javascript">
alert("e mail is not correct");
</script>
<%
}
%>

</body>
</html>