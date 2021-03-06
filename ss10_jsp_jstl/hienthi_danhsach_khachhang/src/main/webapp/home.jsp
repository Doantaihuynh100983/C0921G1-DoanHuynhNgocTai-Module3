<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/23/2021
  Time: 1:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table class="table table-dark">
    <thead>
    <tr>
        <th scope="col">TÊN</th>
        <th scope="col">NGÀY SINH</th>
        <th scope="col">ĐỊA CHỈ</th>
        <th scope="col">ẢNH</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${khachHangP}" var="i">
        <tr>
            <td>${i.hoten}</td>
            <td>${i.ngaySinh}</td>
            <td>${i.diaChi}</td>
            <td> <img class="active" src="${i.anh}" alt="" style="width: 70px ; height: 70px"></td>
        </tr>
    </c:forEach>
    </tbody>

</table>
</body>
</html>
