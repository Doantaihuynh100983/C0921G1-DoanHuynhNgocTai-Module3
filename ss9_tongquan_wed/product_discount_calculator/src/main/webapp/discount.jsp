<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/23/2021
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <h2>Product Discount Calculator</h2>
        <h2>Product Name :<%=request.getAttribute("product")%></h2>
        <h2>Price Product :<%=request.getAttribute("price")%></h2>
        <h2>Discount Pronduct :<%=request.getAttribute("discount")%></h2>
        <h2>Amount Product : <<%=request.getAttribute("amount")%></h2>

</body>
</html>
