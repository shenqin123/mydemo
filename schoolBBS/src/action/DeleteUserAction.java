package action;
/*
 * 删除用户界面的接口
 */
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CoursesDao;
import dao.UserDao;
import dao.impl.CourseDaoImpl;
import dao.impl.UserDaoImpl;

public class DeleteUserAction {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("content-type","text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;UTF-8");
		int id =Integer.parseInt("id");
		UserDao dao =new UserDaoImpl();
		if(dao.queryByNumber(id)){
			dao.deleteUser(id);
			out.write("<script>alert('chenggong')</script>");
		}else{
			out.write("<script>alert('失败')</script>");
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
