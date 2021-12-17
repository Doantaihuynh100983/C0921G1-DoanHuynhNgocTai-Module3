package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
    public  Connection getIDBCconnection(){
        final String url ="jdbc:mysql://localhost:3306/test";
        final String user = "root";
        final  String password =  "123456789";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return  DriverManager.getConnection(url,user,password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return  null;
    }

//    public static void main(String[] args) {
//        Connection connection = getIDBCconnection();
//        if (connection != null){
//
//            System.out.println("thành công");
//        }else {
//            System.out.println("thất bại");
//        }
//    }
}
