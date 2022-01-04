package repository;

import bean.Division;
import bean.EducationDegree;
import bean.Employee;
import bean.Position;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class EmployeeRepository  implements  IEmployeeRepository{
    private static final String GET_ALL_EMPLOYEE = "select * from employee epl join position ps on epl.position_id = ps.position_id\n" +
            "\tjoin education_degree edg on epl.education_degree_id = edg.education_degree_id\n" +
            "    join division dv on epl.division_id = dv.division_id   order by employee_id";
    private static final String GET_ALL_POSITION = "select * from position";
    private static final String GET_ALL_EDUCATION = "select * from education_degree";
    private static final String GET_ALL_DIVISION = "select * from division ";
    private static final String ADD_EMPLOYEE = "insert into employee (employee_name,employee_birthday,employee_id_card,employee_salary,employee_phone,employee_email,employee_address,position_id,education_degree_id,division_id)\n" +
            "\n" + "values (?,?,?,?,?,?,?,?,?,?)";
    Connection conn = new DBConnect().DBConnect();
    PreparedStatement ps = null;
    ResultSet rs = null;
    @Override
    public List<Employee> getAllEmployee() {
        List<Employee> employeeList = new ArrayList<>();
        try {
            ps = conn.prepareStatement(GET_ALL_EMPLOYEE);
            rs = ps.executeQuery();
            while (rs.next()){
                employeeList.add(new Employee(
                        rs.getInt("employee_id"),
                        rs.getString("employee_name"),
                        rs.getDate("employee_birthday"),
                        rs.getString("employee_id_card"),
                        rs.getDouble("employee_salary"),
                        rs.getString("employee_phone"),
                        rs.getString("employee_email"),
                        rs.getString("employee_address"),
                        new Position(rs.getInt("position_id"),
                                        rs.getString("position_name")),
                        new EducationDegree(rs.getInt("education_degree_id"),
                                        rs.getString("education_degree_name")),
                        new Division(rs.getInt("division_id"),
                                rs.getString("division_name"))
                ));
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return employeeList;
    }

    @Override
    public List<Position> getAllPosition() {
        List<Position> positionList = new ArrayList<>();
        try {
            ps = conn.prepareStatement(GET_ALL_POSITION);
            rs = ps.executeQuery();
            while (rs.next()){
                positionList.add(new Position(rs.getInt("position_id"),
                        rs.getString("position_name")));
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return positionList;
    }

    @Override
    public List<EducationDegree> getAllEduction() {
        List<EducationDegree> educationDegreeList = new ArrayList<>();
        try {
            ps = conn.prepareStatement(GET_ALL_EDUCATION);
            rs = ps.executeQuery();
            while (rs.next()){
                educationDegreeList.add(new EducationDegree(
                   rs.getInt("education_degree_id"),
                        rs.getString("education_degree_name")
                ));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return educationDegreeList;
    }

    @Override
    public List<Division> getAllDivision() {
        List<Division> divisionList = new ArrayList<>();
        try {
            ps =conn.prepareStatement(GET_ALL_DIVISION);
            rs = ps.executeQuery();
            while (rs.next()){
                divisionList.add(new Division(
                        rs.getInt("division_id"),
                        rs.getString("division_name")
                ));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return divisionList;
    }

    @Override
    public void insertEmployee(Employee employee) {
        try {
            ps = conn.prepareStatement(ADD_EMPLOYEE);
            ps.setString(1,employee.getEmployeeName());
            ps.setDate(2, (java.sql.Date) employee.getEmployeeBirthday());
            ps.setString(3,employee.getEmployeeIdCard());
            ps.setDouble(4,employee.getEmployeeSalary());
            ps.setString(5,employee.getEmployeePhone());
            ps.setString(6,employee.getEmployeeEmail());
            ps.setString(7,employee.getEmployeeAddress());
            ps.setInt(8,employee.getPosition().getPositionId());
            ps.setInt(9,employee.getEducationDegree().getEducationDegreeId());
            ps.setInt(10,employee.getDivision().getDivisionId());
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }


}


