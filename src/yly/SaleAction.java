package yly;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/SaleAction")
public class SaleAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fundid = request.getParameter("id");
		String havenum = request.getParameter("havenum");
		String salenum = request.getParameter("optradio1");
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		String x = "change";
		String y = "all";
		//���ѡ������Զ���
		if(salenum.equals(x)) {
			salenum = request.getParameter("change");
		}
		//���ѡ�����ȫ���۳�
		if(salenum.equals(y)) {
			Service.deletesale_warehouse(username, fundid);
			RequestDispatcher rd = request.getRequestDispatcher("Warehouselist");
			rd.forward(request, response);
		}
		//�����۳�
		else {
			//����۳���������ӵ������
			if(Integer.valueOf(havenum)<Integer.valueOf(salenum)){
				request.setAttribute("id", fundid);
				RequestDispatcher rd = request.getRequestDispatcher("SaleServlet_error");
				rd.forward(request, response);
			}
			else {
				Service.updatesale_warehouse(username, fundid, salenum);
				RequestDispatcher rd = request.getRequestDispatcher("Warehouselist");
				rd.forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
