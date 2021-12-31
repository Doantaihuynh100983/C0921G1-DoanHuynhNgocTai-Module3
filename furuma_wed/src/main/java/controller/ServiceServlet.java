package controller;

import bean.RentType;
import bean.Service;
import bean.ServiceType;
import service.IServiceS;
import service.ServiceS;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServideServlet" ,urlPatterns = {"/service"})
public class ServiceServlet extends HttpServlet {
             IServiceS iServiceS = new ServiceS();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionService = request.getParameter("actionService");
        if (actionService == null){
            actionService = "";
        }
        switch (actionService){
            case "addService":
                addService(request,response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionService = request.getParameter("actionService");
        if (actionService == null){
            actionService = "";
        }
        switch (actionService){
            case "viewAddService":
                viewAddService(request,response);
                break;

            default:
                getAllService(request,response);
                break;
        }

    }
    private void getAllService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        List<Service> serviceList = iServiceS.getAllService();
        request.setAttribute("serviceList",serviceList);
        request.getRequestDispatcher("service/service.jsp").forward(request,response);
    }
    private void viewAddService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        List<RentType> rentTypeList = iServiceS.getAllRenType();
        request.setAttribute("renTypeList",rentTypeList);
        List<ServiceType> serviceTypeList = iServiceS.getAllServiceType();
        request.setAttribute("serviceTypeList",serviceTypeList);
        request.getRequestDispatcher("service/addService.jsp").forward(request,response);
    }





    private void addService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String name = request.getParameter("service_name");
        int area = Integer.parseInt(request.getParameter("service_area"));
        double cost =Double.parseDouble(request.getParameter("service_cost"));
        int maxPeople = Integer.parseInt(request.getParameter("service_max_people"));
        String standarRoom = request.getParameter("service_standard_room");
        String description = request.getParameter("descriptionOtherConvenience");
        double poolArea = Double.parseDouble(request.getParameter("service_pool_area"));
        int numberOfFloor = Integer.parseInt(request.getParameter("service_number_of_floor"));
        int rentType = Integer.parseInt(request.getParameter("rentType"));
        int serviceType = Integer.parseInt(request.getParameter("ServiceType"));
        Service service = new Service(name
                                         ,area,
                                             cost
                                        ,maxPeople
                                         ,standarRoom
                                        ,description,
                                         poolArea,numberOfFloor
                                         ,new RentType(rentType),
                                         new ServiceType(serviceType) );

        iServiceS.addService(service);
        response.sendRedirect("service");
    }
}


