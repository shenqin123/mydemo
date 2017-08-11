package dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import dao.BaseDao;
import dao.Had_CourseDao;
import domain.Had_Course;
import domain.User;

public class Had_courseDaoImpl extends BaseDao implements Had_CourseDao{
	//增加已安排的讲座以及相关的信息
	@Override
	public boolean addCourses(Had_Course h_cour) {
		String sql="insert into user_info(usernumber,username,course_details" +
				") values (?,?,?)";
		return this.executeUpdate(sql, h_cour.getUsernumber(),h_cour.getUsername(),h_cour.getCourse_details());
	}
	//查询该用户出席过的讲座
	@Override
	public boolean queryByNumber(int usernumber) {
		String sql = "select * from had__courses where usernumber=?";
		User user = null;
		ResultSet rs = this.executeQuery(sql, usernumber);
		try {
			while (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
