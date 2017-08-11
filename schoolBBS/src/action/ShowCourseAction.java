package action;
/*
 * 用于进行页面的中间跳转
 * 
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CoursesDao;
import dao.impl.CourseDaoImpl;
import domain.Courses;

public class ShowCourseAction extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;UTF-8");
		PrintWriter out = response.getWriter();
		int id =Integer.parseInt(request.getParameter("id"));
		CoursesDao dao=new CourseDaoImpl();
		try {
			List<Courses> list = dao.queryAll();
			request.setAttribute("courseList", list);
			if(id==1){
				//显示所有讲座的信息
				request.getRequestDispatcher("admin/showAll.jsp").forward(request,response);
			}else if(id==2){
				//转到修改页面
				request.getRequestDispatcher("admin/modify.jsp").forward(request,response);
			}else if(id==3){
				//转到删除页面
				request.getRequestDispatcher("admin/delete.jsp").forward(request,response);
			}else if(id ==4){
				//转到抽取页面
				request.getRequestDispatcher("admin/chouqu.jsp").forward(request,response);
			}else if(id==6){
				//转到用户界面的显示所有讲座的信息
				request.getRequestDispatcher("con_user/con_showAll.jsp").forward(request,response);
			}else{
				//再次转到抽取界面      id=5   chouqu.jsp
				request.getRequestDispatcher("admin/chouqu.jsp").forward(request,response);
			}
			//out.write("<script>window.location='admin/index.html'</script>");
		} catch (Exception e) {
			e.printStackTrace();
			
			out.write("网站出现故障");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
}
