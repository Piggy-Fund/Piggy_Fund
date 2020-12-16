package yly;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yly.entity.Fund;


@WebServlet("/FundList")
public class FundList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// ��ȡ���е��û�����
		List<Fund> funds = Service.getAllFund();

		//System.out.print(funds);
		//System.out.print(funds.size());
		// ����������ת������ʾ��jsp��
		String x ="all";
		// �����ݷŵ�������
		request.setAttribute("fund", funds);
		request.setAttribute("op1", x);
		request.setAttribute("op2", x);
		request.setAttribute("op3", x);
		RequestDispatcher rd = request.getRequestDispatcher("service_fundlist.jsp");

		rd.forward(request, response);

	}


}
