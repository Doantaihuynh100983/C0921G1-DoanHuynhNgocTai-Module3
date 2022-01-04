package controller;

import bean.BenhAn;
import bean.BenhNhan;
import service.BenhNhanService;
import service.IBenhNhanSerVice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.Map;

@WebServlet(name = "BenhNhanServlet" , urlPatterns = {"" , "/benhnhan"})
public class BenhNhanServlet extends HttpServlet {
    IBenhNhanSerVice benhNhanService = new BenhNhanService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionBenhNhan = request.getParameter("actionBenhNhan");
        if (actionBenhNhan==null){
            actionBenhNhan= "";
        }
        switch (actionBenhNhan){
            case "updateBenhNhan":
                updateBenhNhan(request,response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String actionBenhNhan = request.getParameter("actionBenhNhan");
            if (actionBenhNhan==null){
                actionBenhNhan= "";
            }
            switch (actionBenhNhan){
                case "viewsUpdate":
                    viewsUpdate(request,response);
                    break;
                case "deleteBenhNhan":
                    deleteBenhNhan(request,response);
                    break;
                default:
                    getAllBenhNhan(request,response);
                    break;
            }
    }
    private void getAllBenhNhan(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

          List<BenhNhan> benhNhanList = benhNhanService.getAllBenhNhan();
          request.setAttribute("benhNhan",benhNhanList);
          request.getRequestDispatcher("index.jsp").forward(request,response);
    }
    private void viewsUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("uid"));
        BenhNhan benhNhan = benhNhanService.getBenhNhanById(id);
        request.setAttribute("benhNhanByid",benhNhan);
        request.getRequestDispatcher("update.jsp").forward(request,response);
    }
    private  void updateBenhNhan(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("id_benh_nhan"));
            String maBenhAn = request.getParameter("ma_benh_an");
            String maBenhNhan = request.getParameter("ma_benh_nhan");
            String tenBenhNhan= request.getParameter("ten_benh_nhan");
            Date ngayRaVien= Date.valueOf(request.getParameter("ngay_ra_vien"));
            Date ngayNhapVien= Date.valueOf(request.getParameter("ngay_nhap_vien"));
            String lyDoNhapVien = request.getParameter("ly_do_nhap_vien");
            BenhAn benhAn = new BenhAn(maBenhNhan);
            BenhNhan benhNhan = new BenhNhan(id,maBenhAn,tenBenhNhan,ngayNhapVien,ngayRaVien,lyDoNhapVien,benhAn);
             Map<String,String> stringStringMap =  benhNhanService.updateBenhNhan(benhNhan);
            if (!stringStringMap.isEmpty()){
                    request.setAttribute("nameBenhNhan1",stringStringMap.get("nameBenhNhan"));
                    request.getRequestDispatcher("update.jsp").forward(request,response);
            }else {
                response.sendRedirect("benhnhan");
            }




    }
    private void deleteBenhNhan(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
              int id = Integer.parseInt(request.getParameter("did"));
               benhNhanService.deleteBenhNhan(id);
               response.sendRedirect("benhnhan");
    }
}
