package action;
/*
 * 用于响应增加讲座的界面的提交
 * 
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CoursesDao;
import dao.impl.CourseDaoImpl;
import domain.Courses;

public class AddCourseAction extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("content-type","text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;UTF-8");
		PrintWriter out=response.getWriter();
		String baogaoren=request.getParameter("baogaoren");
		String course_place=request.getParameter("course_place");
		String danwei=request.getParameter("danwei");
		String course_content=request.getParameter("course_content");
		String course_time=request.getParameter("course_time");
		int anpairenshu=Integer.parseInt(request.getParameter("anpairenshu"));
       // int course_state=Integer.parseInt(request.getParameter("course_state"));
		Courses c=new Courses();
		c.setAnpairenshu(anpairenshu);
		c.setBaogaoren(baogaoren);
		c.setCourse_content(course_content);
		c.setCourse_place(course_place);
		//c.setCourse_state(course_state);
		c.setCourse_time(course_time);
		c.setDanwei(danwei);
		CoursesDao dao=new CourseDaoImpl();
		if(dao.addCourses(c)){
			out.write("<script>alert('add success');window.location='admin/addcourse.jsp'</script>");
		}else{
			out.write("<script>alert('add fail');window.location='admin/addcourse.jsp'</script>");
		}
		
	}

}
