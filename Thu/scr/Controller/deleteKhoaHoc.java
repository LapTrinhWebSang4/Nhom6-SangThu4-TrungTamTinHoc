package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.TVVDAO;
/**
 * Servlet implementation class deleteKhoaHoc
 */
@WebServlet("/deleteKhoaHoc")
public class deleteKhoaHoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteKhoaHoc() {
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
		String MaKhoaHoc = request.getParameter("MaKhoaHoc");
		try{
			TVVDAO.deleteKhoaHoc(MaKhoaHoc);
			response.sendRedirect("static-chitietkhoahoc.jsp?khoahoc="+MaKhoaHoc);
		}catch(Exception ex){
			ex.printStackTrace();
			response.sendRedirect("static-chitietkhoahoc.jsp?khoahoc="+MaKhoaHoc);
		}
	}

}
