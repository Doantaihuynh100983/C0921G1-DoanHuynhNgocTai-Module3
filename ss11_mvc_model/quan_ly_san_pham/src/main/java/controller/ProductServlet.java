package controller;

import bean.Product;
import service.IProductService;
import service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = {"", "/product"})
public class ProductServlet extends HttpServlet {
    private IProductService iProductService = new ProductService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("actionProduct");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "addProductAfter":
                addProductAfter(request, response);
                break;
            case "update":
                updateProduct(request, response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("actionProduct");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "addProduct":
                addProduct(request, response);
                break;
            case "deleteProduct":
                deleteProduct(request, response);
                break;
            case "showUpdate":
                showUpdateProduct(request, response);
                break;
            case "views":
                showView(request,response);
                break;
            case "search":
                searchProduct(request,response);
                break;
            default:
                getAllProduct(request, response);
                break;
        }

    }

    private void getAllProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = iProductService.productList();
        request.setAttribute("product", productList);
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("add.jsp").forward(request, response);
    }


    private void addProductAfter(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nameProduct");
        double gia = Double.parseDouble(request.getParameter("giaProduct"));
        String mota = request.getParameter("motaProduct");
        String nhaSanXuat = request.getParameter("nhaSanXuat");

        Product product = new Product();
        product.setTenSanPham(name);
        product.setGiaSanPham(gia);
        product.setMoTaSanPham(mota);
        product.setNhaSanPham(nhaSanXuat);
        iProductService.addProduct(product);
        response.sendRedirect("product");


    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("deleteid"));
        iProductService.deleteProduct(id);
        response.sendRedirect("product");

    }

    private void showUpdateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("uid"));
        Product product = iProductService.showUpdateProduct(id);
        request.setAttribute("updateProduct", product);
        request.getRequestDispatcher("update.jsp").forward(request, response);
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idProductupdate"));
        String ten = request.getParameter("nameProductupdate");
        double gia = Double.parseDouble(request.getParameter("giaProductupdate"));
        String mota = request.getParameter("motaProductupdate");
        String nhaSanXuat = request.getParameter("nhaSanXuatupdate");

        Product product = new Product();
        product.setId(id);
        product.setTenSanPham(ten);
        product.setGiaSanPham(gia);
        product.setMoTaSanPham(mota);
        product.setNhaSanPham(nhaSanXuat);
        iProductService.updateProduct(product);
        response.sendRedirect("product");
    }

    private void showView(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("uid"));
        Product product = iProductService.showUpdateProduct(id);
        request.setAttribute("updateProduct", product);
        request.getRequestDispatcher("deital.jsp").forward(request, response);
    }

    private void searchProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String name = request.getParameter("search");
        List<Product> productList = iProductService.searchProduct(name);
        request.setAttribute("product", productList);
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }
}
