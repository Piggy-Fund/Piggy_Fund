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


@WebServlet("/Warehouselist")
public class Warehouselist extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//获取session中的用户名
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		List<Warehouse> warehouselist = Service.getall(username);
		request.setAttribute("warehouselist", warehouselist);
		int count = warehouselist.size();
		request.setAttribute("count", count);
		RequestDispatcher rd = request.getRequestDispatcher("fundwarehouse.jsp");
		rd.forward(request, response);
	}
}
