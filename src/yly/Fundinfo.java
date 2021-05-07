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
import yly.entity.Fundinformation;
import yly.entity.Tiezi;


@WebServlet("/Fundinfo")
public class Fundinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		List<Fundinformation> fundinfo = Service.getfundinfo(id);
		request.setAttribute("fundinfo", fundinfo);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String time = sdf.format(new Date());
		request.setAttribute("time", time);
		// 获取帖子数据
		List<Tiezi> ties = Service.getall();
		request.setAttribute("ties", ties);
		RequestDispatcher rd = request.getRequestDispatcher("service_fundinfo.jsp");
		rd.forward(request, response);
	}


}
