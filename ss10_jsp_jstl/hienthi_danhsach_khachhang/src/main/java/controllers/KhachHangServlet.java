package controllers;

import Dao.KhachHangDao;
import models.KhachHang;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "KhachHangServlet" , urlPatterns = "/home")
public class KhachHangServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        KhachHangDao khachHangDao = new KhachHangDao();
        List<KhachHang> khachHangList = khachHangDao.getAllKhachHang();

        request.setAttribute("khachHangP", khachHangList);
        request.getRequestDispatcher("home.jsp").forward(request,response);
    }
}
