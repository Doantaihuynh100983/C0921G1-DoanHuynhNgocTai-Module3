package control;

import dao.Dao;
import models.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ChitietServlet" , urlPatterns = "/chitiet")
public class ChitietServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            int productId = Integer.parseInt(request.getParameter("pid"));
            Dao dao = new Dao();
            Product product = dao.getProductById(productId);

            request.setAttribute("product" , product);
            request.getRequestDispatcher("chitiet.jsp").forward(request,response);

    }
}
