package DAO;
import Connection.DatabaseManagement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import Model.CauHoi;
public class CauHoiDAO {
	public Iterator<CauHoi> Getlistcauhoi(){
		List<CauHoi> lstcauhoi = new ArrayList<CauHoi>();
		Connection conn = DatabaseManagement.getConnection();
		try {
			PreparedStatement pst = conn.prepareStatement("select * from cauhoi");
			ResultSet rs;
			rs = pst.executeQuery();
			while(rs.next()){
				lstcauhoi.add( new CauHoi(rs.getString("MaCauHoi"),
						rs.getDate("Ngay"),
						rs.getString("NoiDung"),
						rs.getInt("TinhTrang"),
						rs.getInt("Sodt"),
						rs.getString("LinhVuc"),
						rs.getString("TenNguoiHoi"),
						rs.getString("EmailNguoiHoi"),
						rs.getString("TraLoi"),
						rs.getString("TieuDe")));
			}
			if(rs!=null){
				rs.close();
			}
			if(pst!=null){
				pst.close();
			}
			if(conn!=null){
				conn.close();
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return  lstcauhoi.iterator();
	}
	
}
