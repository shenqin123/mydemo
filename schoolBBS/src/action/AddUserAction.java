package action;
/*
 * 增加用户界面的数据接口
 * 
 */
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import domain.User;

public class AddUserAction  extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("content-type","text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;UTF-8");
		PrintWriter out=response.getWriter();
		String usernumber=request.getParameter("usernumber");
		String username=request.getParameter("username");
		String userpassword=request.getParameter("userpassword");
		User user=new User();
		user.setCourse_count(0);
		user.setUser_root(0);
		user.setUsername(username);
		user.setUsernumber(usernumber);
		user.setUserpassword(userpassword);
		//user.setLogin_status(1);
		UserDao dao =new UserDaoImpl();
		if(dao.addUser(user)){
			out.write("<script>alert('successs');window.location='admin/addUser.jsp'</script>");
		}else{
			out.write("<script>alert('fail')</script>");
		}
	
	}

}
