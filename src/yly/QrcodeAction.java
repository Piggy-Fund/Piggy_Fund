package yly;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

import com.google.zxing.WriterException;

@MultipartConfig
@WebServlet("/QrcodeAction")
public class QrcodeAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//请求
		request.setCharacterEncoding("utf-8");
		//获取二维码大小
		int size = 300;
		//获取二维码内容
		String text = "啥也没有";
				//request.getParameter("text");
		
		HashMap hints = new HashMap();
		//字符编码
		hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
		//容错级别 中
		hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
		
		//定义二维码对象
		BitMatrix bitMatrix = null;
		try {
			bitMatrix = new MultiFormatWriter().encode(text, BarcodeFormat.QR_CODE, size, size, hints);
			
			//设置response的内容类型为jpg
			response.setContentType("image/jpeg");
			
			//获取当前项目的实际物理地址
			String path = this.getServletContext().getRealPath("/")+File.separator+"qrimg"+File.separator;
			System.out.println(path);
			//当前时间的毫秒数作为文件名
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
			String filename = sdf.format(new Date());		
			OutputStream os = new FileOutputStream(path+filename+".jpg");
			MatrixToImageWriter.writeToStream(bitMatrix,"jpg",os);
			//转发
			
			request.setAttribute("qrcode", filename+".jpg");
			request.getRequestDispatcher("service_buyqr.jsp").forward(request, response);
		} catch (WriterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
