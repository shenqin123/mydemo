package dao;

import java.util.List;

import domain.Courses;
import domain.Had_Course;

public interface CoursesDao {
   public boolean addCourses(Courses cour);
   public List<Courses> queryAll();
   public boolean deleteCourses(int id);
   public Courses queryOne(int id);
   public boolean updateCourses(Courses c1);
   public List<Had_Course> queryArrangedCourse();
	public boolean anPaiCourses(Courses cour);
}

