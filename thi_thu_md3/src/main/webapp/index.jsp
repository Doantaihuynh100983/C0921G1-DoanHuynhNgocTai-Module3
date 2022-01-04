<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 1/4/2022
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <table class="table table-success table-striped">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Mã Bệnh Án</th>
      <th scope="col">Mã Bệnh Nhân</th>
      <th scope="col">Tên Bệnh Nhân</th>
      <th scope="col">Ngày Nhập Viện</th>
      <th scope="col">Ngày Ra Viện</th>
      <th scope="col">Lý Do Nhập Viên</th>
      <th scope="col">Tác Vụ</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${benhNhan}" var="bn">
    <tr>
      <th scope="row"><c:out value="${bn.id}"/></th>
      <th scope="row"><c:out value="${bn.benhAn.maBenhAn}"/></th>
      <th scope="row"><c:out value="${bn.maBenhNhan}"/></th>
      <th scope="row"><c:out value="${bn.tenBenhNhan}"/></th>
      <th scope="row"><c:out value="${bn.ngayNhapVien}"/></th>
      <th scope="row"><c:out value="${bn.ngayRaVien}"/></th>
      <th scope="row"><c:out value="${bn.lyDoNhapVien}"/></th>
      <th scope="row">
        <a type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal${bn.id}">
          DELETE
        </a>
        <a class="btn btn-danger" type="button" href="/benhnhan?actionBenhNhan=viewsUpdate&uid=${bn.id}">UPDATE</a>
      </th>
    </tr>


      <!-- Button trigger modal -->


      <!-- Modal -->
      <div class="modal fade" id="exampleModal${bn.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ${bn.id}
            </div>
            <div class="modal-footer">
              <a type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</a>
              <a type="button" class="btn btn-danger" href="/benhnhan?actionBenhNhan=deleteBenhNhan&did=${bn.id}" >DELETE</a>
            </div>
          </div>
        </div>
      </div>


    </c:forEach>
    </tbody>
  </table>
  </body>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
          integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
          integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</html>
