package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	private final static String URL="jdbc:mysql://localhost:3306/schoolbbs?useUnicode=true&amp;characterEncoding=UTF-8";
	private final static String USERNAME="root";
	private final static String PASSWORD="123456";
	public static Connection getConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(URL, USERNAME, PASSWORD);
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} 
	}
}
