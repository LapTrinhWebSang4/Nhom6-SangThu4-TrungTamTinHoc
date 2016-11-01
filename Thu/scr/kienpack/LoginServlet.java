package kienpack;

import java.io.IOException;
import java.io.PrintWriter;
import DAO.LoginDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	response.setContentType("text/html");
		 	response.setCharacterEncoding("UTF-8");
	        PrintWriter out = response.getWriter();  	        
	        String n=request.getParameter("username");  
	        String p=request.getParameter("password"); 
	        String q = request.getParameter("box");
	        HttpSession session = request.getSession(false);
	        if(session!=null)
	        session.setAttribute("name", n);

	        if(LoginDAO.validate(n, p,q)){  
	           if(q =="tvv"){
	        	   RequestDispatcher rd=request.getRequestDispatcher("static-dashboard.jsp");  
		            rd.forward(request,response); 
	           } else if(q=="qtnd"){
	        	   RequestDispatcher rd=request.getRequestDispatcher("static-dashboard.jsp");  
		            rd.forward(request,response); 
	           }else{
	        	   RequestDispatcher rd=request.getRequestDispatcher("static-dashboard.jsp");  
		            rd.forward(request,response); 
	           }
	        }  
	        else{  
	            RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	            rd.include(request,response);  
	        }  

	        out.close();  
	}

}
