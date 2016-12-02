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
import Model.LoaiKhoaHoc;
import Model.NienKhoa;

/**
 * Servlet implementation class FilterBox_NienKhoa
 */
@WebServlet("/FilterBox_NienKhoa")
public class FilterBox_NienKhoa extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterBox_NienKhoa() {
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
		List<NienKhoa> lstnk = TVVDAO.Getnienkhoalist();
		response.getWriter().write(gson.toJson(lstnk));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
