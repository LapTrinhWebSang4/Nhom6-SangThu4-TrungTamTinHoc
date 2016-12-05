package DAO;
import Connection.DatabaseManagement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;import java.util.Map;

import Model.CauHoi;
import Model.HocVien;
import Model.KhoaHoc;
import Model.LoaiKhoaHoc;
import Model.LopHoc;
import Model.MienGiam;
import Model.NienKhoa;
import Model.TaiKhoan;
public class TVVDAO {
	public static List<CauHoi> Getlistcauhoi(){
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
		
		
		return  lstcauhoi;
	}
	public static List<LoaiKhoaHoc> Getloaikhoahoclisttheomanienkhoa(String manienkhoa){
		List<LoaiKhoaHoc> lstloaikhoahoc = new ArrayList<LoaiKhoaHoc>();
		Connection conn = DatabaseManagement.getConnection();
		try {
			PreparedStatement pst = conn.prepareStatement("select * from loaikhoahoc where MaNienKhoa=?");
			pst.setString(1, manienkhoa);
			ResultSet rs;
			rs = pst.executeQuery();
			while(rs.next()){
				lstloaikhoahoc.add( new LoaiKhoaHoc(rs.getString("MaLoaiKhoaHoc"),
						rs.getString("TenLoaiKhoaHoc"),
						rs.getString("MaNienKhoa")));
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
		
		return lstloaikhoahoc;
		
	}
	public static List<KhoaHoc> Getloaikhoahoclisttheomaloaikhoahoc(String maloaikhoahoc){
		List<KhoaHoc> lstkhoahoc = new ArrayList<KhoaHoc>();
		Connection conn = DatabaseManagement.getConnection();
		try {
			PreparedStatement pst = conn.prepareStatement("select * from khoahoc where MaLoaiKhoaHoc=?");
			pst.setString(1,maloaikhoahoc);
			ResultSet rs;
			rs = pst.executeQuery();
			while(rs.next()){
				lstkhoahoc.add( new KhoaHoc(rs.getString("MaKhoaHoc"),
						rs.getString("TenKhoaHoc"),
						rs.getDate("NgayKhaiGiang"),
						rs.getString("GioiThieu"),
						rs.getDouble("HocPhi"),
						rs.getBytes("Hinh"),
						rs.getString("MaLoaiKhoaHoc")));
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
		
		return lstkhoahoc;
		
	}
	public static List<LoaiKhoaHoc> Getloaikhoahoclist(){
		List<LoaiKhoaHoc> lstloaikhoahoc = new ArrayList<LoaiKhoaHoc>();
		Connection conn = DatabaseManagement.getConnection();
		try {
			PreparedStatement pst = conn.prepareStatement("select * from loaikhoahoc");
			ResultSet rs;
			rs = pst.executeQuery();
			while(rs.next()){
				lstloaikhoahoc.add( new LoaiKhoaHoc(rs.getString("MaLoaiKhoaHoc"),
						rs.getString("TenLoaiKhoaHoc"),
						rs.getString("MaNienKhoa")));
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
		
		return lstloaikhoahoc;
		
	}
	public static List<NienKhoa> Getnienkhoalist(){
		List<NienKhoa> lstnienkhoa = new ArrayList<NienKhoa>();
		Connection conn = DatabaseManagement.getConnection();
		try {
			PreparedStatement pst = conn.prepareStatement("select * from nienkhoa");
			ResultSet rs;
			rs = pst.executeQuery();
			while(rs.next()){
				lstnienkhoa.add( new NienKhoa(rs.getString("MaNienKhoa"),
						rs.getString("ThoiGian")));
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
		
		return lstnienkhoa;
		
	}
	public static List<HocVien> GethocvienToExport(String MaLopHoc){
		List<HocVien> lsthocvien = new ArrayList<HocVien>();
		Connection conn = DatabaseManagement.getConnection();
		try {
			PreparedStatement pst = conn.prepareStatement("select * from hocvien where MaLop=?");
			pst.setString(1,MaLopHoc);
			ResultSet rs;
			rs = pst.executeQuery();
			while(rs.next()){
				lsthocvien.add( new HocVien(rs.getString("MaHocVien"),
						rs.getString("MaLop"),
						rs.getString("Ten"),
						rs.getString("Email"),
						rs.getInt("Sodt"),
						rs.getDouble("NoHocPhi"),
						rs.getString("DiaChi"),
						rs.getString("MaMienGiam"),
						rs.getDouble("Diem")));
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
		
		return lsthocvien;
		
	}
	public static List<LopHoc> Getlophoclist(){
		List<LopHoc> lstlophoc = new ArrayList<LopHoc>();
		Connection conn = DatabaseManagement.getConnection();
		try {
			PreparedStatement pst = conn.prepareStatement("select * from lophoc");
			ResultSet rs;
			rs = pst.executeQuery();
			while(rs.next()){
				lstlophoc.add( new LopHoc(rs.getString("MaLop"),
						rs.getDate("NgayHoc"),
						rs.getInt("Phong"),
						rs.getInt("SoHocVien"),
						rs.getString("TenMonHoc"),
						rs.getString("LichHoc"),
						rs.getString("MaKhoa")));
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
		
		return lstlophoc;
		
	}
	public static List<KhoaHoc> Getkhoahoclist(){
		List<KhoaHoc> lstkhoahoc = new ArrayList<KhoaHoc>();
		Connection conn = DatabaseManagement.getConnection();
		try {
			PreparedStatement pst = conn.prepareStatement("select * from khoahoc");
			ResultSet rs;
			rs = pst.executeQuery();
			while(rs.next()){
				lstkhoahoc.add( new KhoaHoc(rs.getString("MaKhoaHoc"),
						rs.getString("TenKhoaHoc"),
						rs.getDate("NgayKhaiGiang"),
						rs.getString("GioiThieu"),
						rs.getDouble("HocPhi"),
						rs.getString("MaLoaiKhoaHoc"),
						rs.getString("url")));
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
		
		
		return  lstkhoahoc;
	}
	public static void updateCauHoi(int id,String Content){
		try{
			Connection con = DatabaseManagement.getConnection();
			PreparedStatement pst = con.prepareStatement("update cauhoi set TraLoi=?,TinhTrang=true where MaCauHoi=?");
			pst.setString(1, Content);
			pst.setInt(2, id);
			pst.executeUpdate();	
			if(pst!=null){
				pst.close();
			}
			if(con!=null){
				con.close();
			}
		}catch(SQLException e){
			e.printStackTrace();
		}		
	}	
	public static void deleteCauHoi(int id){
		try{
			Connection con = DatabaseManagement.getConnection();
			PreparedStatement pst = con.prepareStatement("delete from cauhoi where MaCauHoi=?");
			pst.setInt(1, id);
			pst.executeUpdate();
			if(pst!=null){
				pst.close();
			}
			if(con!=null){
				con.close();
			}
		}catch(SQLException e){
			e.printStackTrace();
		}		
	}
	
	public static void deleteKhoaHoc(String MaKhoaHoc){
		try{
			Connection con = DatabaseManagement.getConnection();
			PreparedStatement pst = con.prepareStatement("delete from khoahoc where MaKhoaHoc=?");
			pst.setString(1, MaKhoaHoc);
			pst.executeUpdate();
			if(pst!=null){
				pst.close();
			}
			if(con!=null){
				con.close();
			}
		}catch(SQLException e){
			e.printStackTrace();
		}		
	}
	public static boolean updateInfo(TaiKhoan tk){
		try{
			Connection con = DatabaseManagement.getConnection();
			PreparedStatement pst = con.prepareStatement("update taikhoan set TenThanhVien=?,Sodt=?,"
					+ "Email=?,NgaySinh=?,DiaChi=?,SoCMND=?,GioiThieu=? where Taikhoan=?");
			pst.setString(1, tk.getTenThanhVien());
			pst.setInt(2, tk.getSodt());
			pst.setString(3, tk.getEmail());
			pst.setDate(4, tk.getNgaySinh());
			pst.setString(5, tk.getDiaChi());
			pst.setInt(6, tk.getSoCMND());
			pst.setString(7, tk.getGioiThieu());
			pst.setString(8, tk.getTaikhoan());
			int value = pst.executeUpdate();	
			if(value>=0){
				return true;
			}
			if(pst!=null){
				pst.close();
			}
			if(con!=null){
				con.close();
			}
			return false;
		}catch(SQLException e){
			e.printStackTrace();
			return false;
		}		
	}
	public static boolean updateNgayDangNhap(Date NgayDangNhapGanNhat,String TaiKhoan){
		try{
			Connection con = DatabaseManagement.getConnection();
			PreparedStatement pst = con.prepareStatement("update taikhoan set NgayDangNhapGanNhat=? where Taikhoan=?");
			pst.setDate(1,NgayDangNhapGanNhat);
			pst.setString(2,TaiKhoan);			
			int value = pst.executeUpdate();
			if(value>=0){
				return true;
			}
			if(pst!=null){
				pst.close();
			}
			if(con!=null){
				con.close();
			}
			return false;
		}catch(SQLException e){
			return false;
		}		
	}
	public static boolean ChangePassWord(String taikhoan,String mkc,String mkm){
		try{
			Connection con = DatabaseManagement.getConnection();
			PreparedStatement pst = con.prepareStatement("update taikhoan set MatKhau=? where Taikhoan=? and MatKhau=?");
			pst.setString(1,mkm);
			pst.setString(2,taikhoan);
			pst.setString(3,mkc);
			int value = pst.executeUpdate();
			if(value>=0){
				return true;
			}
			if(pst!=null){
				pst.close();
			}
			if(con!=null){
				con.close();
			}
			return false;
		}catch(SQLException e){
			return false;
		}		
	}
	public static boolean InsertNienKhoa(NienKhoa nk){
		try{
			Connection con = DatabaseManagement.getConnection();
			PreparedStatement pst = con.prepareStatement("insert into nienkhoa values (?,?)");
			pst.setString(1,nk.getMaNienKhoa() );
			pst.setString(2,nk.getThoiGian());
			int k = pst.executeUpdate();
			if(k>=0){
				return true;
			}
			if(pst!=null){
				pst.close();
			}
			if(con!=null){
				con.close();
			}
			return false;
		}catch(SQLException e){
			e.printStackTrace();
			return false;
		}		
	}
	public static boolean InsertLoaiKhoaHoc(LoaiKhoaHoc lkh){
		try{
			Connection con = DatabaseManagement.getConnection();
			PreparedStatement pst = con.prepareStatement("insert into loaikhoahoc values (?,?,?)");
			pst.setString(1,lkh.getMaLoaiKhoaHoc() );
			pst.setString(2,lkh.getTenLoaiKhoaHoc());
			pst.setString(3,lkh.getNienkhoa());
			int k = pst.executeUpdate();
			if(k>=0){
				return true;
			}
			if(pst!=null){
				pst.close();
			}
			if(con!=null){
				con.close();
			}
			return false;
		}catch(SQLException e){
			return false;
		}		
	}
	public static boolean InsertKhoaHoc(KhoaHoc kh){
		try{
			Connection con = DatabaseManagement.getConnection();
			PreparedStatement pst = con.prepareStatement("insert into khoahoc (MaKhoaHoc,TenKhoaHoc,NgayKhaiGiang,GioiThieu,HocPhi,MaLoaiKhoaHoc,url) values (?,?,?,?,?,?,?)");
			pst.setString(1,kh.getMaKhoaHoc());
			pst.setString(2,kh.getTenKhoaHoc());
			pst.setDate(3,kh.getNgayKhaiGiang());
			pst.setString(4,kh.getGioiThieu());
			pst.setDouble(5,kh.getHocPhi());
			pst.setString(6,kh.getMaLoaiKhoaHoc());
			pst.setString(7,kh.getUrl());
			int value = pst.executeUpdate();
			if(pst!=null){
				pst.close();
			}
			if(con!=null){
				con.close();
			}
			if(value>0){
				return true;
			}
			return false;
		}catch(SQLException e){
			e.printStackTrace();
			return false;
		}		
	}
	public static boolean InsertMienGiam(MienGiam mg){
		try{
			Connection con = DatabaseManagement.getConnection();
			PreparedStatement pst = con.prepareStatement("insert into miengiam values (?,?,?,?,?)");
			pst.setString(1,mg.getMaMienGiam());
			pst.setString(2,mg.getDoiTuong());
			pst.setFloat(3,mg.getTienGiam());
			pst.setString(4,mg.getMoTa());
			pst.setString(5,mg.getMaKhoaHoc());
			int k = pst.executeUpdate();
			if(k>=0){
				return true;
			}
			if(pst!=null){
				pst.close();
			}
			if(con!=null){
				con.close();
			}
			return false;
		}catch(SQLException e){
			return false;
		}		
	}
	
}
