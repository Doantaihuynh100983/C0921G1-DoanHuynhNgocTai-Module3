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

<form class="form-horizontal" method="post" action="/customer?actionCustomer=updateCustomer">
    <!-- Form Name -->
    <legend>CUSTOMER</legend>


    <!-- Text input-->
    <div class="form-group">
        <label class="col-md-4 control-label" for="product_id">Customer ID</label>
        <div class="col-md-4">
            <input id="product_id" name="customer_id_up" placeholder="Customer ID" class="form-control input-md"
                   required="" type="text" value="${customerById.customerId}" readonly>

        </div>
    </div>

    <!-- Text input-->
    <div class="form-group">
        <label class="col-md-4 control-label" for="product_name">Customer NAME</label>
        <div class="col-md-4">
            <input id="product_name" name="customer_name_up" placeholder="Customer NAME" class="form-control input-md"
                   required="" type="text" value="${customerById.customerName}">
        </div>


    </div>

    <div class="form-group">
        <label class="col-md-4 control-label" for="product_name">Customer BIRTHDAY</label>
        <div class="col-md-4">
            <input id="product_birthday" name="customer_birthday_up" placeholder="Customer NAME"
                   class="form-control input-md" required="" type="date" value="${customerById.customerBirthday}">

        </div>

    </div>

    <div class="form-group">
        <label class="col-md-4 control-label" for="product_Gender">Customer Gender</label>
        <div class="col-md-4">
            <select id="product_Gender" name="product_Gender_up" class="form-control">
                <option selected>
                    <c:if test="${customerById.customerGender==true}">
                        <p>Nam</p>
                    </c:if>
                    <c:if test="${customerById.customerGender==false}">
                        <p>Nữ</p>
                    </c:if>
                </option>
                <option value="true">NAM</option>
                <option value="false">NỮ</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-4 control-label" for="product_name">Customer ID Card</label>
        <div class="col-md-4">
            <input id="customerIdCard" name="customerIdCard_up" placeholder="Customer ID Card"
                   class="form-control input-md" required="" type="text" value="${customerById.customerIdCard}">

        </div>


    </div>

    <div class="form-group">
        <label class="col-md-4 control-label" for="product_name">Customer Phone</label>
        <div class="col-md-4">
            <input id="customerPhone" name="customerPhone_up" placeholder="Customer Phone" class="form-control input-md"
                   required="" type="text" value="${customerById.customerPhone}">

        </div>


    </div>


    <div class="form-group">
        <label class="col-md-4 control-label" for="product_name">Customer Email</label>
        <div class="col-md-4">
            <input id="customerEmail" name="customerEmail_up" placeholder="Customer Email" class="form-control input-md"
                   required="" type="text" value="${customerById.customerEmail}">

        </div>


    </div>


    <div class="form-group">
        <label class="col-md-4 control-label" for="product_name">Customer Adress</label>
        <div class="col-md-4">
            <input id="customerAddress" name="customerAddress_up" placeholder="Customer Adress"
                   class="form-control input-md" required="" type="text" value="${customerById.customerAddress}">

        </div>


    </div>


    <div class="form-group">
        <label class="col-md-4 control-label" for="CustomerType_up">Customer Type</label>
        <div class="col-md-4">
            <select name="CustomerType_up" id="CustomerType_up" class="form-control">
                <c:forEach var="o" items="${customerType}">
                    <c:choose>
                        <c:when test="${customerById.customerType.customerTypeId == o.customerTypeId}">
                            <option selected value="${o.customerTypeId}">${o.customerTypeName}</option>
                        </c:when>
                        <c:otherwise>
                            <option value="${o.customerTypeId}">${o.customerTypeName}</option>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </select>

        </div>
    </div>


    <div class="form-group">

        <label class="col-md-4 control-label" for="singlebutton">Single Button</label>
        <div class="col-md-4">
            <button id="singlebutton" name="singlebutton" class="btn btn-primary"><a
                    style="text-decoration: none ; color: #ffffff">Button</a></button>
        </div>

    </div>

</form>


</body>
</html>
