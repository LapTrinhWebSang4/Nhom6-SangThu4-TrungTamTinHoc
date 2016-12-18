package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.sendsms;

/**
 * Servlet implementation class HandleSendSMS
 */
@WebServlet("/HandleSendSMS")
public class HandleSendSMS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandleSendSMS() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String PhoneNumber = request.getParameter("PhoneNumber");
		String Message = request.getParameter("Message");
		try{
			sendsms sms = new sendsms();
			sms.setPhone(PhoneNumber);
			sms.setMessage(Message);
			String something = sms.sendGetXML();
			String err="";
			if(something=="100"){
				System.out.println("true");
				err = "Đã gửi thành công";
				request.getSession().setAttribute("errThanhCong", err);
				response.sendRedirect("static-guimail.jsp");
			}else{
				System.out.println("fail");
				err = "Đã gửi thất bại";
				request.getSession().setAttribute("errThatBai", err);
				response.sendRedirect("static-guimail.jsp");
			}
		}catch(Exception ex){
			response.sendRedirect("static-guimail.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
