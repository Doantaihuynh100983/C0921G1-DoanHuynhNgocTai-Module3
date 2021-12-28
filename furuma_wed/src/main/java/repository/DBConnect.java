package repository;

import java.sql.*;

public class DBConnect {
    private static final String URL = "jdbc:mysql://localhost:3306/furumawed";
    private static final String URES = "root";
    private static final String PASS = "123456789";
        public Connection DBConnect(){
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    return DriverManager.getConnection(URL,URES,PASS);
                }
                catch (ClassNotFoundException e) {
                        e.printStackTrace();
                    } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                return null;
        }



}
