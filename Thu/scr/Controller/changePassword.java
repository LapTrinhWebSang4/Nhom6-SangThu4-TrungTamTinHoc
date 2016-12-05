package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.TVVDAO;

/**
 * Servlet implementation class changePassword
 */
@WebServlet("/changePassword")
public class changePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String TaiKhoan = request.getParameter("TaiKhoan");
		String oldpass = request.getParameter("oldpass");
		String newpass = request.getParameter("newpass");
		try{
			boolean f = TVVDAO.ChangePassWord(TaiKhoan, oldpass, newpass);
			if(f){
				response.sendRedirect("static-thongtincanhan.jsp");
			}else{
				response.sendRedirect("static-thongtincanhan.jsp");
			}
		}catch(Exception e){
			response.sendRedirect("static-thongtincanhan.jsp");
		}
	}

}
