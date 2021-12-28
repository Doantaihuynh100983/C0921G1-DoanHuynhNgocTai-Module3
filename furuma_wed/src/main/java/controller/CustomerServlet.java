package controller;

import bean.Customer;
import service.CustomerService;
import service.ICustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet" , urlPatterns = {"","/customer"})
public class CustomerServlet extends HttpServlet {
    ICustomerService iCustomerService = new CustomerService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//            String actionCustomer = request.getParameter("actionCustomer");
//            if (actionCustomer == null){
//                actionCustomer = "";
//            }
//            switch (actionCustomer){
//                case "addCustomer" :
//                    break;
//                default:
//                    getAllCustomer(request,response);
//                    break;
//            }
        List<Customer> customerList = iCustomerService.getAllCustomer();
        request.setAttribute("customerList",customerList);
        request.getRequestDispatcher("customer.jsp").forward(request,response);
    }

    private void getAllCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }
}
