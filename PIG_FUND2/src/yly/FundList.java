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
		
		// 获取所有的用户数据
		List<Fund> funds = Service.getAllFund();

		//System.out.print(funds);
		//System.out.print(funds.size());
		// 把所有数据转发到显示的jsp中
		String x ="all";
		// 把数据放到请求中
		request.setAttribute("fund", funds);
		request.setAttribute("op1", x);
		request.setAttribute("op2", x);
		request.setAttribute("op3", x);
		RequestDispatcher rd = request.getRequestDispatcher("service_fundlist.jsp");

		rd.forward(request, response);

	}


}
