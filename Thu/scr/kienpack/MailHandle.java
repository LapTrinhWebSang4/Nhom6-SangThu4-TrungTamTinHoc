package kienpack;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SendMail;

/**
 * Servlet implementation class MailHandle
 */
@WebServlet("/MailHandle")
public class MailHandle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MailHandle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try{
        	String to = "ltkien2111@gmail.com";
            String subject = "jkzxckj";
            String message = "akscbasbc";
            String user = "lkient2111@gmail.com";
            String pass = "kien2509";
            SendMail.send(to,subject, message, user, pass);
            out.println("<!doctype html><html>"
            		+ "<head>" +"<title>HandleMail</title>"
            		+ "</head>"
            		+ "<body>" +"Mail send successfully"
            		+ "</body>"
            		+ "</html>");
        }catch(Exception e){
        	out.println("<!doctype html><html>"
            		+ "<head>" +"<title>HandleMail</title>"
            		+ "</head>"
            		+ "<body>" +"Mail send failed!!!!"
            		+ "</body>"
            		+ "</html>");
        }
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}
}
