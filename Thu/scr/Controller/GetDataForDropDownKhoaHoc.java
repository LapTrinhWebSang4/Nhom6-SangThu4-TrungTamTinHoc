package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import DAO.TVVDAO;
import Model.KhoaHoc;
import Model.LoaiKhoaHoc;

/**
 * Servlet implementation class GetDataForDropDownKhoaHoc
 */
@WebServlet("/GetDataForDropDownKhoaHoc")
public class GetDataForDropDownKhoaHoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetDataForDropDownKhoaHoc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String maloaikhoahoc= request.getParameter("MaLoaiKhoaHoc");	
			System.out.println(maloaikhoahoc);
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();		
			response.setCharacterEncoding("UTF-8");
			List<KhoaHoc> lst = TVVDAO.Getloaikhoahoclisttheomaloaikhoahoc(maloaikhoahoc);
			response.getWriter().write(gson.toJson(lst));
		}catch(Exception e){
			
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
