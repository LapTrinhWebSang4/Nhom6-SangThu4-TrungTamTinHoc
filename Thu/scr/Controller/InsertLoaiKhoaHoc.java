package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.TVVDAO;
import Model.LoaiKhoaHoc;
/**
 * Servlet implementation class InsertLoaiKhoaHoc
 */
@WebServlet("/InsertLoaiKhoaHoc")
public class InsertLoaiKhoaHoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertLoaiKhoaHoc() {
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
		try{
			String MaLoaiKhoaHoc = request.getParameter("MaLoaiKhoaHoc");
			String TenLoaiKhoaHoc = request.getParameter("TenLoaiKhoaHoc");
			String NienKhoa = request.getParameter("MaNienKhoa");
			boolean f = TVVDAO.InsertLoaiKhoaHoc(new LoaiKhoaHoc(MaLoaiKhoaHoc,TenLoaiKhoaHoc,NienKhoa));
			if(f){
				System.out.println("true");
				response.sendRedirect("NewNienKhoa.jsp");
			}else{
				System.out.println("fail");
				response.sendRedirect("NewNienKhoa.jsp");
			}
		}catch(Exception e){
			response.sendRedirect("NewNienKhoa.jsp");
		}
	}

}
