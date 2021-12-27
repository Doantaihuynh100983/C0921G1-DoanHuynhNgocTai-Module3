<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/27/2021
  Time: 7:43 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>View Product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/product">Back to Product list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td> ${updateProduct.tenSanPham}</td>
    </tr>
    <tr>
        <td>Giá: </td>
        <td> ${updateProduct.giaSanPham}</td>
    </tr>
    <tr>
        <td>Mô Tả: </td>
        <td> ${updateProduct.moTaSanPham}</td>
    </tr>
    <tr>
        <td>Nhà Sản Xuất: </td>
        <td> ${updateProduct.nhaSanPham}</td>
    </tr>
</table>
</body>
</html>
