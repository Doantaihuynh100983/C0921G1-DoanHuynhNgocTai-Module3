package reponsitory;

import bean.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductReponsitory implements IProductReponsitory {
    private static final String GET_PRODUCT_LIST = "select * from san_pham";
    private static final String INSERT_INTO_PRODUCT = "insert into san_pham(ten_san_pham,gia_san_pham,mo_ta_san_pham,nha_san_xuat) values(?,?,?,?)";
    private static final String DELETE_PRODUCT = "DELETE FROM san_pham WHERE id = ?";

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
    public List<Product> productList() {
        List<Product> productList = new ArrayList<>();
        try {
            conn = new DBConnect().DBConnect();
            ps = conn.prepareStatement(GET_PRODUCT_LIST);
            rs = ps.executeQuery();
            while (rs.next()) {
                productList.add(new Product(rs.getInt("id"),
                        rs.getString("ten_san_pham"),
                        rs.getDouble("gia_san_pham"),
                        rs.getString("mo_ta_san_pham"),
                        rs.getString("nha_san_xuat")));
            }
        } catch (Exception e) {
            e.getMessage();
        }

        return productList;
    }


    @Override
    public void addProduct(Product product) {
        try {
            conn = new DBConnect().DBConnect();
            ps = conn.prepareStatement(INSERT_INTO_PRODUCT);
            ps.setString(1,product.getTenSanPham());
            ps.setDouble(2, product.getGiaSanPham());
            ps.setString(3,product.getMoTaSanPham());
            ps.setString(4,product.getNhaSanPham());
            ps.executeUpdate();
        }catch (Exception e){
            e.getMessage();
        }
    }

    @Override
    public void deleteProduct(int id) {
        try {
            conn = new DBConnect().DBConnect();
            ps = conn.prepareStatement(DELETE_PRODUCT);
            ps.setInt(1 , id);
            ps.executeUpdate();
        }catch (Exception e){
            e.getMessage();
        }
    }


}
