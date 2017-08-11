package action;
/*
 * 用于响应登录按钮，并检查相关信息
 * 
 */
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import domain.User;

public class LoginAction  extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		PrintWriter out=res.getWriter();
		// 乱码问题解决
		req.setCharacterEncoding("utf-8");
		res.setContentType("text/html;charset=utf-8");
		res.setHeader("content-type","text/html;charset=UTF-8");
		String userID = req.getParameter("usernumber");
		String pwd = req.getParameter("pwd");
		//System.out.println(userID);
		if (userID.equals("") || pwd.equals("")) {
			res.sendRedirect("index.html");
			return;
		} else {

		}

		// 1 2 3 4 5 6 7
		// "id" "usernumber" "username" "userpassword" "user_root"
		// "course_count" "login_status"
		UserDao dao = new UserDaoImpl();
		User user = dao.getUser(userID, pwd);
		//System.out.println(user);
		if (user != null) {
			// 用于在页面顶部显示
			String username = user.getUsername();
			HttpSession s = req.getSession();
			s.setAttribute("user", user);
			if (user.getUser_root() == 1) {
				out.write("<script>alert('login success')</script>");
				out.write("<script>window.location='admin/index.html'</script>");
			} else {
				out.write("<script>alert('login success');window.location='main.jsp'</script>");
			}
		} else {
			out.write("<script>alert('faile');window.location='index.html'</script>");	
		}
	}
}
