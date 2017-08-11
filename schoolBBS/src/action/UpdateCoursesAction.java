package action;
/*
 * 讲座信息更新界面的接口
 */
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CoursesDao;
import dao.impl.CourseDaoImpl;
import domain.Courses;

public class UpdateCoursesAction extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("content-type","text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;UTF-8");
		PrintWriter out=response.getWriter();
		//System.out.println("请求"+request.getParameter("cid"));
		
		int id=Integer.parseInt(request.getParameter("cid"));	
		String baogaoren=request.getParameter("baogaoren");
		String course_place=request.getParameter("course_place");
		String danwei=request.getParameter("danwei");
		String course_content=request.getParameter("course_content");
		String course_time=request.getParameter("course_time");
		int anpairenshu=Integer.parseInt(request.getParameter("anpairenshu"));
		
		Courses c=new Courses();
		
		c.setId(id);
		c.setAnpairenshu(anpairenshu);
		c.setBaogaoren(baogaoren);
		c.setCourse_content(course_content);
		c.setCourse_place(course_place);
		c.setCourse_time(course_time);
		c.setDanwei(danwei);
		
		CoursesDao dao=new CourseDaoImpl();
		if(dao.updateCourses(c)){
			out.write("<script>alert('success');window.location='/schoolBBS/ShowCourseAction?id=2'</script>");
		}else{
			out.write("<script>alert('f')</script>");
		}
	}
}
