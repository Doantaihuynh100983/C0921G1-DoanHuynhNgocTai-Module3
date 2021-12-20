package control;

import dao.Dao;
import models.Category;
import models.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BrankServlet" , urlPatterns = "/demo")
public class BrankServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Dao dao = new Dao();
        List<Product> productList = dao.getAllProduct();
        List<Category> categoryList = dao.getAllCategory();
        Product product = dao.getProductOne();
        request.setAttribute("product" , product);
        request.setAttribute("productListB",productList);
        request.setAttribute("categoryList" , categoryList);
        request.getRequestDispatcher("home.jsp").forward(request,response);
    }
}
