package dao;

import context.DBContext;
import model.SinhVien;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

//tương tác với database tại đây
public class StudentDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<SinhVien> getAllStudent() {
        List<SinhVien> sinhVienList = new ArrayList<>();
        String query = "select*from sinh_vien";
        try {
            conn = new DBContext().getIDBCconnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                sinhVienList.add(new SinhVien(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)));
            }

        } catch (Exception e) {
            e.getMessage();

        }

        return sinhVienList;
    }

    public void deleteSinhVien(int id) {
        String query = "delete from sinh_vien where sinh_vien_id = ?";
        try {
            conn = new DBContext().getIDBCconnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (Exception e) {
            e.getMessage();
        }

    }


}
