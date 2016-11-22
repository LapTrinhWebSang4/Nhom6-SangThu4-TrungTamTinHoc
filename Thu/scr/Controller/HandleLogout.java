package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.TaiKhoan;
/**
 * Servlet implementation class HandleLogout
 */
@WebServlet("/HandleLogout")
public class HandleLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandleLogout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		ServletContext appScope = request.getServletContext();
		TaiKhoan tk = (TaiKhoan) session.getAttribute("taikhoan");
		try{
			List<TaiKhoan> OnlineUser =(List<TaiKhoan>)appScope.getAttribute(HandleLogin.CLIENTS);
			List<TaiKhoan> remove =new ArrayList<TaiKhoan>();
			for(TaiKhoan s :OnlineUser){
				if(s.getTenThanhVien().equals(tk.getTenThanhVien())){
					remove.add(tk);
				}
			}
			OnlineUser.removeAll(remove);
			appScope.setAttribute(HandleLogin.CLIENTS,OnlineUser);
			// fetch the model from the app scope
			session.setAttribute("taikhoan", null);
			if (session != null) {
				session.invalidate();
				response.sendRedirect("login.jsp");
				return;
			}
		}catch(Exception e){
			session.invalidate();
			response.sendRedirect("login.jsp");
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
