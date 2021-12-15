package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dao {
    static  private String jdbcURL = "jdbc:mysql://localhost:3306/furuma_wed";
    static  private String jdbcUsername = "root";
    static   private String jdbcPassword = "tai100900huong";


        public dao() {
        }

        public static Connection getConnection() {
            Connection connection = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            return connection;
        }

    public static void main(String[] args) {
        Connection connection = getConnection();
        if (connection != null){

            System.out.println("thành công");
        }
        else {
            System.out.println("thất bại");
        }
    }
}
