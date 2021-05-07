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
		//����
		request.setCharacterEncoding("utf-8");
		//��ȡ��ά���С
		int size = 300;
		//��ȡ��ά������
		String text = "ɶҲû��";
				//request.getParameter("text");
		
		HashMap hints = new HashMap();
		//�ַ�����
		hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
		//�ݴ��� ��
		hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
		
		//�����ά�����
		BitMatrix bitMatrix = null;
		try {
			bitMatrix = new MultiFormatWriter().encode(text, BarcodeFormat.QR_CODE, size, size, hints);
			
			//����response����������Ϊjpg
			response.setContentType("image/jpeg");
			
			//��ȡ��ǰ��Ŀ��ʵ�������ַ
			String path = this.getServletContext().getRealPath("/")+File.separator+"qrimg"+File.separator;
			System.out.println(path);
			//��ǰʱ��ĺ�������Ϊ�ļ���
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
			String filename = sdf.format(new Date());		
			OutputStream os = new FileOutputStream(path+filename+".jpg");
			MatrixToImageWriter.writeToStream(bitMatrix,"jpg",os);
			//ת��
			
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
