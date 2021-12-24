package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    public static final String url = "jdbc:mysql://localhost:3306/quanly_sanpham";
    public static final String user = "root";
    public static final String pass = "123456789";

    public Connection getConnect() {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                return DriverManager.getConnection(url,user,pass);

            }catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            return null;
    }
}
