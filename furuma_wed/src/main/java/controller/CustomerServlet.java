package controller;

import bean.Customer;
import bean.CustomerType;
import service.CustomerService;
import service.ICustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

@WebServlet(name = "CustomerServlet" , urlPatterns = {"" ,"/customer"})
public class CustomerServlet extends HttpServlet {
    ICustomerService iCustomerService = new CustomerService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionCustomer = request.getParameter("actionCustomer");

        if (actionCustomer == null){
            actionCustomer = "";
        }
        switch (actionCustomer) {
            case "insertCustomer":
                insertCustomer(request,response);
                break;
        }
        }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String actionCustomer = request.getParameter("actionCustomer");
            if (actionCustomer == null){
                actionCustomer = "";
            }
            switch (actionCustomer){
                case "viewsAddCustomer":
                    viewAddCustomer(request,response);
                    break;
                default:
                    disPlayAllCustomer(request,response);
                    break;
            }
    }
    private void disPlayAllCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        List<Customer> customerList = iCustomerService.getAllCustomer();
        request.setAttribute("customerList",customerList);
        request.getRequestDispatcher("customer/customer.jsp").forward(request,response);
    }


    private void viewAddCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        List<CustomerType> customerTypeList = iCustomerService.getAllCustomerType();
        request.setAttribute("customerType",customerTypeList);
        request.getRequestDispatcher("customer/addCustomer.jsp").forward(request,response);
    }

    private void insertCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//        int customerId = Integer.parseInt(request.getParameter("customer_id"));
        String customerName = request.getParameter("customer_name");
        Date customerBirthday = Date.valueOf(request.getParameter("customer_birthday"));
        Boolean customerGender = Boolean.valueOf(request.getParameter("product_Gender"));
        int customerIdCard = Integer.parseInt(request.getParameter("customerIdCard"));
        int customerPhone = Integer.parseInt(request.getParameter("customerPhone"));
        String customerEmail = request.getParameter("customerEmail");
        String customerAddress = request.getParameter("customerAddress");

        String customerType = request.getParameter("CustomerType");

            CustomerType customerType1 = iCustomerService.customerType(Integer.parseInt(customerType));
        Customer customer = new Customer(customerName,customerBirthday,
                customerGender,customerIdCard,customerPhone,customerEmail,customerAddress,customerType1);



        iCustomerService.inserCustomer(customer);
        response.sendRedirect("customer");
    }

}
