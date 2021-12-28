package bean;

import bean.Facility;

public class Villa extends Facility {
    private String tieuChuanPhong;
    private double dienTichHoBoi;
    private int soTang;

    public Villa() {
    }

    public Villa(String tenDichVu, double dienTichSuDung, double chiPhiThue, int soNguoiThueToiDa, String kieuThue, String tieuChuanPhong, double dienTichHoBoi, int soTang) {
        super(tenDichVu, dienTichSuDung, chiPhiThue, soNguoiThueToiDa, kieuThue);
        this.tieuChuanPhong = tieuChuanPhong;
        this.dienTichHoBoi = dienTichHoBoi;
        this.soTang = soTang;
    }

    public String getTieuChuanPhong() {
        return tieuChuanPhong;
    }

    public void setTieuChuanPhong(String tieuChuanPhong) {
        this.tieuChuanPhong = tieuChuanPhong;
    }

    public double getDienTichHoBoi() {
        return dienTichHoBoi;
    }

    public void setDienTichHoBoi(double dienTichHoBoi) {
        this.dienTichHoBoi = dienTichHoBoi;
    }

    public int getSoTang() {
        return soTang;
    }

    public void setSoTang(int soTang) {
        this.soTang = soTang;
    }
}
