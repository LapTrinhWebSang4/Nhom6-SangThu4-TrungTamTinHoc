package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import DAO.TVVDAO;
import Model.KhoaHoc;

/**
 * Servlet implementation class SearchCourse
 */
@WebServlet("/SearchCourse")
public class SearchCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchCourse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String query = request.getParameter("term");
		PrintWriter out = response.getWriter();
		List<KhoaHoc> lstkh = TVVDAO.SearchKhoaHoc(query);
		response.setContentType("application/json;charset=UTF-8");
		JSONArray arrayObj=new JSONArray();       
        for(int i=0; i<lstkh.size(); i++) {
        	System.out.println(lstkh.get(i).getTenKhoaHoc());
        	arrayObj.put(lstkh.get(i).getMaKhoaHoc());
        }
        
        out.println(arrayObj.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
		
	}

}
