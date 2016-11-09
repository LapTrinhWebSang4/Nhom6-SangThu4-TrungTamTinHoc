package Model;

import java.sql.Date;

public class LopHoc {
	String MaLop;
	java.sql.Date NgayHoc;
	int Phong;
	int SoHocVien;
	String TenMocHoc;
	String LichHoc;
	String khoahoc;
	public LopHoc(String maLop, Date ngayHoc, int phong, int soHocVien, String tenMocHoc, String lichHoc,
			String khoahoc) {
		super();
		MaLop = maLop;
		NgayHoc = ngayHoc;
		Phong = phong;
		SoHocVien = soHocVien;
		TenMocHoc = tenMocHoc;
		LichHoc = lichHoc;
		this.khoahoc = khoahoc;
	}
	
	public String getKhoahoc() {
		return khoahoc;
	}
	public void setKhoahoc(String khoahoc) {
		this.khoahoc = khoahoc;
	}
	public String getMaLop() {
		return MaLop;
	}
	public void setMaLop(String maLop) {
		MaLop = maLop;
	}
	public java.sql.Date getNgayHoc() {
		return NgayHoc;
	}
	public void setNgayHoc(java.sql.Date ngayHoc) {
		NgayHoc = ngayHoc;
	}
	public int getPhong() {
		return Phong;
	}
	public void setPhong(int phong) {
		Phong = phong;
	}
	public int getSoHocVien() {
		return SoHocVien;
	}
	public void setSoHocVien(int soHocVien) {
		SoHocVien = soHocVien;
	}
	public String getTenMocHoc() {
		return TenMocHoc;
	}
	public void setTenMocHoc(String tenMocHoc) {
		TenMocHoc = tenMocHoc;
	}
	public String getLichHoc() {
		return LichHoc;
	}
	public void setLichHoc(String lichHoc) {
		LichHoc = lichHoc;
	}
	
}
