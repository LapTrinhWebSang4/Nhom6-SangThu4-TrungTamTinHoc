package Model;

import java.sql.Date;

public class KhoaHoc {
	//field
	String MaKhoaHoc;
	String TenKhoaHoc;
	java.sql.Date NgayKhaiGiang;
	String GioiThieu;
	double HocPhi;
	String MaLoaiKhoaHoc;
	String Url;
	
	byte[] Hinh;
	public KhoaHoc(String maKhoaHoc, String tenKhoaHoc, Date ngayKhaiGiang, String gioiThieu, double hocPhi,
			String maLoaiKhoaHoc,String url) {
		super();
		MaKhoaHoc = maKhoaHoc;
		TenKhoaHoc = tenKhoaHoc;
		NgayKhaiGiang = ngayKhaiGiang;
		GioiThieu = gioiThieu;
		HocPhi = hocPhi;
		MaLoaiKhoaHoc = maLoaiKhoaHoc;
		Url=url;
	}
	
	
	//Constructor
	public KhoaHoc(String maKhoaHoc, String tenKhoaHoc, Date ngayKhaiGiang, String gioiThieu, double hocPhi,
			byte[] hinh, String maLoaiKhoaHoc) {
		super();
		MaKhoaHoc = maKhoaHoc;
		TenKhoaHoc = tenKhoaHoc;
		NgayKhaiGiang = ngayKhaiGiang;
		GioiThieu = gioiThieu;
		HocPhi = hocPhi;
		Hinh = hinh;
		MaLoaiKhoaHoc = maLoaiKhoaHoc;
	}
	
	public String getUrl() {
		return Url;
	}


	public void setUrl(String url) {
		Url = url;
	}
	//Properties
	public String getMaKhoaHoc() {
		return MaKhoaHoc;
	}
	public void setMaKhoaHoc(String maKhoaHoc) {
		MaKhoaHoc = maKhoaHoc;
	}
	public String getTenKhoaHoc() {
		return TenKhoaHoc;
	}
	public void setTenKhoaHoc(String tenKhoaHoc) {
		TenKhoaHoc = tenKhoaHoc;
	}
	public java.sql.Date getNgayKhaiGiang() {
		return NgayKhaiGiang;
	}
	public void setNgayKhaiGiang(java.sql.Date ngayKhaiGiang) {
		NgayKhaiGiang = ngayKhaiGiang;
	}
	public String getGioiThieu() {
		return GioiThieu;
	}
	public void setGioiThieu(String gioiThieu) {
		GioiThieu = gioiThieu;
	}
	public double getHocPhi() {
		return HocPhi;
	}
	public void setHocPhi(double hocPhi) {
		HocPhi = hocPhi;
	}
	public byte[] getHinh() {
		return Hinh;
	}
	public void setHinh(byte[] hinh) {
		Hinh = hinh;
	}
	public String getMaLoaiKhoaHoc() {
		return MaLoaiKhoaHoc;
	}
	public void setMaLoaiKhoaHoc(String maLoaiKhoaHoc) {
		MaLoaiKhoaHoc = maLoaiKhoaHoc;
	}
	
}
