package controllers;

import models.Pruduct;
import services.ProductService;
import services.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ProductServlet" , urlPatterns = {"" , "/product"})

public class ProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {
                case "create":
                        addProduct(request,response);
                    break;
                case "edit":

                    break;
                default:
                    getAllProduct(request, response);
                    break;
            }
        } catch (Exception ex) {
            ex.getMessage();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {
                case "edit":

                    break;
                case "delete":
                    deleteProduct(request,response);
                    break;
                case "detail":
                    getProductById(request,response);
                    break;
                default:
                    getAllProduct(request, response);
                    break;
            }
        } catch (Exception ex) {
           ex.getMessage();
        }

    }



    public void getAllProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        ProductService productService = new ProductServiceImpl();
        List<Pruduct>  pruductList = productService.getAllProduct();

        request.setAttribute("pruductList",pruductList);
        request.getRequestDispatcher("home.jsp").forward(request,response);
    }

    public void addProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            String name = request.getParameter("product_name");
            Double gia = Double.parseDouble(request.getParameter("product_price"));
            String images = request.getParameter("product_images");
          ProductService productService = new ProductServiceImpl();
         productService.addProduct(name, gia, images);
         response.sendRedirect("product");


    }


    public void getProductById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            int id = Integer.parseInt(request.getParameter("pid"));
            ProductService productService = new ProductServiceImpl();
           Pruduct pruduct = productService.getProductById(id);
           request.setAttribute("productById", pruduct);
           request.getRequestDispatcher("deital.jsp").forward(request,response);

    }

    public void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("did"));

        ProductService productService = new ProductServiceImpl();
        productService.deleteProduct(id);
        response.sendRedirect("product");
    }


}
