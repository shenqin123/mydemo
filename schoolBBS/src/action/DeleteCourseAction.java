package action;
/*
 * 删除讲座界面的接口
 */
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CoursesDao;
import dao.impl.CourseDaoImpl;


public class DeleteCourseAction extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("content-type","text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;UTF-8");
		PrintWriter out=response.getWriter();
		int id=0;
         String num=request.getParameter("id");
         if(num.equals(null)){
        	 
         }else{
        	  id=Integer.parseInt(num); 
         }
		
		CoursesDao dao =new CourseDaoImpl();
		if(dao.deleteCourses(id)){
			out.write("<script>alert('delete success');window.location='/schoolBBS/ShowCourseAction?id=3'</script>");
		}else{
			out.write("<script>alert('fial')</script>");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
