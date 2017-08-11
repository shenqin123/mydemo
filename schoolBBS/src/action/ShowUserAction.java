package action;
/*
 * 显示全部用户的数据转接接口
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import domain.User;

public class ShowUserAction extends HttpServlet{
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
		UserDao dao=new UserDaoImpl();
		try {
			List<User> list = dao.showAllUser();
			request.setAttribute("userList", list);
			
			request.getRequestDispatcher("admin/allUser.jsp").forward(request,response);
		
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
