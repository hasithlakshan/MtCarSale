package com.im.carsale.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DB {
	static Connection con=null;
	static String url="jdbc:mysql://localhost:3306/dbcarsale";
	public static Connection getCon() throws Exception {
		//System.out.println("get connection 1");
		if (con==null) {
//			System.out.println("get connection 3");
			Class.forName("com.mysql.jdbc.Driver");
			//System.out.println("get connection 3");
			con=DriverManager.getConnection(url,"root","");
		}
		System.out.println("get connection");
		return con;
		
	}
	public static ResultSet getData(String sql)throws Exception {
		Connection con=DB.getCon();
		Statement stmnt=con.createStatement();
		return stmnt.executeQuery(sql);
		
		
		
	}
	

}
