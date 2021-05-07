package yly;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yly.entity.Administrator;


@WebServlet("/LoginAction_ad")
public class LoginAction_ad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//��ȡ�û���
		String adname = request.getParameter("username");
		//��ȡ����
		String password = request.getParameter("password");
		//��ȡУ����
		String verification = request.getParameter("verification");
		
		//��ȡsession�е�У����
		HttpSession session = request.getSession();
		String s_verf = (String) session.getAttribute("verf");
		//�Ƚ������У�����session��У�����Ƿ�һ��
		if(s_verf!=null&&s_verf.equals(verification)) {

			Administrator ad = Service.login_ad(adname, password);
			//System.out.println(u);
			//���һ�£���֤�˺�����
			if(ad!=null)
			{
				
				session.setAttribute("administrator", ad);
				session.setAttribute("adname", ad.getAdname());
				//��¼�ɹ�ɾ��У����
				session.removeAttribute("verf");

				//��ȷ��ת�����ɹ�ҳ��
				RequestDispatcher  rd = request.getRequestDispatcher("ad_index.jsp");

				rd.forward(request,response);
			}
			else {
				//�û��������
				RequestDispatcher  rd = request.getRequestDispatcher("login_ad.jsp");
				request.setAttribute("info", "�˺��������");
				rd.forward(request,response);
			}
		}
		else {
			//У���벻һ�£�����ת�ص�¼����
			RequestDispatcher  rd = request.getRequestDispatcher("login_ad.jsp");
			request.setAttribute("info", "У�������");
			rd.forward(request,response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
