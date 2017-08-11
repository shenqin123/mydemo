package jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.domain.User;

public class UserDaoImpl {
	BaseDao bs=new BaseDao();
//	private List<User> list;
	public boolean addUser(User user){
		
		ConnectionFactory.getConnection();
		String sql="insert into user(id,name,password)values(?,?,?)";
		
		
		return bs.executeUpdate(sql,user.getUid(),user.getUsername(),user.getPassword());
	}
	
	public boolean updateUser(User user){
//		BaseDao bs=new BaseDao();
		ConnectionFactory.getConnection();
		String sql="update user set password='234'where id='1'";
		
		return bs.executeUpdate(sql,user.getUid(),user.getUsername(),user.getPassword());
	}
	
	public boolean deleteUser(User user){
//		BaseDao bs=new BaseDao();
		ConnectionFactory.getConnection();
		String sql="delete from user where id='6'";
		
		return bs.executeUpdate(sql,user.getUid(),user.getUsername(),user.getPassword());
	}
	public User getUserById(int id){
		ConnectionFactory.getConnection();
		String sql="select * from user where id=?";
		
		ResultSet rs=null;
		try {
			//System.out.println(id);
			rs=bs.executeQuery(sql,id);
			while(rs.next()){
				//System.out.println(rs.getInt(1));
				User user=new User();
				user.setUid(rs.getInt(id));
				user.setUsername(rs.getString(2));
				user.setPassword(rs.getString(3));
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public List<User> queryAll(){
//		PreparedStatement ps=null;
			ResultSet rs=null;
			ConnectionFactory.getConnection();
			List<User> list=new ArrayList<>();
			String sql="select * from user";
			try {
			rs = bs.executeQuery(sql);
			while(rs.next()){
				User user=new User();
				user.setUid(rs.getInt("id"));
				user.setUsername(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				list.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
}
