<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.im.carsale.util.DB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="WEB-INF/error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My car sale</title>
<%@include file="WEB-INF/links.jsp" %>
</head>
<body>
<div class="container">
<%@include file="WEB-INF/header.jsp" %>
<%
Connection con=DB.getCon();
String sql="SELECT * FROM car";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();

%>
<div class="row">
	<div class="col-md-3">
		<div class="well">
			<form action="">
				<input type="text" name="serch"/><br/>
				<input type="submit" value="serch"/> 
			</form>
		</div>
	</div>
	<div class="col-md-9">
		<div class="well">
		<%while(rs.next()){ %>
		
			<div class="row">
				<div class="col-md-4">
				<img  src="images/default.png" class="img img-responsive img-thumbnail"/>
				</div>
				<div class="col-md-8">
				<h2><%=rs.getString("title") %></h2>
				<p><%=rs.getString("description") %></p>
				<br/>
				<span class="lable lable-success"><%=rs.getString("price") %></span>
				<a href="car_view.jsp?id=1" class="btn btn-warning">view</a>
				</div>			
			</div>
		
		<%} %>
		
		</div>
	</div>

</div>
<%@include file="WEB-INF/footer.jsp" %>
</div>
</body>
</html>