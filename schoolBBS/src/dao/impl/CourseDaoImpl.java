package dao.impl;
/*
 * 讲座数据封装接口
 */
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.BaseDao;
import dao.CoursesDao;
import domain.Courses;
import domain.Had_Course;

public class CourseDaoImpl extends BaseDao implements CoursesDao {

	@Override
	public boolean addCourses(Courses cour) {
		String sql = "insert into courses (baogaoren,course_place,danwei,course_content,course_time,anpairenshu,course_state) values(?,?,?,?,?,?,'未安排')";

		return this.executeUpdate(sql, cour.getBaogaoren(),
				cour.getCourse_place(), cour.getDanwei(),
				cour.getCourse_content(), cour.getCourse_time(),
				cour.getAnpairenshu());
	}

	@Override
	public List<Courses> queryAll() {
		String sql = "select * from courses ";
		ResultSet rs = null;
		rs = this.executeQuery(sql);
		List<Courses> list = new ArrayList<Courses>();

		try {
			while (rs.next()) {
				Courses c = new Courses();
				c.setAnpairenshu(rs.getInt("anpairenshu"));
				c.setBaogaoren(rs.getString("baogaoren"));
				c.setCourse_content(rs.getString("course_content"));
				c.setCourse_place(rs.getString("course_place"));
				c.setCourse_time(rs.getString("course_time"));
				c.setDanwei(rs.getString("danwei"));
				c.setId(rs.getInt("id"));
				c.setCourse_state(rs.getString("course_state"));
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public boolean deleteCourses(int id) {
		String sql = "delete from courses where id =?";
		return this.executeUpdate(sql, id);
	}

	@Override
	public Courses queryOne(int id) {
		String sql = "select * from courses where id=?";
		// System.out.println(sql);
		ResultSet rs = null;
		rs = this.executeQuery(sql, id);
		Courses c = null;
		try {
			while (rs.next()) {
				c = new Courses();
				c.setAnpairenshu(rs.getInt("anpairenshu"));
				c.setBaogaoren(rs.getString("baogaoren"));
				c.setCourse_content(rs.getString("course_content"));
				c.setCourse_place(rs.getString("course_place"));
				c.setCourse_time(rs.getString("course_time"));
				c.setDanwei(rs.getString("danwei"));
				c.setId(rs.getInt("id"));
				c.setCourse_state(rs.getString("course_state"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return c;
	}

	@Override
	public boolean updateCourses(Courses cour) {
		String sql = "update courses set baogaoren=?,course_place=?,danwei=?,course_content=?,course_time=?,anpairenshu=? " +
				" where id=?";
		return this.executeUpdate(sql, cour.getBaogaoren(),
				cour.getCourse_place(), cour.getDanwei(),
				cour.getCourse_content(), cour.getCourse_time(),
				cour.getAnpairenshu(),cour.getId());
	}

	@Override
	public List<Had_Course> queryArrangedCourse() {
		String sql = "select * from had__courses";
		ResultSet rs = null;
		rs = this.executeQuery(sql);
		List<Had_Course> list = new ArrayList<Had_Course>();
		try {
			while (rs.next()) {
				Had_Course c = new Had_Course();
				c.setId(rs.getInt("id"));
				c.setUsernumber(rs.getString("usernumber"));
				c.setCourse_details(rs.getString("course_details"));
				list.add(c);
				//System.out.println("有值");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean anPaiCourses(Courses cour) {
		String sql = "update courses set baogaoren=?,course_place=?,danwei=?,course_content=?,course_time=?,anpairenshu=?,course_state='已安排' " +
				" where id=?";
		return this.executeUpdate(sql, cour.getBaogaoren(),
				cour.getCourse_place(), cour.getDanwei(),
				cour.getCourse_content(), cour.getCourse_time(),
				cour.getAnpairenshu(),cour.getId());
	}
}
