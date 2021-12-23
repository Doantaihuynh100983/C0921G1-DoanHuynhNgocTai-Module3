package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

    public Connection getConnect(){
        final String url = "jdbc:mysql://localhost:3306/danh_sach_khach_hang";
        final String name ="root";
        final String pass = "123456789";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return  DriverManager.getConnection(url, name, pass);
        }catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }
}
