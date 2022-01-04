<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/29/2021
  Time: 1:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--%>
<%--    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>--%>
<%--    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>--%>
<%--</head>--%>
<%--<body>--%>

<%--<!------ Include the above in your HEAD tag ---------->--%>

<%--<form class="form-horizontal" method="post" action="/customer?actionCustomer=insertCustomer">--%>
<%--    <!-- Form Name -->--%>
<%--    <legend>CUSTOMER</legend>--%>

<%--    <!-- Text input-->--%>


<%--</form>--%>


<%--</body>--%>
<%--</html>--%>





<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 1/4/2022
  Time: 3:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../bootstrap413/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../datatables/css/dataTables.bootstrap4.min.css"/>
    <style>
        body{
            background-image:url(https://i.pinimg.com/originals/7d/76/82/7d76820d403884a5f83a77728bac08d3.jpg);
        }
        .formEmployee{
            height: 700px;
            justify-content: center;
            color: yellow;
            position: relative;
            margin: 50px auto;
            border-radius: 50px 20px;
        }
    </style>
</head>
<body>
<h1 style="text-align: center ; color: yellow">ADD NEW CUSTOMER</h1>
<div class="container-fluid">
    <form class="row col-8  formEmployee border bg-dark " action="/customer?actionCustomer=insertCustomer" method="post">
        <div class="col-md-12">
            <label class="col-md-12 control-label" for="product_name">Customer NAME</label>
                <input id="product_name" name="customer_name" placeholder="Customer NAME" class="form-control input-md"
                       required="" type="text">
                <p style="color: red"><c:out value="${nameCustomer}"/></p>
        </div>

        <div class="col-md-12">
            <label class="col-md-4 control-label" for="product_name">Customer BIRTHDAY</label>

            <input id="product_birthday" name="customer_birthday" placeholder="Customer NAME"
                   class="form-control input-md" required="" type="date">
        </div>

        <div class="col-md-12">
            <label class="col-md-4 control-label" for="product_Gender">Customer Gender</label>
                <select id="product_Gender" name="product_Gender" class="form-control">
                    <option selected>MẶC ĐỊNH</option>
                    <option value="true">NAM</option>
                    <option value="false">NỮ</option>
                </select>
        </div>

        <div class="col-md-6">
            <label class="col-md-6 control-label" for="product_name">Customer ID Card</label>
                <input id="customerIdCard" name="customerIdCard" placeholder="Customer ID Card"
                       class="form-control input-md" required="" type="text">
        </div>

        <div class="col-md-6">
            <label class="col-md-4 control-label" for="product_name">Customer Phone</label>
                <input id="customerPhone" name="customerPhone" placeholder="Customer Phone" class="form-control input-md"
                       required="" type="text">
        </div>


        <div class="col-md-6">
            <label class="col-md-4 control-label" for="product_name">Customer Email</label>
                <input id="customerEmail" name="customerEmail" placeholder="Customer Email" class="form-control input-md"
                       required="" type="text">
        </div>


        <div class="col-md-6">
            <label class="col-md-4 control-label" for="product_name">Customer Adress</label>

                <input id="customerAddress" name="customerAddress" placeholder="Customer Adress"
                       class="form-control input-md" required="" type="text">
        </div>


        <div class="col-md-12">
            <label class="col-md-4 control-label" for="CustomerType">Customer Type</label>
                <select name="CustomerType" id="CustomerType" class="form-control">
                    <c:forEach var="o" items="${customerType}">
                        <option value="${o.customerTypeId}">${o.customerTypeName}</option>
                    </c:forEach>
                </select>
        </div>


        <div class="col-md-12">
                <button id="singlebutton" name="singlebutton" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
</html>
