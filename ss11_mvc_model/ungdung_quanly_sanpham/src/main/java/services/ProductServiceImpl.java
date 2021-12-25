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
    private static final String getAllProduct = "select * from san_pham";
    private static final String addProduct = "insert into san_pham(name_sanpham,price_sanpham,image_sanpham) values (?,?,?)";
    private static final String getProductById = "select * from san_pham where id_sanpham = ?";
    private static final String deleteProduct = "DELETE FROM san_pham WHERE id_sanpham = ?";
    private static final String searchProduct = "select * from san_pham where name_sanpham like ?";
    private static final String updateProduct = "UPDATE san_pham SET name_sanpham=?, price_sanpham=? , image_sanpham=?  WHERE id_sanpham = ?";
    @Override
    public List<Pruduct> getAllProduct() {
        List<Pruduct> pruductList = new ArrayList<>();
        try {
                conn = new DBConnect().getConnect();
                ps = conn.prepareStatement(getAllProduct);
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
        try {
                conn = new DBConnect().getConnect();
                ps = conn.prepareStatement(addProduct);
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
        try {
            conn = new DBConnect().getConnect();
            ps = conn.prepareStatement(getProductById);
            ps.setInt(1,id);
            rs = ps.executeQuery();
            while (rs.next()){
                return new Pruduct(
                        rs.getInt("id_sanpham"),
                        rs.getString("name_sanpham"),
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
        try {
            conn = new DBConnect().getConnect();
            ps = conn.prepareStatement(deleteProduct);
            ps.setInt(1,id);
            ps.executeUpdate();
        }catch (Exception e){
            e.getMessage();
        }
    }

    @Override
    public List<Pruduct> searchProduct(String txt) {
        List<Pruduct> pruductList = new ArrayList<>();
            try {
                conn = new DBConnect().getConnect();
                ps = conn.prepareStatement(searchProduct);
                ps.setString(1,"%"+txt+"%");
                rs = ps.executeQuery();
                while (rs.next()){
                    pruductList.add(new Pruduct(
                            rs.getInt("id_sanpham"),
                            rs.getString("name_sanpham"),
                            rs.getDouble("price_sanpham"),
                            rs.getString("image_sanpham")));
                }


            }catch (Exception e){
                e.getMessage();
            }


        return pruductList;
    }



}