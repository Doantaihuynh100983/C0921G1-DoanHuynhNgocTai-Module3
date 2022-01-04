package repository;

import bean.BenhAn;
import bean.BenhNhan;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BenhNhanRepository  implements IBenhNhanRepository{
    private static  final String SELECT_ALL_BENH_NHAN = "select * from benh_nhan where flag_delete = 1";
    private static final String SELECT_BENH_NHAN_BY_ID = "select * from benh_nhan where id = ?";
    private static final  String UPDATE_BENH_NHAN = "UPDATE benh_nhan SET ten_benh_nhan = ? ,ngay_nhap_vien = ? ,ngay_ra_vien = ?,ly_do_nhap_vien = ? WHERE id=?";
    private static final String DELETE_BENH_NHAN ="update benh_nhan set flag_delete = 0 where id=?";
        Connection conn = new DBConnect().DBConnect();
        PreparedStatement ps = null;
        ResultSet rs = null;


    @Override
    public List<BenhNhan> getAllBenhNhan() {
        List<BenhNhan> benhNhanList = new ArrayList<>();

        try {
            ps = conn.prepareStatement(SELECT_ALL_BENH_NHAN);
            rs =ps.executeQuery();
            while (rs.next()){
                benhNhanList.add(new BenhNhan(
                        rs.getInt("id"),
                        rs.getString("ma_benh_nhan"),
                        rs.getString("ten_benh_nhan"),
                        rs.getDate("ngay_nhap_vien"),
                        rs.getDate("ngay_ra_vien"),
                        rs.getString("ly_do_nhap_vien"),
                        new BenhAn(rs.getString("ma_benh_an"))
                ));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return benhNhanList;
    }

    @Override
    public BenhNhan getBenhNhanById(int id) {
        try {
            ps = conn.prepareStatement(SELECT_BENH_NHAN_BY_ID);
            ps.setInt(1,id);
            rs = ps.executeQuery();
            while (rs.next()){
                return new BenhNhan(
                        rs.getInt("id"),
                        rs.getString("ma_benh_nhan"),
                        rs.getString("ten_benh_nhan"),
                        rs.getDate("ngay_nhap_vien"),
                        rs.getDate("ngay_ra_vien"),
                        rs.getString("ly_do_nhap_vien"),
                        new BenhAn(rs.getString("ma_benh_an")));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void updateBenhNhan(BenhNhan benhNhan) {
        try {
            ps = conn.prepareStatement(UPDATE_BENH_NHAN);
            ps.setString(1,benhNhan.getTenBenhNhan());
            ps.setDate(2,benhNhan.getNgayNhapVien());
            ps.setDate(3,benhNhan.getNgayRaVien());
            ps.setString(4,benhNhan.getLyDoNhapVien());
            ps.setInt(5,benhNhan.getId());
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void deleteBenhNhan(int id) {
            try {
                ps = conn.prepareStatement(DELETE_BENH_NHAN);
                ps.setInt(1,id);
                ps.executeUpdate();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }


