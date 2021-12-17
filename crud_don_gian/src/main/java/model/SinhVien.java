package model;

public class SinhVien {
    private int sinh_vien_id ;
    private String sinh_vien_name ;
    private String sinh_vien_email ;
    private String sinh_vien_country ;

    public SinhVien(int sinh_vien_id, String sinh_vien_name, String sinh_vien_email, String sinh_vien_country) {
        this.sinh_vien_id = sinh_vien_id;
        this.sinh_vien_name = sinh_vien_name;
        this.sinh_vien_email = sinh_vien_email;
        this.sinh_vien_country = sinh_vien_country;
    }

    public SinhVien() {
    }

    public int getSinh_vien_id() {
        return sinh_vien_id;
    }

    public void setSinh_vien_id(int sinh_vien_id) {
        this.sinh_vien_id = sinh_vien_id;
    }

    public String getSinh_vien_name() {
        return sinh_vien_name;
    }

    public void setSinh_vien_name(String sinh_vien_name) {
        this.sinh_vien_name = sinh_vien_name;
    }

    public String getSinh_vien_email() {
        return sinh_vien_email;
    }

    public void setSinh_vien_email(String sinh_vien_email) {
        this.sinh_vien_email = sinh_vien_email;
    }

    public String getSinh_vien_country() {
        return sinh_vien_country;
    }

    public void setSinh_vien_country(String sinh_vien_country) {
        this.sinh_vien_country = sinh_vien_country;
    }

    @Override
    public String toString() {
        return "SinhVien{" +
                "sinh_vien_id=" + sinh_vien_id +
                ", sinh_vien_name='" + sinh_vien_name + '\'' +
                ", sinh_vien_email='" + sinh_vien_email + '\'' +
                ", sinh_vien_country='" + sinh_vien_country + '\'' +
                '}';
    }
}
