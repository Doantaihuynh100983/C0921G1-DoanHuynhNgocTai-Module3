package control;

import dao.StudentDao;
import model.SinhVien;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SinhVienServlet" , urlPatterns = "/sinhvien")
public class SinhVienServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //có hai bước tại do get này
        //thứ nhất get data từ DAO qua
        StudentDao studentDao = new StudentDao();
        List<SinhVien> sinhVienList =studentDao.getAllStudent();
        //thứ hai là set date từ doget lên jsp
        request.setAttribute("SinhVienList",sinhVienList);
        request.getRequestDispatcher("show.jsp").forward(request,response);
    }
}
