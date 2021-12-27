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
import java.util.ArrayList;
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
                    updateProduct(request,response);
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
                    editProductById(request,response);
                    break;
                case "delete":
                    deleteProduct(request,response);
                    break;
                case "detail":
                    getProductById(request,response);
                    break;
                case "search":
                    searchProduct(request,response);
                    break;
                default:
                    getAllProduct(request, response);

                    break;
            }
        } catch (Exception ex) {
           ex.getMessage();
        }

    }


    ProductService productService = new ProductServiceImpl();
    public void getAllProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        List<Pruduct>  pruductList = productService.getAllProduct();
        request.setAttribute("pruductList",pruductList);
        request.getRequestDispatcher("home.jsp").forward(request,response);
    }

    public void addProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            String name = request.getParameter("product_name");
            double gia = Double.parseDouble(request.getParameter("product_price"));
            String images = request.getParameter("product_images");
             productService.addProduct(name, gia, images);
          response.sendRedirect("product");


    }


    public void getProductById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            int id = Integer.parseInt(request.getParameter("pid"));
           Pruduct pruduct = productService.getProductById(id);
           request.setAttribute("productById", pruduct);
           request.getRequestDispatcher("deital.jsp").forward(request,response);

    }

    public void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("did"));
        productService.deleteProduct(id);
        response.sendRedirect("product");
    }


    public void searchProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            String text = request.getParameter("txt_name");
            List<Pruduct>  pruductList = productService.searchProduct(text);

              request.setAttribute("pruductList",pruductList);
             request.getRequestDispatcher("home.jsp").forward(request,response);
    }

    public void editProductById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("eid"));
        Pruduct pruduct = productService.getProductById(id);
        request.setAttribute("pd", pruduct);
        request.getRequestDispatcher("update.jsp").forward(request,response);

    }

    public void updateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("product_id"));
        String name = request.getParameter("product_name");
        double gia  = Double.parseDouble(request.getParameter("product_price"));
        String images = request.getParameter("product_images");

        productService.updateProduct(name,gia,images,id);

        response.sendRedirect("product");



    }
}
