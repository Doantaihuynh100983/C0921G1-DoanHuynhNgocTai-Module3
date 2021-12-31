<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/29/2021
  Time: 1:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>

<!------ Include the above in your HEAD tag ---------->

<form class="form-horizontal" method="post" action="/customer?actionCustomer=insertCustomer">
    <!-- Form Name -->
    <legend>CUSTOMER</legend>

    <!-- Text input-->
    <div class="form-group">
        <label class="col-md-4 control-label" for="product_name">Customer NAME</label>
        <div class="col-md-4">
            <input id="product_name" name="customer_name" placeholder="Customer NAME" class="form-control input-md"
                   required="" type="text">

        </div>


    </div>

    <div class="form-group">
        <label class="col-md-4 control-label" for="product_name">Customer BIRTHDAY</label>
        <div class="col-md-4">
            <input id="product_birthday" name="customer_birthday" placeholder="Customer NAME"
                   class="form-control input-md" required="" type="date">

        </div>

    </div>

    <div class="form-group">
        <label class="col-md-4 control-label" for="product_Gender">Customer Gender</label>
        <div class="col-md-4">
            <select id="product_Gender" name="product_Gender" class="form-control">
                <option selected>MẶC ĐỊNH</option>
                <option value="true">NAM</option>
                <option value="false">NỮ</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-4 control-label" for="product_name">Customer ID Card</label>
        <div class="col-md-4">
            <input id="customerIdCard" name="customerIdCard" placeholder="Customer ID Card"
                   class="form-control input-md" required="" type="text">

        </div>


    </div>

    <div class="form-group">
        <label class="col-md-4 control-label" for="product_name">Customer Phone</label>
        <div class="col-md-4">
            <input id="customerPhone" name="customerPhone" placeholder="Customer Phone" class="form-control input-md"
                   required="" type="text">

        </div>


    </div>


    <div class="form-group">
        <label class="col-md-4 control-label" for="product_name">Customer Email</label>
        <div class="col-md-4">
            <input id="customerEmail" name="customerEmail" placeholder="Customer Email" class="form-control input-md"
                   required="" type="text">

        </div>


    </div>


    <div class="form-group">
        <label class="col-md-4 control-label" for="product_name">Customer Adress</label>
        <div class="col-md-4">
            <input id="customerAddress" name="customerAddress" placeholder="Customer Adress"
                   class="form-control input-md" required="" type="text">

        </div>


    </div>


    <div class="form-group">
        <label class="col-md-4 control-label" for="CustomerType">Customer Type</label>
        <div class="col-md-4">
            <select name="CustomerType" id="CustomerType" class="form-control">
                <c:forEach var="o" items="${customerType}">
                    <option value="${o.customerTypeId}">${o.customerTypeName}</option>
                </c:forEach>
            </select>

        </div>
    </div>


    <div class="form-group">

        <label class="col-md-4 control-label" for="singlebutton">Single Button</label>
        <div class="col-md-4">
            <button id="singlebutton" name="singlebutton" class="btn btn-primary">Button</button>
        </div>

    </div>

</form>


</body>
</html>
