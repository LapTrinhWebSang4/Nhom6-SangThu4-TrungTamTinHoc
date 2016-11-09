package Controller;

import java.io.IOException;

import javax.mail.internet.InternetAddress;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SendEmail;

/**
 * Servlet implementation class TestSend
 */
@WebServlet("/TestSend")
public class TestSend extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestSend() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String addresses[] ={"lkient2111@gmail.com","ltkien2111@gmail.com"};
		boolean flag = SendEmail.sendMailToMany("dczsc", "zxczxc","lkient2111@gmail.com","kien2509",
				addresses);
		response.setContentType("text/html");
		if(flag){
			response.getWriter().write("success");
		}else{
			response.getWriter().write("fail");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
