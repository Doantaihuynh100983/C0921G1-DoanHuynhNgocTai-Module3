package control;

import dao.StudentDao;
import model.SinhVien;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateServlet", urlPatterns = "/update")
public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("sinh_vien_id"));
        String name = request.getParameter("sinh_vien_name");
        String email = request.getParameter("sinh_vien_email");
        String adress = request.getParameter("sinh_vien_country");
        StudentDao studentDao = new StudentDao();
        studentDao.updateSinhVien(id,name,email,adress);
        response.sendRedirect("sinhvien");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("sid"));
        StudentDao dao = new StudentDao();
        SinhVien s = dao.getSinhVienByid(id);
        request.setAttribute("st",s);
        request.getRequestDispatcher("update.jsp").forward(request,response);
    }
}
