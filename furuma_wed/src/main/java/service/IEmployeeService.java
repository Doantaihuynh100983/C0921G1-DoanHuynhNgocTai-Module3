package service;

import bean.Division;
import bean.EducationDegree;
import bean.Employee;
import bean.Position;

import java.util.List;

public interface IEmployeeService {
    List<Employee> getAllEmployee();
    List<Position> getAllPosition();
    List<EducationDegree> getAllEduction();
    List<Division> getAllDivision();
    void insertEmployee(Employee employee);
}
