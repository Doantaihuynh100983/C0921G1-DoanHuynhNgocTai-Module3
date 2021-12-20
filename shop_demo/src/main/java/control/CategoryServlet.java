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

@WebServlet(name = "CategoryServlet", urlPatterns = "/category")
public class CategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int categoryId = Integer.parseInt(request.getParameter("cid"));
        Dao dao = new Dao();
        List<Product> productList = dao.getProductByCategory(categoryId);
        List<Category> categoryList = dao.getAllCategory();
        request.setAttribute("productListB", productList);
        request.setAttribute("categoryList", categoryList);
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }
}
