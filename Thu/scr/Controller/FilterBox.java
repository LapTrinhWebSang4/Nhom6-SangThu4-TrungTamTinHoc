package Controller;

import java.io.IOException;
import java.util.Iterator;
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
import Model.LopHoc;
import Model.NienKhoa;
/**
 * Servlet implementation class FilterBox
 */
public class FilterBox extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterBox() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		GsonBuilder builder = new GsonBuilder();
		Gson gson = builder.create();		
		response.setCharacterEncoding("UTF-8");
		String tab = request.getParameter("tab");
		if(tab.equals("khoahoc")){
			List<KhoaHoc> lstkh = TVVDAO.Getkhoahoclist();
			response.getWriter().write(gson.toJson(lstkh));
		}
		if(tab.equals("loaikhoahoc")){
			List<LoaiKhoaHoc> lstlkh = TVVDAO.Getloaikhoahoclist();
			response.getWriter().write(gson.toJson(lstlkh));
		}
		if(tab.equals("nienkhoa")){
			List<NienKhoa> lstnk = TVVDAO.Getnienkhoalist();
			response.getWriter().write(gson.toJson(lstnk));
		}
		if(tab.equals("lophoc")){
			List<LopHoc> lstlh = TVVDAO.Getlophoclist();
			response.getWriter().write(gson.toJson(lstlh));
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
