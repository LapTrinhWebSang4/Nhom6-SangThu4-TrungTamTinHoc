package Controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DownloadFile
 */
@WebServlet("/DownloadFile")
public class DownloadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadFile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String filename = request.getParameter("filename");
		String filepath = "C:\\apache-tomcat-8.0.39\\wtpwebapps\\Thu\\UploadFile\\"+filename;
		response.setContentType("application/octet-stream");
		File fileToDownload = new File(filepath);
		String headerKey = "Content-Disposition";
        String headerValue = String.format("attachment; filename=\"%s\"", fileToDownload.getName());
        response.setHeader(headerKey, headerValue);  
		

		InputStream in = null;
		ServletOutputStream outs = response.getOutputStream();

		try {
		in = new BufferedInputStream(new FileInputStream(fileToDownload));
		int ch;
		while ((ch = in.read()) != -1) {
		outs.print((char) ch);
		}
		}
		finally {
		if (in != null) in.close(); // very important
		}

		outs.flush();
		outs.close();
		in.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
