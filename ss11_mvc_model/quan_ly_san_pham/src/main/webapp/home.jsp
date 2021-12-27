<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/27/2021
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap4.min.css">

</head>
<body>
<a href="/product?actionProduct=addProduct"><button>ADD NEW PRODUCT</button></a>

<table id="tableProduct" class="table table-sm table-dark">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">TÊN SẢN PHẨM</th>
        <th scope="col">GIÁ SẢN PHẨM</th>
        <th scope="col">MÔ TẢ SẢN PHẨM</th>
        <th scope="col">NHÀ SẢN XUẤT</th>
        <th scope="col">STATUS</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${product}">
    <tr>
        <th scope="row">${product.id}</th>
        <td>${product.tenSanPham}</td>
        <td>${product.giaSanPham}</td>
        <td>${product.moTaSanPham}</td>
        <td>${product.nhaSanPham}</td>
        <td>
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal-${product.id}">
                   DELETE
            </button>
            <button>UPDATE</button>
        </td>

    </tr>

        <div class="modal fade" id="exampleModal-${product.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-danger" id="exampleModalLabel">BẠN MUỐN XÓA</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                            ${product.tenSanPham}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-danger"><a href="/product?actionProduct=deleteProduct&deleteid=${product.id}" style="text-decoration: none ; color: white">DELETE</a></button>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>

    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script src="jquery/jquery-3.5.1.min.js"> </script>
<script src="datatables/js/jquery.dataTables.min.js"> </script>
<script src="datatables/js/dataTables.bootstrap4.min.js"> </script>
<script>
    $(document).ready(function () {
        $('#tableProduct').dataTable({
            "dom" : 'lrtip',
            "lengthChange" : false,
            "pageLength" : 5
        });
    });
</script>
</body>
</html>
