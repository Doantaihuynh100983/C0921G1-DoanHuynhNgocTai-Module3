package services;

import context.DBConnect;
import models.Pruduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService{
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    @Override
    public List<Pruduct> getAllProduct() {
        List<Pruduct> pruductList = new ArrayList<>();
        String query = "select * from san_pham";
        try {
                conn = new DBConnect().getConnect();
                ps = conn.prepareStatement(query);
                rs = ps.executeQuery();
                while (rs.next()){
                    pruductList.add(new Pruduct(rs.getInt(1),
                           rs.getString(2),
                            rs.getDouble(3),
                            rs.getString(4)));
                }

        }catch (Exception e){
            e.getMessage();
        }
        return pruductList;
    }


    @Override
    public void addProduct(String name,double gia ,String images) {
        String query = "insert into san_pham(name_sanpham,price_sanpham,image_sanpham) values (?,?,?)";
        try {
                conn = new DBConnect().getConnect();
                ps = conn.prepareStatement(query);
                ps.setString(1,name);
                ps.setDouble(2,gia);
                ps.setString(3,images);
                ps.executeUpdate();
        }catch (Exception e){
            e.getMessage();
        }
    }

    @Override
    public Pruduct getProductById(int id) {
        String query = "select * from san_pham where id_sanpham = ?";
        try {
            conn = new DBConnect().getConnect();
            ps = conn.prepareStatement(query);
            ps.setInt(1,id);
            rs = ps.executeQuery();
            while (rs.next()){
                return new Pruduct(rs.getString("name_sanpham"),
                        rs.getDouble("price_sanpham"),
                        rs.getString("image_sanpham"));
            }

        }catch (Exception e){
            e.getMessage();
        }
        return null;
    }

    @Override
    public void deleteProduct(int id) {
        String query = "DELETE FROM san_pham WHERE id_sanpham = ?";
        try {
            conn = new DBConnect().getConnect();
            ps = conn.prepareStatement(query);
            ps.setInt(1,id);
            ps.executeUpdate();
        }catch (Exception e){
            e.getMessage();
        }
    }

}