package DAO;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import Controller.HandleLogin;
import Model.TaiKhoan;

/**
 * Servlet implementation class ListOfOnlineUsers
 */
@WebServlet("/ListOfOnlineUsers")
public class ListOfOnlineUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListOfOnlineUsers() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext appScope = request.getServletContext();
		GsonBuilder builder = new GsonBuilder();
		Gson gson = builder.create();
		final List<TaiKhoan> clients= (List<TaiKhoan>)appScope.getAttribute(HandleLogin.CLIENTS);
		if(clients.size()> 0){
			response.getWriter().write(gson.toJson(clients));
		}

		
		response.flushBuffer(); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
