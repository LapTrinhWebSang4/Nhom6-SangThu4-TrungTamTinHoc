package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.TVVDAO;
import Model.MienGiam;

/**
 * Servlet implementation class insertMienGiam
 */
@WebServlet("/insertMienGiam")
public class insertMienGiam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertMienGiam() {
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
		request.setCharacterEncoding("UTF-8");
		String MaMienGiam = request.getParameter("MaMienGiam");
		String DoiTuong = request.getParameter("DoiTuong");
		String TienGiam = request.getParameter("TienGiam");
		String MoTa = request.getParameter("MoTa");
		String MaKhoaHoc = request.getParameter("MaKhoaHoc");
		try{
			boolean f = TVVDAO.InsertMienGiam(new MienGiam(MaMienGiam,DoiTuong,Float.valueOf(TienGiam),MoTa,MaKhoaHoc));
			if(f){
				System.out.println("them thanh cong");
				response.sendRedirect("QuanLyKhoaHoc.jsp");
			}else{
				System.out.println("them that bai");
				response.sendRedirect("QuanLyKhoaHoc.jsp");
			}
		}catch(Exception e){
			response.sendRedirect("QuanLyKhoaHoc.jsp");
		}
	}

}
