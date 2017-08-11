package action;
/*
 * ���ڽ���ҳ����м���ת
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
				//��ʾ���н�������Ϣ
				request.getRequestDispatcher("admin/showAll.jsp").forward(request,response);
			}else if(id==2){
				//ת���޸�ҳ��
				request.getRequestDispatcher("admin/modify.jsp").forward(request,response);
			}else if(id==3){
				//ת��ɾ��ҳ��
				request.getRequestDispatcher("admin/delete.jsp").forward(request,response);
			}else if(id ==4){
				//ת����ȡҳ��
				request.getRequestDispatcher("admin/chouqu.jsp").forward(request,response);
			}else if(id==6){
				//ת���û��������ʾ���н�������Ϣ
				request.getRequestDispatcher("con_user/con_showAll.jsp").forward(request,response);
			}else{
				//�ٴ�ת����ȡ����      id=5   chouqu.jsp
				request.getRequestDispatcher("admin/chouqu.jsp").forward(request,response);
			}
			//out.write("<script>window.location='admin/index.html'</script>");
		} catch (Exception e) {
			e.printStackTrace();
			
			out.write("��վ���ֹ���");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
}
