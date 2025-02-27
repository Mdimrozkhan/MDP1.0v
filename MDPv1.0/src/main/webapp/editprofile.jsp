<%@page import="dao.EditprofileDao"%>
<%@page import="beans.EditprofileBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="editp" class="beans.EditprofileBean" scope="application"></jsp:useBean>
<jsp:useBean id="editprodao" class="dao.EditprofileDao"></jsp:useBean>

<jsp:setProperty property="*" name="editp"/>
<%
//String name=request.getParameter("email");
//String pass=request.getParameter("newwpass");


String msg1=editprodao.editprofile(editp); 
if(msg1.equals("success"))
{
	session.setAttribute("editval",editp);

	out.println("profile updated");
	%>	
	
	<jsp:include page="login.html"></jsp:include>
	
	<%
}
else
{
%>	
<jsp:include page="editprofile.html"></jsp:include>
<script type="text/javascript">
alert("something is worng");
</script>
<%
}
%>
</body>
</html>