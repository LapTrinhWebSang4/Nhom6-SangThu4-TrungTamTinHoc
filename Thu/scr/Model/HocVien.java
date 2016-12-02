package Model;

import com.itextpdf.text.pdf.PdfPCell;

public class HocVien {
	String MaHocVien;
	String lophoc;
	String MaMienGiam;
	public String getMaMienGiam() {
		return MaMienGiam;
	}
	public void setMaMienGiam(String maMienGiam) {
		MaMienGiam = maMienGiam;
	}
	String Ten;
	String Email;
	int Sodt;
	double NoHocPhi;
	String DiaChi;
	double Diem;
	public HocVien(String MaHocVien,String lophoc,String Ten,String Email,int Sodt,double NoHocPhi,String DiaChi,String MaMienGiam,double Diem){
		this.MaHocVien=MaHocVien;
		this.lophoc = lophoc;
		this.Ten = Ten;
		this.Email=Email;
		this.Sodt=Sodt;
		this.NoHocPhi=NoHocPhi;
		this.DiaChi=DiaChi;
		this.MaMienGiam = MaMienGiam;
		this.Diem = Diem;
	}
	public String getLophoc() {
		return lophoc;
	}
	public void setLophoc(String lophoc) {
		this.lophoc = lophoc;
	}
	public String getMaHocVien() {
		return MaHocVien;
	}
	public void setMaHocVien(String maHocVien) {
		MaHocVien = maHocVien;
	}
	public String getTen() {
		return Ten;
	}
	public void setTen(String ten) {
		Ten = ten;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public int getSodt() {
		return Sodt;
	}
	public void setSodt(int sodt) {
		Sodt = sodt;
	}
	public double getNoHocPhi() {
		return NoHocPhi;
	}
	public void setNoHocPhi(double noHocPhi) {
		NoHocPhi = noHocPhi;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public Double getDiem() {
		return Diem;
	}
	public void setDiem(double diem) {
		Diem = diem;
	}
	
}
