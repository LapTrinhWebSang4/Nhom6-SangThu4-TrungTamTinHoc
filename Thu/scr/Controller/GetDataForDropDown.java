package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import DAO.TVVDAO;
import Model.LoaiKhoaHoc;
import Model.LopHoc;

import java.util.List; 
/**
 * Servlet implementation class GetDataForDropDown
 */
@WebServlet("/GetDataForDropDown")
public class GetDataForDropDown extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetDataForDropDown() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String manienkhoa= request.getParameter("manienkhoa");	
			System.out.println(manienkhoa);
			GsonBuilder builder = new GsonBuilder();
			Gson gson = builder.create();		
			response.setCharacterEncoding("UTF-8");
			List<LoaiKhoaHoc> lst = TVVDAO.Getloaikhoahoclisttheomanienkhoa(manienkhoa);
			response.getWriter().write(gson.toJson(lst));
		}catch(Exception e){
			response.sendRedirect("NewNienKhoa.jsp");
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
