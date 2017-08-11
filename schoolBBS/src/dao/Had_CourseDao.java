package dao;

import domain.Had_Course;

public interface Had_CourseDao {
	public boolean addCourses(Had_Course h_cour);
	public boolean queryByNumber(int usernumber);
}
