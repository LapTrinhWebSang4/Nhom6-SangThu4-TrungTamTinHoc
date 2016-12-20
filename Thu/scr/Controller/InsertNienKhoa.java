package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.TVVDAO;
import Model.NienKhoa;
/**
 * Servlet implementation class InsertNienKhoa
 */
@WebServlet("/InsertNienKhoa")
public class InsertNienKhoa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertNienKhoa() {
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
			String MaNienKhoa = request.getParameter("MaNienKhoa");
			String ThoiGian = request.getParameter("ThoiGian");
			boolean f = TVVDAO.InsertNienKhoa(new NienKhoa(MaNienKhoa,ThoiGian));
			if(f){
				System.out.println("true");
				response.sendRedirect("QuanLyKhoaHoc.jsp");
			}else{
				System.out.println("fail");
				response.sendRedirect("QuanLyKhoaHoc.jsp");
			}
		}catch(Exception e){
			response.sendRedirect("QuanLyKhoaHoc.jsp");
		}
	}

}
