package yly;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegAction")
public class RegAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取用户名
		String username = request.getParameter("username");
		//获取密码
		String password = request.getParameter("password");
		//获取手机号
		String phonenum = request.getParameter("phonenum");
		Service.addUser(username, password, phonenum);
		RequestDispatcher  rd = request.getRequestDispatcher("login.jsp");	
		rd.forward(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
