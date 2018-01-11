package com.balpoom.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtil {

	public static Connection getConnection() {
		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "spring", "spring");
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://104.199.197.101:3306/balpoomdb?useUnicode=true&characterEncoding=utf8", 
					"balpoom", "balpoom");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void close(PreparedStatement stmt, Connection conn) {
		if (stmt != null) {
			try {
				if (!stmt.isClosed())
					stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if (conn != null) {
			try {
				if (!conn.isClosed()) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public static void close(ResultSet rs,  PreparedStatement stmt, Connection conn) {

		if (rs != null) {
				try {
					if (!rs.isClosed())
						rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		
		if (stmt != null) {
			try {
				if (!stmt.isClosed())
					stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if (conn != null) {
			try {
				if (!conn.isClosed()) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
