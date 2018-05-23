<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"  errorPage="WEB-INF/error.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Car Sale</title>
<%@include file="WEB-INF/links.jsp" %>
</head>
<body>
<div class="container">
<%@include file="WEB-INF/header.jsp" %>
	<div class="row">
		<div class="col-md-3">
			<div class="well">
			<p>Are You Not a Member</p>
			<a href="register.jsp" class="btn btn-success">Register</a>
			</div>
		</div>
		<div class="col-md-9">
			<div class="well">
			<h2>Login Form</h2>
			<hr/>
			<%
			if(request.getParameter("msg")!=null){
				out.print("<div class='alert alert-danger'>invalid filds</div>");
				
			}
			
			%>
			<form action="log" method="post">
			<label>e mail</label>
			<input type="text" name="email" class="form-control"/>
			<label>password</label>
			<input type="password" name="password" class="form-control"/>
			<input type="submit" value="submit" class="btn btn-success"/>
			<input type="submit" value="reset" class="btn btn-default"/>
			</form>
			</div>
		
		</div>
	
	</div>

<%@include file="WEB-INF/footer.jsp" %>
</div>

</body>
</html>