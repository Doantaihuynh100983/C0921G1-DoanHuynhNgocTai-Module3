package dao;

import context.DBContext;
import models.Category;
import models.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Dao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> productList = new ArrayList<>();
        String query = "select * from product";

        try {
            conn = new DBContext().getIDBCconnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                productList.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
            e.getMessage();
        }
        return productList;
    }

    public static void main(String[] args) {
        Dao d = new Dao();
        List<Product> productList = d.getAllProduct();
        for (Product p : productList){
            System.out.println(p);
        }

    }

        public List<Category> getAllCategory(){
            List<Category> categories = new ArrayList<>();
            String query = "SELECT * FROM new_shop.category";
                try {
                    conn = new DBContext().getIDBCconnection();
                    ps = conn.prepareStatement(query);
                    rs = ps.executeQuery();
                    while (rs.next()){
                        categories.add(new Category(rs.getInt(1),
                                rs.getString(2)));
                    }
                }catch (Exception e){
                    e.getMessage();
                }
                return  categories;
    }


    public Product getProductOne(){
            String query = "select * from product order by product_id desc limit 1";
            try {
                conn = new DBContext().getIDBCconnection();
                ps = conn.prepareStatement(query);
                rs = ps.executeQuery();
                while (rs.next()){
                    return  new Product(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getDouble(4),
                            rs.getString(5),
                            rs.getString(6));

                }
            } catch (Exception e){
                e.getMessage();
            }
        return  null;
    }



    public List<Product> getProductByCategory(int cid){
        List<Product> productList = new ArrayList<>();
        String query = "select * from product where cate_id =?";
        try {
                conn = new DBContext().getIDBCconnection();
                ps = conn.prepareStatement(query);
                  ps.setInt(1 ,cid);
                rs = ps.executeQuery();

                while (rs.next()){
                    productList.add(new Product(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getDouble(4),
                            rs.getString(5),
                            rs.getString(6)));
                }

        }catch (Exception e){
            e.getMessage();
        }
        return productList;
    }


    public Product getProductById(int id){
        String query = "select * from product where product_id =?";
        try {
                conn = new DBContext().getIDBCconnection();
                ps = conn.prepareStatement(query);
                ps.setInt(1 ,id);
                rs = ps.executeQuery();
            while (rs.next()){
                return  new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        }catch (Exception e){
            e.getMessage();
        }

        return  null;
    }


    public List<Product> searchProduct(String nameProduct){
        List<Product> productList = new ArrayList<>();
        String query = "select * from product where product_name like ?";
        try {
            conn = new DBContext().getIDBCconnection();
            ps = conn.prepareStatement(query);
            ps.setString(1 ,"%"+nameProduct+"%");
            rs = ps.executeQuery();
            while (rs.next()){
                productList.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }

        }catch (Exception e){
            e.getMessage();
        }
        return productList;
    }
}
