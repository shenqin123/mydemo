package action;
/*
 * 安排人数的响应接口
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CoursesDao;
import dao.UserDao;
import dao.impl.CourseDaoImpl;
import dao.impl.UserDaoImpl;
import domain.Courses;
import domain.User;

public class AnPaiAction extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setHeader("content-type","text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;UTF-8");
		int num =Integer.parseInt(request.getParameter("anpairenshu"));
		int courseid=Integer.parseInt(request.getParameter("cid"));
		CoursesDao cou=new CourseDaoImpl();
		Courses c1=cou.queryOne(courseid); //搜索当前安排的讲座的相关信息
		cou.anPaiCourses(c1);
		List<User> list=new ArrayList<User>();
		UserDao dao =new UserDaoImpl();
		list=dao.chouQu(num);
		//StringBuffer user_name_info = new StringBuffer();
		
		/*
		String user_name_info ="";
		for (int i = 0; i < list.size(); i++) {
			//user_name_info.append(list.get(i).getUsername()+" 、 ");
			user_name_info+=list.get(i).getUsernumber()+list.get(i).getUsername()+" 、 ";
		}
		if(c1!=null && !list.isEmpty()){
			String details = "讲座的相关信息："+c1.getCourse_content()+c1.getBaogaoren()+c1.getCourse_place()+ 
					c1.getDanwei()+c1.getCourse_time()+
					c1.getAnpairenshu()+"。\n人员安排如下："+user_name_info;
		}*/
		
		//request.setAttribute("userlist", list);
		//HttpSession session = request.getSession();
		//session.setAttribute("userlist", list);
		for (int i = 0; i < list.size(); i++) {
			User user=list.get(i);
			user.setLogin_status(courseid);
			dao.updateUser(user);
		}
		out.write("<script>alert('success');window.location='/schoolBBS/ShowCourseAction?id=5'</script>");
	}
}
