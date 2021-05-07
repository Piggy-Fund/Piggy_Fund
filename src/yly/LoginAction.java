package yly;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yly.entity.User;


@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取用户名
		String username = request.getParameter("username");
		//获取密码
		String password = request.getParameter("password");
		//获取校验码
		String verification = request.getParameter("verification");
		//获取session中的校验码
		HttpSession session = request.getSession();
		String s_verf = (String) session.getAttribute("verf");
		//比较输入的校验码和session的校验码是否一致
		if(s_verf!=null&&s_verf.equals(verification)) {
			User u = Service.login(username, password);
			//System.out.println(u);
			//如果一致，验证账号密码
			if(u!=null)
			{
				session.setAttribute("user", u);
				//-------set username
				session.setAttribute("username", u.getUsername());
				//登录成功删除校验码
				session.removeAttribute("verf");
				//正确，转发到成功页面
				RequestDispatcher  rd = request.getRequestDispatcher("service.jsp");
				rd.forward(request,response);
			}
			else {
				//用户密码错误
				RequestDispatcher  rd = request.getRequestDispatcher("login.jsp");
				request.setAttribute("info", "用户名密码错误！");
				rd.forward(request,response);
			}
		}
		else {
			//校验码不一致，则跳转回登录界面
			RequestDispatcher  rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("info", "校验码错误！");
			rd.forward(request,response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
