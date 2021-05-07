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
		//��ȡ�û���
		String username = request.getParameter("username");
		//��ȡ����
		String password = request.getParameter("password");
		//��ȡУ����
		String verification = request.getParameter("verification");
		//��ȡsession�е�У����
		HttpSession session = request.getSession();
		String s_verf = (String) session.getAttribute("verf");
		//�Ƚ������У�����session��У�����Ƿ�һ��
		if(s_verf!=null&&s_verf.equals(verification)) {
			User u = Service.login(username, password);
			//System.out.println(u);
			//���һ�£���֤�˺�����
			if(u!=null)
			{
				session.setAttribute("user", u);
				//-------set username
				session.setAttribute("username", u.getUsername());
				//��¼�ɹ�ɾ��У����
				session.removeAttribute("verf");
				//��ȷ��ת�����ɹ�ҳ��
				RequestDispatcher  rd = request.getRequestDispatcher("service.jsp");
				rd.forward(request,response);
			}
			else {
				//�û��������
				RequestDispatcher  rd = request.getRequestDispatcher("login.jsp");
				request.setAttribute("info", "�û����������");
				rd.forward(request,response);
			}
		}
		else {
			//У���벻һ�£�����ת�ص�¼����
			RequestDispatcher  rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("info", "У�������");
			rd.forward(request,response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
