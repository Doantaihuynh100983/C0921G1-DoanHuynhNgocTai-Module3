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
}