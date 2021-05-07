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


@WebServlet("/FundSearch")
public class FundSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//获取基金类型
		String fundtype = request.getParameter("optradio1");
		String top = request.getParameter("optradio2");
		String risklevel = request.getParameter("optradio3");
		request.setAttribute("op1", fundtype);
		request.setAttribute("op2", top);
		request.setAttribute("op3", risklevel);
//		System.out.println(fundtype);
//		System.out.println(top);
		String sql1 = Service.searchsql(fundtype,top,risklevel);
		System.out.println(sql1);
		List<Fund> funds = Service.getSearch(sql1);
		//System.out.print(funds);
		//System.out.print(funds.size());
		// 把数据放到请求中
		request.setAttribute("fund", funds);
		RequestDispatcher rd = request.getRequestDispatcher("service_fundlist.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		doGet(request,response);
	}

}
