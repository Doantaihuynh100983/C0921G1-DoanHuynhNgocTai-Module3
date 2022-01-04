package controller;

import bean.Division;
import bean.EducationDegree;
import bean.Employee;
import bean.Position;
import service.EmployeeService;
import service.IEmployeeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

@WebServlet(name = "EmployeeServlet" , urlPatterns = "/employee")
public class EmployeeServlet extends HttpServlet {
   IEmployeeService employeeService = new EmployeeService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionEmployee = request.getParameter("actionEmployee");
        if (actionEmployee == null){
            actionEmployee = "";
        }
        switch (actionEmployee) {
            case "addEmployee":
                addEmployee(request, response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String actionEmployee = request.getParameter("actionEmployee");
            if (actionEmployee == null){
                actionEmployee = "";
            }
            switch (actionEmployee){
                case "viewsAddEmployee":
                    viewsAddEmployee(request,response);
                    break;
                default:
                    getAllEmployee(request,response);
                    break;
            }
    }
    private void getAllEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Employee> employeeList = employeeService.getAllEmployee();
        request.setAttribute("employee" , employeeList);
        request.getRequestDispatcher("employee/employee.jsp").forward(request,response);
    }
    private void viewsAddEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Position> positionList = employeeService.getAllPosition();
        request.setAttribute("position",positionList);


        List<EducationDegree> educationDegreeList = employeeService.getAllEduction();
        request.setAttribute("education", educationDegreeList);


        List<Division> divisionList = employeeService.getAllDivision();
        request.setAttribute("division" , divisionList);
        request.getRequestDispatcher("employee/addEmployee.jsp").forward(request,response);
    }
    private void addEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String name = request.getParameter("employeeName");
        Date birthday = Date.valueOf(request.getParameter("employeeBirthday"));
        String idCard = request.getParameter("employeeIdCard");
        double salary = Double.parseDouble(request.getParameter("employeeSalary"));
        String phone = request.getParameter("employeePhone");
        String email = request.getParameter("employeeEmail");
        String adress = request.getParameter("employeeAddress");
        Position position1 = new Position(Integer.parseInt(request.getParameter("position_epl")));
        EducationDegree educationDegree1 = new EducationDegree(Integer.parseInt(request.getParameter("education_epl")));
        Division division1 = new Division(Integer.parseInt(request.getParameter("division_epl")));


        Employee employee = new Employee(name,birthday,idCard,salary,phone,email,adress,position1,educationDegree1,division1);
        employeeService.insertEmployee(employee);
        response.sendRedirect("employee");

    }
}

