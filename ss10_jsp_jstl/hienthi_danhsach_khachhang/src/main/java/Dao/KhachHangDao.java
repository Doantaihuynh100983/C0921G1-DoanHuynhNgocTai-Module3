package Dao;

import context.DBConnect;
import models.KhachHang;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class KhachHangDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;


        public List<KhachHang> getAllKhachHang(){
            List<KhachHang> khachHangList = new ArrayList<>();
            String query = "select * from khach_hang";
            try {
                    conn = new DBConnect().getConnect();
                    ps = conn.prepareStatement(query);
                    rs = ps.executeQuery();
                    while (rs.next()){
                        khachHangList.add(new KhachHang(rs.getString(1),
                                rs.getDate(2),
                                rs.getString(3),
                                rs.getString(4)));
                    }

            }catch (Exception e){
                e.getMessage();
            }

            return  khachHangList;
        }

}
