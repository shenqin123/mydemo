package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CoursesDao;
import dao.impl.CourseDaoImpl;
import domain.Courses;

public class ShowOneCoursesAction extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("content-type","text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;UTF-8");
		int id =Integer.parseInt(request.getParameter("id"));
		CoursesDao dao =new CourseDaoImpl();
		Courses c=dao.queryOne(id);
		if(c!=null){
			request.setAttribute("course",c);
			request.getRequestDispatcher("/admin/change_course.jsp").forward(request, response);
		}else{
			out.write("<script>alert('meiyouxinxi');window.location='/schoolBBS/ShowCourseAction'</script>");
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
}
