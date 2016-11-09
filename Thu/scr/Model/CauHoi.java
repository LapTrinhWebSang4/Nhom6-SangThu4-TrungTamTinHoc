package Model;

import java.sql.Date;

public class CauHoi {
	//Data
	private String MaCauHoi ;
	public CauHoi(String maCauHoi, Date ngay, String noiDung, int tinhTrang, int sodt, String linhVuc,
			String tenNguoiHoi, String emailNguoiHoi, String traLoi, String tieuDe) {
		super();
		MaCauHoi = maCauHoi;
		Ngay = ngay;
		NoiDung = noiDung;
		TinhTrang = tinhTrang;
		Sodt = sodt;
		LinhVuc = linhVuc;
		TenNguoiHoi = tenNguoiHoi;
		EmailNguoiHoi = emailNguoiHoi;
		TraLoi = traLoi;
		TieuDe = tieuDe;
	}
	private java.sql.Date Ngay;
	String NoiDung;
	int TinhTrang;
	int Sodt;
	String LinhVuc;
	String TenNguoiHoi;
	String EmailNguoiHoi;
	String TraLoi;
	String TieuDe;
	
	
	
	//Properties
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}
	public int isTinhTrang() {
		return TinhTrang;
	}
	public void setTinhTrang(int tinhTrang) {
		TinhTrang = tinhTrang;
	}
	public int getSodt() {
		return Sodt;
	}
	public void setSodt(int sodt) {
		Sodt = sodt;
	}
	public String getLinhVuc() {
		return LinhVuc;
	}
	public void setLinhVuc(String linhVuc) {
		LinhVuc = linhVuc;
	}
	public String getTenNguoiHoi() {
		return TenNguoiHoi;
	}
	public void setTenNguoiHoi(String tenNguoiHoi) {
		TenNguoiHoi = tenNguoiHoi;
	}
	public String getEmailNguoiHoi() {
		return EmailNguoiHoi;
	}
	public void setEmailNguoiHoi(String emailNguoiHoi) {
		EmailNguoiHoi = emailNguoiHoi;
	}
	public String getTraLoi() {
		return TraLoi;
	}
	public void setTraLoi(String traLoi) {
		TraLoi = traLoi;
	}
	public String getTieuDe() {
		return TieuDe;
	}
	public void setTieuDe(String tieuDe) {
		TieuDe = tieuDe;
	}
	
	public String getMaCauHoi() {
		return MaCauHoi;
	}
	public void setMaCauHoi(String maCauHoi) {
		MaCauHoi = maCauHoi;
	}
	public java.sql.Date getNgay() {
		return Ngay;
	}
	public void setNgay(java.sql.Date ngay) {
		Ngay = ngay;
	}
	
}
