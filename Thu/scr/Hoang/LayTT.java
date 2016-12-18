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
 * Servlet implementation class LayTT
 */
@WebServlet("/LayTT")
public class LayTT extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LayTT() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String MaTK = request.getParameter("MaTK");
		  Map <String, String> map = new LinkedHashMap<String, String>();
		  DatabaseManagement db = new DatabaseManagement();
		  java.sql.ResultSet rs = null;
		 
		  try {
			rs = db.getData("SELECT * FROM ttth.taikhoan where Taikhoan='"+MaTK+"' ");
			while (rs.next()) {
				map.put("Taikhoan", rs.getString("Taikhoan"));
				map.put("TenThanhVien", rs.getString("TenThanhVien"));
				map.put("Sodt", String.valueOf(rs.getInt("Sodt")));
				map.put("Email", rs.getString("Email"));
				map.put("NgaySinh", rs.getString("NgaySinh"));
				map.put("DiaChi", rs.getString("DiaChi"));
				map.put("SoCMND", rs.getString("SoCMND"));
				map.put("GioiThieu", rs.getString("GioiThieu"));
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
