package control;

import dao.StudentDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddServlet", urlPatterns = "/add")
public class AddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("sinh_vien_id"));
        String name = request.getParameter("sinh_vien_name");
        String email = request.getParameter("sinh_vien_email");
        String contry = request.getParameter("sinh_vien_country");

        StudentDao studentDao = new StudentDao();
        studentDao.insertSinhVien(id, name, email, contry);
        response.sendRedirect("sinhvien");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
