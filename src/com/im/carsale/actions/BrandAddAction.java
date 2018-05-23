package com.im.carsale.actions;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.im.carsale.util.DB;
import java.sql.PreparedStatement;


@WebServlet("/brand_add")

public class BrandAddAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BrandAddAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// collect post paramiter from request
		String name=request.getParameter("name");
		//2 data validation
		if(!name.equals("")) {
			//insert data
			try {
				System.out.println("test");
				Connection con=DB.getCon();
				String sql="INSERT INTO brand(name)"+"VALUES(?)";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,name);
				ps.executeUpdate();
				response.sendRedirect("brand_list.jsp");
				
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
			
		}else {
			response.sendRedirect("brand_add.jsp?msg=invalied");
		}
	}

}
