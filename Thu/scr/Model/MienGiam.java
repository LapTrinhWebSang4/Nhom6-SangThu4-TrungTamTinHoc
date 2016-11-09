package Model;

public class MienGiam {
	//Field
	String MaMienGiam;
	String DoiTuong;
	float TienGiam;
	String MoTa;
	String MaKhoaHoc;
	//Constructor
	public MienGiam(String maMienGiam, String doiTuong, float tienGiam, String moTa, String maKhoaHoc) {
		super();
		MaMienGiam = maMienGiam;
		DoiTuong = doiTuong;
		TienGiam = tienGiam;
		MoTa = moTa;
		MaKhoaHoc = maKhoaHoc;
	}
	//Properties
	public String getMaMienGiam() {
		return MaMienGiam;
	}
	public void setMaMienGiam(String maMienGiam) {
		MaMienGiam = maMienGiam;
	}
	public String getDoiTuong() {
		return DoiTuong;
	}
	public void setDoiTuong(String doiTuong) {
		DoiTuong = doiTuong;
	}
	public float getTienGiam() {
		return TienGiam;
	}
	public void setTienGiam(float tienGiam) {
		TienGiam = tienGiam;
	}
	public String getMoTa() {
		return MoTa;
	}
	public void setMoTa(String moTa) {
		MoTa = moTa;
	}
	public String getMaKhoaHoc() {
		return MaKhoaHoc;
	}
	public void setMaKhoaHoc(String maKhoaHoc) {
		MaKhoaHoc = maKhoaHoc;
	}
	
}
