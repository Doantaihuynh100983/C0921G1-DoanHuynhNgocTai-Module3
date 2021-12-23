package models;

import java.util.Date;

public class KhachHang {
    private  String hoten;
    private Date ngaySinh;
    private String diaChi;
    private String anh;

    public KhachHang() {
    }

    public KhachHang(String hoten, Date ngaySinh, String diaChi, String anh) {
        this.hoten = hoten;
        this.ngaySinh = ngaySinh;
        this.diaChi = diaChi;
        this.anh = anh;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    @Override
    public String toString() {
        return "KhachHang{" +
                "hoten='" + hoten + '\'' +
                ", ngaySinh=" + ngaySinh +
                ", diaChi='" + diaChi + '\'' +
                ", anh='" + anh + '\'' +
                '}';
    }
}
