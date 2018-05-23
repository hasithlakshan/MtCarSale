<%@page import="com.im.carsale.util.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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

Connection con=DB.getCon();
String sql="SELECT * from brand";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();


%>

	<div class="row">
		<div class="col-md-3">
			<div class="well">
			<%@include file="WEB-INF/menu_bar.jsp"%>
			</div>
		</div>
		<div class="col-md-9">
			<div class="well">
				<h2>Brand LIST</h2>
				<hr/>
				ADD YOUR BRAND
				<a href="brand_add.jsp" class="btn btn-success">+</a>
				<hr/>
				<br>
				<table class="table">
					<tr>
						<th>ID</th>
						<th>NAME</th>
						<th>OPTION</th>
					</tr>
					<%
					while(rs.next()){
					%>
					<tr>
						<td> <%= rs.getInt("id")%></td>
						<td><%=rs.getString("name")%> </td>
						<td> 
							<a href="brand_edit.jsp?id=<%= rs.getInt("id")%>" class="btn btn-warning"> EDIT </a>
							<a href="brand_delete.jsp" class="btn btn-danger"> DELETE </a>
						</td>
					</tr>
					<%} %>
				</table>
			</div>
		</div>
	</div>

<%@include file="WEB-INF/footer.jsp" %>
</div>
</body>
</html>