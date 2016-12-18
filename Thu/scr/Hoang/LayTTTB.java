package Hoang;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connection.DatabaseManagement;

import com.google.gson.Gson;

/**
 * Servlet implementation class LayTTTB
 */
@WebServlet("/LayTTTB")
public class LayTTTB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LayTTTB() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String MaTB = request.getParameter("MaTB");
		  Map <String, String> map = new LinkedHashMap<String, String>();
		  DatabaseManagement db = new DatabaseManagement();
		  java.sql.ResultSet rs = null;
		  
		  try {
			rs = db.getData("SELECT * FROM ttth.thongbao where MaThongBao='"+MaTB+"' ");
			while (rs.next()) {
				map.put("MaThongBao", rs.getString("MaThongBao"));
				map.put("TieuDe", rs.getString("TieuDe"));
				map.put("LoaiThongBao", rs.getString("TieuDe"));
				map.put("Ngay", rs.getDate("Ngay").toString());
				map.put("TomTat", rs.getString("TomTat"));
				map.put("NoiDung", rs.getString("NoiDung"));
				 System.out.println(MaTB);
				map.put("LuotXem", rs.getString("LuotXem"));
			}
	        response.setContentType("application/json");
	        response.setCharacterEncoding("UTF-8");
	        response.getWriter().write( new Gson().toJson(map));
		  }
		  catch(Exception e){
			  
		  }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
