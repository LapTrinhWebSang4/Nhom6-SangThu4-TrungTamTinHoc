package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.TVVDAO;
import Model.TaiKhoan;
/**
 * Servlet implementation class updateInfo
 */
@WebServlet("/updateInfo")
public class updateInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateInfo() {
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
		String TenThanhVien = request.getParameter("TenThanhVien");
		String DiaChi = request.getParameter("DiaChi");
		String SoCMND = request.getParameter("SoCMND");
		String NgSinh = request.getParameter("NgSinh");
		String Sodt = request.getParameter("Sodt");
		String GioiThieu = request.getParameter("GioiThieu");
		String Email = request.getParameter("Email");
		try{
			TaiKhoan tk = new TaiKhoan(TaiKhoan,TenThanhVien,
					Integer.valueOf(SoCMND),
					GioiThieu,DiaChi,
					Integer.valueOf(Sodt),
					Email,
					java.sql.Date.valueOf(NgSinh));
			boolean f=TVVDAO.updateInfo(tk);
			if(f){
				System.out.println("true");
				response.sendRedirect("static-thongtincanhan.jsp");
			}else{
				response.sendRedirect("static-thongtincanhan.jsp");
			}

		}catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("static-thongtincanhan.jsp");
		}
		
	}

}
