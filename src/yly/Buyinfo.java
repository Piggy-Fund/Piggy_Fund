package yly;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import yly.entity.Fundinformation;
import yly.entity.Warehouse;

@WebServlet("/Buyinfo")
public class Buyinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		List<Fundinformation> fundinfo = Service.getfundinfo(id);
		request.setAttribute("fundinfo", fundinfo);
		//下单时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String time = sdf.format(new Date());
		request.setAttribute("time", time);
		//获取session中的用户名
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");	
		request.setAttribute("username", username);
		//右侧仓库
		List<Warehouse> warehouselist = Service.getall(username);
		int count = warehouselist.size();
		request.setAttribute("count", count);
		request.setAttribute("warehouselist", warehouselist);
		
		RequestDispatcher rd = request.getRequestDispatcher("service_buy.jsp");

		rd.forward(request, response);

	}


}
