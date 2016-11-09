package Model;

public class LoaiKhoaHoc {
	String MaLoaiKhoaHoc;	
	String TenLoaiKhoaHoc;
	String nienkhoa;
	public LoaiKhoaHoc(String maLoaiKhoaHoc, String tenLoaiKhoaHoc, String nienkhoa) {
		super();
		MaLoaiKhoaHoc = maLoaiKhoaHoc;
		TenLoaiKhoaHoc = tenLoaiKhoaHoc;
		this.nienkhoa = nienkhoa;
	}
	
	public String getMaLoaiKhoaHoc() {
		return MaLoaiKhoaHoc;
	}
	public void setMaLoaiKhoaHoc(String maLoaiKhoaHoc) {
		MaLoaiKhoaHoc = maLoaiKhoaHoc;
	}
	public String getTenLoaiKhoaHoc() {
		return TenLoaiKhoaHoc;
	}
	public void setTenLoaiKhoaHoc(String tenLoaiKhoaHoc) {
		TenLoaiKhoaHoc = tenLoaiKhoaHoc;
	}
	public String getNienkhoa() {
		return nienkhoa;
	}
	public void setNienkhoa(String nienkhoa) {
		this.nienkhoa = nienkhoa;
	}
}
