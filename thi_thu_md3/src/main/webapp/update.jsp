<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/31/2021
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <form method="post" action="/benhnhan?actionBenhNhan=updateBenhNhan">
        <h2>ADD NEW BENH NHAN</h2>
        <div class="col-md-6">
            <div class="form-group">
                <input type="hidden" class="form-control"  name="id_benh_nhan" value="${benhNhanByid.id}" readonly>
            </div>

        </div>


            <div class="col-md-6">
                <div class="form-group">
                    <label for="first">Mã Bệnh Án</label>
                    <input type="text" class="form-control" id="first" name="ma_benh_an" value="${benhNhanByid.benhAn.maBenhAn}" readonly>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label for="last">Mã Bệnh Nhân</label>
                    <input type="text" class="form-control" name="ma_benh_nhan" value="${benhNhanByid.maBenhNhan}" readonly>
                </div>
            </div>
            <!--  col-md-6   -->
        <div class="col-md-6">
            <div class="form-group">
                <label for="last">Tên Bệnh Nhân</label>
                <input type="text" class="form-control" id="last" name="ten_benh_nhan" value="${benhNhanByid.tenBenhNhan}">
            </div>
            <p>${nameBenhNhan1}</p>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="last">Ngày Ra Viện</label>
                <input type="date"  class="form-control"  name="ngay_ra_vien" value="${benhNhanByid.ngayRaVien}">
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="last">Ngày Nhập Viện</label>
                <input type="date"  class="form-control"  name="ngay_nhap_vien" value="${benhNhanByid.ngayNhapVien}">
            </div>
        </div>


        <div class="col-md-6">
            <div class="form-group">
                <label for="last">Lý Do Nhập Viện</label>
                <input type="text"  class="form-control"  name="ly_do_nhap_vien" value="${benhNhanByid.lyDoNhapVien}">
            </div>
        </div>

        <button type="submit" class="btn btn-primary" >SỬA</button>
        <!-- Button trigger modal -->
        <!-- Button trigger modal -->
        <a type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Quay Lại Trang Chính
        </a>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                       Bạn Có Muốn Quay Lại Trang Chính !!!
                    </div>
                    <div class="modal-footer">
                        <a type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</a>
                        <a type="button" class="btn btn-primary" href="/benhnhan" >OK</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
</body>
</html>
