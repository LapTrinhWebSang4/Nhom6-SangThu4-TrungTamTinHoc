package Controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.TVVDAO;
import Model.LopHoc;
import Model.HocVien;
/**
 * Servlet implementation class ExportToExcel
 */
@WebServlet("/ExportToExcel")
public class ExportToExcel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExportToExcel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lophoc = request.getParameter("lophoc");
		List<HocVien> lst = TVVDAO.GethocvienToExport(lophoc);
		response.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setHeader("Content-Type", "text/csv");
		response.setHeader("Content-Disposition", "attachment; filename="+lophoc+".csv");
		ArrayList<String> rows = new ArrayList<String>();
		rows.add("\n");		
        rows.add("MaHocVien,LopHoc,Ten,Email,Sodt,NoHocPhi,DiaChi,MaMienGiam,Diem");       
        rows.add("\n");
        for (HocVien hv:lst) {
            rows.add(hv.getMaHocVien()+","+hv.getLophoc()+","+hv.getTen()+","+hv.getEmail()
            +","+String.valueOf(hv.getSodt())+","+String.valueOf(hv.getNoHocPhi())+","+hv.getDiaChi()+","+hv.getMaMienGiam()
            +","+String.valueOf(hv.getDiem()));
            rows.add("\n");
        }

        Iterator iter = (Iterator) rows.iterator();
        while (iter.hasNext()){
            String outputString = (String) iter.next();
            response.getWriter().print(outputString);
        }

        response.getWriter().flush();
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
