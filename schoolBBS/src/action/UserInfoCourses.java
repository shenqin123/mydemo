package action;
/*
 * 用于响应显示用户界面的   我的讲座    栏目
 */
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CoursesDao;
import dao.impl.CourseDaoImpl;
import domain.Courses;
import domain.User;

public class UserInfoCourses extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("content-type","text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;UTF-8");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		User u=(User)session.getAttribute("user");
		CoursesDao dao=new CourseDaoImpl();
		Courses c = null;
		if(u!=null){
			c=dao.queryOne(u.getLogin_status());
		}else{
			out.write("<script>window.location='/schoolBBS/index.html';alter('请先登录，在进行操作！');</script>");
			return;
		}
		if(c!=null){
			request.setAttribute("course", c);
			request.getRequestDispatcher("/con_user/arrange.jsp").forward(request, response);
		}else{
			out.write("<script>alter('no infomation');window.location='/con_user/arrange.jsp'</script>");
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}
}
