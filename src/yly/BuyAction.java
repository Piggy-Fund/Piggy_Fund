package yly;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yly.entity.Warehouse;

@WebServlet("/BuyAction")
public class BuyAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fundid = request.getParameter("id");
		String fundname = request.getParameter("name");
		String fundnum = request.getParameter("optradio1");
		String x = "change";
		//如果选择的是自定义
		if(fundnum.equals(x)) {
			fundnum = request.getParameter("change");
		}
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		//根据fundid判断username的仓库里是否已有这个基金
		List<Warehouse> warehousefund = Service.search(username, fundid);
		if(warehousefund.size()==0) {
			//如果是购买新基金
			Service.addnew_warehouse(username, fundid, fundname, fundnum);
		}
		else {
			//如果是基金仓库里有的基金
			Service.updatebuy_warehouse(username, fundid, fundnum);
		}
		RequestDispatcher rd = request.getRequestDispatcher("QrcodeAction");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
