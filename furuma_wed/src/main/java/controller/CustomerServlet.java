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
import java.util.Map;

@WebServlet(name = "CustomerServlet", urlPatterns = {"", "/customer"})
public class CustomerServlet extends HttpServlet {
    ICustomerService iCustomerService = new CustomerService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionCustomer = request.getParameter("actionCustomer");

        if (actionCustomer == null) {
            actionCustomer = "";
        }
        switch (actionCustomer) {
            case "insertCustomer":
                insertCustomer(request, response);
                break;
            case "updateCustomer":
                updateCustomer(request, response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionCustomer = request.getParameter("actionCustomer");
        if (actionCustomer == null) {
            actionCustomer = "";
        }
        switch (actionCustomer) {
            case "viewsAddCustomer":
                viewAddCustomer(request, response);
                break;
            case "customerByid":
                customerById(request, response);
                break;
            case "deleteCustomer":
                deleteCustomer(request,response);
                break;
            case "searchCustomer":
                searchCustomer(request,response);
                break;
            case "viewsService":
                viewsService(request,response);
                break;
            default:

                disPlayAllCustomer(request, response);
                break;
        }
    }

    private void disPlayAllCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = iCustomerService.getAllCustomer();
        request.setAttribute("customerList", customerList);
        request.getRequestDispatcher("customer/customer.jsp").forward(request, response);
    }


    private void viewAddCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CustomerType> customerTypeList = iCustomerService.getAllCustomerType();
        request.setAttribute("customerType", customerTypeList);
        request.getRequestDispatcher("customer/addCustomer.jsp").forward(request, response);
    }

    private void insertCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

        Customer customer = new Customer(customerName, customerBirthday,
                customerGender, customerIdCard, customerPhone, customerEmail, customerAddress, customerType1);


     Map<String ,String> stringStringMap = iCustomerService.inserCustomer(customer);

     if (!stringStringMap.isEmpty()){
         request.setAttribute("nameCustomer",stringStringMap.get("nameCustomer"));
         request.getRequestDispatcher("customer/addCustomer.jsp").forward(request,response);
     }else {
            response.sendRedirect("customer");
     }

    }


    private void customerById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CustomerType> customerTypeList = iCustomerService.getAllCustomerType();
        request.setAttribute("customerType", customerTypeList);
        int id = Integer.parseInt(request.getParameter("uid"));
        Customer customer = iCustomerService.customerById(id);
        request.setAttribute("customerById", customer);
        request.getRequestDispatcher("customer/update.jsp").forward(request, response);
    }


    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("customer_id_up"));
        String name = request.getParameter("customer_name_up");
        Date birthday = Date.valueOf(request.getParameter("customer_birthday_up"));
        boolean gender = Boolean.parseBoolean(request.getParameter("product_Gender_up"));
        int idCard = Integer.parseInt(request.getParameter("customerIdCard_up"));
        int phone = Integer.parseInt(request.getParameter("customerPhone_up"));
        String email = request.getParameter("customerEmail_up");
        String address = request.getParameter("customerAddress_up");
        String customerType = request.getParameter("CustomerType_up");
        CustomerType customerType1 = iCustomerService.customerType(Integer.parseInt(customerType));

        Customer customer = new Customer(id, name, birthday, gender, idCard, phone, email, address, customerType1);
        iCustomerService.updateCustomer(customer);

        response.sendRedirect("customer");


    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            int id = Integer.parseInt(request.getParameter("did"));
            iCustomerService.deleteCustomer(id);
            response.sendRedirect("customer");
    }

    private void searchCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String name = request.getParameter("search1");
            List<Customer> customerList = iCustomerService.searchCustomer(name);
            request.setAttribute("customerList", customerList);
           request.getRequestDispatcher("customer/customer.jsp").forward(request, response);

    }
    private void viewsService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("service/5.jsp").forward(request,response);
    }

}


