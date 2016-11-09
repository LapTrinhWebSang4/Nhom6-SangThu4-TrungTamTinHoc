package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import Model.KhoaHoc;
import DAO.TVVDAO;
/**
 * Servlet implementation class AjaxInSert
 */
@WebServlet("/AjaxInSert")
public class AjaxInSert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxInSert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
			String makhoahoc= request.getParameter("MaKhoaHoc");
			String tenkhoahoc = request.getParameter("TenKhoaHoc");
			java.sql.Date ngaykhaigiang = java.sql.Date.valueOf(request.getParameter("NgayKhaiGiang"));
			String gioithieu= request.getParameter("GioiThieu");
			Double hocphi = Double.valueOf(request.getParameter("HocPhi"));
			String maloaikhoahoc = request.getParameter("MaLoaiKhoaHoc");
			KhoaHoc kh = new KhoaHoc(makhoahoc,
					tenkhoahoc,
					ngaykhaigiang,
					gioithieu,
					hocphi,
					maloaikhoahoc);
			boolean f = TVVDAO.InsertKhoaHoc(kh);
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();
			if(f){
				response.getWriter().write(gson.toJson(kh));
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
