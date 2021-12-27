package bean;

public class Product {
    private int id;
    private String tenSanPham;
    private double giaSanPham;
    private String moTaSanPham;
    private String nhaSanPham;

    public Product() {
    }


    public Product(int id, String tenSanPham, double giaSanPham, String moTaSanPham, String nhaSanPham) {
        this.id = id;
        this.tenSanPham = tenSanPham;
        this.giaSanPham = giaSanPham;
        this.moTaSanPham = moTaSanPham;
        this.nhaSanPham = nhaSanPham;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTenSanPham() {
        return tenSanPham;
    }

    public void setTenSanPham(String tenSanPham) {
        this.tenSanPham = tenSanPham;
    }

    public double getGiaSanPham() {
        return giaSanPham;
    }

    public void setGiaSanPham(double giaSanPham) {
        this.giaSanPham = giaSanPham;
    }

    public String getMoTaSanPham() {
        return moTaSanPham;
    }

    public void setMoTaSanPham(String moTaSanPham) {
        this.moTaSanPham = moTaSanPham;
    }

    public String getNhaSanPham() {
        return nhaSanPham;
    }

    public void setNhaSanPham(String nhaSanPham) {
        this.nhaSanPham = nhaSanPham;
    }
}
