package Model;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.util.List;

import javax.servlet.AsyncContext;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

import Controller.HandleLogin;
public class TaiKhoan{
	String Taikhoan;
	String MatKhau;
	String TenThanhVien;
	int Sodt;
	String Email;
	java.sql.Date NgaySinh;
	java.sql.Date NgayDangNhapGanNhat;
	String DiaChi;
	int SoCMND;
	String Quyen;
	String GioiThieu;
	//Constructor
	public TaiKhoan(String taikhoan, String matKhau, String tenThanhVien, int sodt, String email, Date ngaySinh,
			Date ngayDangNhapGanNhat, String diaChi, int soCMND, String quyen, String gioiThieu) {
		super();
		Taikhoan = taikhoan;
		MatKhau = matKhau;
		TenThanhVien = tenThanhVien;
		Sodt = sodt;
		Email = email;
		NgaySinh = ngaySinh;
		NgayDangNhapGanNhat = ngayDangNhapGanNhat;
		DiaChi = diaChi;
		SoCMND = soCMND;
		Quyen = quyen;
		GioiThieu = gioiThieu;
	}
	public TaiKhoan(String taikhoan, String tenThanhVien,int soCMND,String gioiThieu,String diaChi,int sodt, String email,Date ngaySinh) {
		super();
		Taikhoan = taikhoan;
		TenThanhVien = tenThanhVien;
		SoCMND = soCMND;
		Sodt=sodt;
		GioiThieu=gioiThieu;
		DiaChi = diaChi;
		Email = email;
		NgaySinh = ngaySinh;
	}
	public TaiKhoan(String taikhoan, String matKhau, String tenThanhVien, String email) {
		super();
		Taikhoan = taikhoan;
		MatKhau = matKhau;
		TenThanhVien = tenThanhVien;
		Email = email;
	}
	//Properties
	public String getTaikhoan() {
		return Taikhoan;
	}
	public void setTaikhoan(String taikhoan) {
		Taikhoan = taikhoan;
	}
	public String getMatKhau() {
		return MatKhau;
	}
	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}
	public String getTenThanhVien() {
		return TenThanhVien;
	}
	public void setTenThanhVien(String tenThanhVien) {
		TenThanhVien = tenThanhVien;
	}
	public int getSodt() {
		return Sodt;
	}
	public void setSodt(int sodt) {
		Sodt = sodt;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public java.sql.Date getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(java.sql.Date ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public java.sql.Date getNgayDangNhapGanNhat() {
		return NgayDangNhapGanNhat;
	}
	public void setNgayDangNhapGanNhat(java.sql.Date ngayDangNhapGanNhat) {
		NgayDangNhapGanNhat = ngayDangNhapGanNhat;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public int getSoCMND() {
		return SoCMND;
	}
	public void setSoCMND(int soCMND) {
		SoCMND = soCMND;
	}
	public String getQuyen() {
		return Quyen;
	}
	public void setQuyen(String quyen) {
		Quyen = quyen;
	}
	public String getGioiThieu() {
		return GioiThieu;
	}
	public void setGioiThieu(String gioiThieu) {
		GioiThieu = gioiThieu;
	}
	
	
}
