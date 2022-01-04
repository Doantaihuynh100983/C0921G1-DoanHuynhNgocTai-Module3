package service;

import bean.Division;
import bean.EducationDegree;
import bean.Employee;
import bean.Position;
import repository.EmployeeRepository;
import repository.IEmployeeRepository;

import java.util.List;

public class EmployeeService  implements  IEmployeeService{
    IEmployeeRepository employeeRepository = new EmployeeRepository();
    @Override
    public List<Employee> getAllEmployee() {
        return this.employeeRepository.getAllEmployee();
    }

    @Override
    public List<Position> getAllPosition() {
        return this.employeeRepository.getAllPosition();
    }

    @Override
    public List<EducationDegree> getAllEduction() {
        return this.employeeRepository.getAllEduction();
    }

    @Override
    public List<Division> getAllDivision() {
        return this.employeeRepository.getAllDivision();
    }

    @Override
    public void insertEmployee(Employee employee) {
        this.employeeRepository.insertEmployee(employee);
    }

}
