package Model;

public class NienKhoa {
	String MaNienKhoa;
	String ThoiGian;
	public NienKhoa(String maNienKhoa, String thoiGian) {
		super();
		MaNienKhoa = maNienKhoa;
		ThoiGian = thoiGian;
	}
	public String getMaNienKhoa() {
		return MaNienKhoa;
	}
	public void setMaNienKhoa(String maNienKhoa) {
		MaNienKhoa = maNienKhoa;
	}
	public String getThoiGian() {
		return ThoiGian;
	}
	public void setThoiGian(String thoiGian) {
		ThoiGian = thoiGian;
	}
	
}
