package control;

import dao.StudentDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteServlet" , urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //b1 get sid ở trên jsp
        String id = request.getParameter("sid");
        //b2 truyền cái sid vào DAO
        StudentDao studentDao = new StudentDao();
        studentDao.deleteSinhVien(Integer.parseInt(id));
        response.sendRedirect("sinhvien");
    }
}