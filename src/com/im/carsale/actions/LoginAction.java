package com.im.carsale.actions;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.im.carsale.util.DB;


/**
 * Servlet implementation class LoginAction
 */
@WebServlet("/log")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		try {
			Connection con=DB.getCon();
			String sql="SELECT * FROM member WHERE email=? AND password=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ps.setString(2,password);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				response.sendRedirect("index.jsp");
				//session object update
				HttpSession session=request.getSession();
				session.setAttribute("ID",rs.getInt("id"));
				session.setAttribute("ROLE", rs.getString("role"));
				session.setAttribute("NAME",rs.getString("name"));
				
				
				
			}
			else {
				response.sendRedirect("login.jsp?msg=invalid");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
	}

}
