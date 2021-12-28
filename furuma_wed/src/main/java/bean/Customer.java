package bean;

import java.util.Date;

public class Customer extends Person {
    private String loaiKhach;
    private String diaChi;

    public Customer() {
    }
    public Customer(int maSo, String hoTen, Date ngaySinh, int gioiTinh, int cmnd, int soDienThoai, String email, String loaiKhach, String diaChi) {
        super(maSo, hoTen, ngaySinh, gioiTinh, cmnd, soDienThoai, email);
        this.loaiKhach = loaiKhach;
        this.diaChi = diaChi;
    }

    public String getLoaiKhach() {
        return loaiKhach;
    }

    public void setLoaiKhach(String loaiKhach) {
        this.loaiKhach = loaiKhach;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    @Override
    public String toString() {

        return "Customer{" + getMaSo() + getHoTen() + getNgaySinh() + getGioiTinh() + getCmnd() + getSoDienThoai() + getEmail() +
                "loaiKhach='" + loaiKhach + '\'' +
                ", diaChi='" + diaChi + '\'' +
                '}';
    }
}
