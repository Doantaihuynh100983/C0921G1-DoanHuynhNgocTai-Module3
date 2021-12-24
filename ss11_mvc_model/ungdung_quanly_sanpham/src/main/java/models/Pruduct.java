package models;

public class Pruduct {
    private int id;
    private String name ;
    private double gia ;
    private String images;

    public Pruduct(int id, String name, double gia, String images) {
        this.id = id;
        this.name = name;
        this.gia = gia;
        this.images = images;
    }

    public Pruduct() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    @Override
    public String toString() {
        return "Pruduct{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", gia=" + gia +
                ", images='" + images + '\'' +
                '}';
    }
}
