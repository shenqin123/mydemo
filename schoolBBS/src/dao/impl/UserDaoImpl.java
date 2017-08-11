package dao.impl;
/*
 * �û����ݲ���������װ�ӿ�
 */
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import dao.BaseDao;
import dao.UserDao;
import domain.Courses;
import domain.User;

public class UserDaoImpl extends BaseDao implements UserDao {
	
	//��ȡĳ���û�����Ϣ
	@Override
	public User getUser(String loginname, String password) {
		String sql="select * from user_info where usernumber=? and userpassword=? ";
		User user=null;
		ResultSet rs=this.executeQuery(sql,loginname,password);
		try {
			while(rs.next()){
				user=new User();
				//System.out.println("��ֵ");
				user.setId(rs.getInt("id"));
				user.setUsernumber(rs.getString("usernumber"));
				user.setUsername(rs.getString("username"));
				user.setUserpassword(rs.getString("userpassword"));
				user.setUser_root(rs.getInt("user_root"));
				user.setCourse_count(rs.getInt("course_count"));
				user.setLogin_status(rs.getInt("login_status"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	//�����û�
	@Override
	public boolean addUser(User user) {
		String sql="insert into user_info(usernumber,username,userpassword" +
				",user_root,course_count,login_status) values (?,?,?,?,?,?)";
		return this.executeUpdate(sql, user.getUsernumber(),user.getUsername(),user.getUserpassword(),
				user.getUser_root(),user.getCourse_count(),user.getLogin_status());
	}
	//��ɾ�� ��executeupdate  
	//��ѯ�Ļ� ����executeQuery 
	@Override
	public boolean deleteUser(int usernumber) {
	    String sql="delete from user_info  where usernumber=?";
	    return this.executeUpdate(sql, usernumber);
	}
	//�����û���Ϣ
	@Override
	public boolean updateUser(User user) {
		String sql="update user_info set course_count=?,login_status=? where id=?";
		return this.executeUpdate(sql, user.getCourse_count()+1,user.getLogin_status(),user.getId());
	}
	//�����û�
	@Override
	public boolean queryByNumber(int id) {
		String sql="select * from user_info where usernumber=? and userpassword=? ";
		User user=null;
		ResultSet rs=this.executeQuery(sql,id);
		try {
			while(rs.next()){
			return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	//��ȡnum�� ����ȥ�μӽ���
	@Override
	public List<User> chouQu(int num) {
		String sql = "select * from user_info order by course_count asc limit ?";
		
		ResultSet rs = null;
		rs = this.executeQuery(sql, num);
		List<User> list = new ArrayList<User>();
		try {
			while (rs.next()) {
				User u = new User();
				u.setId(rs.getInt("id"));
				u.setUsername(rs.getString("username"));
				u.setUsernumber(rs.getString("usernumber"));
				u.setUserpassword(rs.getString("userpassword"));
				u.setCourse_count(rs.getInt("course_count"));
				u.setLogin_status(rs.getInt("login_status"));
				u.setUser_root(rs.getInt("user_root"));
				list.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<User> showAllUser() {
  String sql = "select * from user_info order by course_count desc";
		
		ResultSet rs = null;
		rs = this.executeQuery(sql);
		List<User> list = new ArrayList<User>();
		try {
			while (rs.next()) {
				User u = new User();
				u.setId(rs.getInt("id"));
				u.setUsername(rs.getString("username"));
				u.setUsernumber(rs.getString("usernumber"));
				u.setUserpassword(rs.getString("userpassword"));
				u.setCourse_count(rs.getInt("course_count"));
				u.setLogin_status(rs.getInt("login_status"));
				u.setUser_root(rs.getInt("user_root"));
				list.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
