package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CoursesDao;
import dao.impl.CourseDaoImpl;
import domain.Courses;
import domain.Had_Course;

public class ShowArrangedCoursesAction extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("content-type","text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;UTF-8");
		PrintWriter out = response.getWriter();
		CoursesDao dao=new CourseDaoImpl();
		List<Had_Course> list = dao.queryArrangedCourse();
		//request.setAttribute("hadList", list);
		HttpSession session = request.getSession();
		session.setAttribute("course", list);
		out.write("<script>window.location='con_user/arrange.jsp'</script>");
		//request.getRequestDispatcher("con_user/arrange.jsp").forward(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
}
