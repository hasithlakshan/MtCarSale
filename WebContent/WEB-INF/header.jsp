<div class = "jumbotron" style="background-image: url('images/header.jpg'); background-size: 100% ;">
	<h1> Car Sale </h1>
	<p> Find Your Dream BIKE</p>
	<hr/>
	<%
		Object id = session.getAttribute("ID");
	if(id == null){
	%>
	<a href="login.jsp" class="btn btn-success"> Login </a>
	<a href="register.jsp" class="btn btn-warning"> Register </a>
	<%
	}else{
		
	%>
	<p>welcome <%=session.getAttribute("NAME") %></p>
		<a href = "logout" class = "btn btn-success">Logout</a>
	
	<%
	String role=(String)session.getAttribute("ROLE");
	if(role.equals("a")){
		out.print("<a href='dashboard.jsp' class='btn btn-warning'> Dash Boadr</a>");
		
	}else{
		out.print("<a href='car_add.jsp' class='btn btn-warning'>Post Your Car</a>");
		
		out.print("<a href='car_list.jsp' class='btn btn-warning'>My Car</a>");
		}
	}
	%>
	<hr/>
</div>