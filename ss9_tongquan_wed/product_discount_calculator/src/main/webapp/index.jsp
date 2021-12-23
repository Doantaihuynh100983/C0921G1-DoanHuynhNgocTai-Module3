<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/23/2021
  Time: 10:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Currency Converter</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Product Discount Calculator</h2>
<form action="/acount" method="post">
  <label>Product Description: </label><br/>
  <input type="text" name="Product"/><br/>
  <label>List Price: </label><br/>
  <input type="text" name="Price"/><br/>
  <label>Discount Percent: </label><br/>
  <input type="text" name="Discount"/><br/>

  <input type = "submit" id = "submit" value = "Amount"/>
</form>
</body>
</html>
