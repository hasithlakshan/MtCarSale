<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="WEB_INF/error.jsp"%>
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
<%
/*if(id==null){
	response.sendRedirect("login.jsp");
	
}else{
	String role=(String)session.getAttribute("Role");
	if(!role.equals("a")){
		response.sendRedirect("login.jsp");
		
	}
}
*/
%>
	<div class="row">
		<div class="col-md-3">
			<div class="well">
			<%@include file="WEB-INF/menu_bar.jsp"%>
			</div>
		</div>
		<div class="col-md-9">
			<div class="well">
				<h2>Brand Add</h2>
				<br/>
				<%
				if(request.getParameter("msg")!=null)
					out.print("<div class='alert alert-danger'>Invali Input</div>");
				
				%>
				<form action="brand_add" method="post">
				<label>Name</label>
				<input type="text" name="name" class="form-control">
				<input type="submit" value=save class="btn btn-success" >
				<input type="submit" value="Reaset" class="btn btn-warning">
				</form>
			</div>
		</div>
	</div>

<%@include file="WEB-INF/footer.jsp" %>
</div>
</body>
</html>