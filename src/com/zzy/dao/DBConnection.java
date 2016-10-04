package com.zzy.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
	private static final String dbName = "bookdb";
	private static final String user = "SE";
	private static final String password = "999";
	private static final String url  = "jdbc:mysql://localhost:3306/" + dbName;
	private static Statement stmt = null;
	private static Connection con = null;
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
			stmt = con.createStatement();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		return con;
	}
	
	public ResultSet select(String sql) {
		ResultSet rs = null;
		try {
			 rs = stmt.executeQuery(sql);
		} catch (Exception e) {}
		return rs;
	}
	
	public boolean execSql(String sql) {
		try {
			return stmt.execute(sql);
		} catch (SQLException e) {
			return false;
		}
	}
	
	public int executeQuery(String sql) {
		try {
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			return -1;
		}
	}
	
	public boolean close() {
		try {
			con.close();
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
