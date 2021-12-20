package dao;

import context.DBContext;
import models.Division;
import models.EducationDegree;
import models.Employee;

import javax.swing.text.Position;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class EmployeeDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Employee> getALlEmployee(){
        List<Employee> employeeList = new ArrayList<>();
        String query = "select * from employee";
        try {
            conn = new DBContext().JDBCConnect();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                employeeList.add(new Employee(rs.getInt(1),
                        rs.getString(2),
                        rs.getDate(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        }catch (Exception e){
            e.getMessage();
        }
        return employeeList;
    }

    public void deleteEmployee(int id){
            String query = "DELETE FROM employee WHERE employee_id = ?";
            try {
                conn = new DBContext().JDBCConnect();
                ps = conn.prepareStatement(query);
                ps.setInt(1,id);
                ps.executeUpdate();

            }catch (Exception e){
                e.getMessage();
            }
    }
}

