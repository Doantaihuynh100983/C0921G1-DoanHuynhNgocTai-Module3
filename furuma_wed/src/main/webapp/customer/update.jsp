
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
        body {
            background-image: url(https://i.pinimg.com/originals/7d/76/82/7d76820d403884a5f83a77728bac08d3.jpg);
        }

        .formEmployee {
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
<h1 style="text-align: center ; color: yellow">EDIT CUSTOMER</h1>
<div class="container-fluid">
    <form class="row col-8  formEmployee border bg-dark " method="post"
          action="/customer?actionCustomer=updateCustomer">
        <div class="col-md-12">
            <label class="col-md-4 control-label" for="product_id">Customer ID</label>
            <input id="product_id" name="customer_id_up" placeholder="Customer ID" class="form-control"
                   required="" type="text" value="${customerById.customerId}" readonly>
        </div>

        <!-- Text input-->
        <div class="col-md-12">
            <label class="col-md-4 control-label" for="product_name">Customer NAME</label>
            <input id="product_name" name="customer_name_up" placeholder="Customer NAME" class="form-control"
                   required="" type="text" value="${customerById.customerName}">

        </div>

        <div class="col-md-12">
            <label class="col-md-4 control-label" for="product_name">Customer BIRTHDAY</label>

            <input id="product_birthday" name="customer_birthday_up" placeholder="Customer NAME"
                   class="form-control input-md" required="" type="date" value="${customerById.customerBirthday}">

        </div>

        <div class="col-md-12">
            <label class="col-md-4 control-label" for="product_Gender">Customer Gender</label>
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

        <div class="col-md-12">
            <label class="col-md-4 control-label" for="product_name">Customer ID Card</label>
            <input id="customerIdCard" name="customerIdCard_up" placeholder="Customer ID Card"
                   class="form-control input-md" required="" type="text" value="${customerById.customerIdCard}">
        </div>

        <div class="col-md-12">
            <label class="col-md-4 control-label" for="product_name">Customer Phone</label>
            <input id="customerPhone" name="customerPhone_up" placeholder="Customer Phone" class="form-control input-md"
                   required="" type="text" value="${customerById.customerPhone}">
        </div>


        <div class="col-md-12">
            <label class="col-md-4 control-label" for="product_name">Customer Email</label>
                <input id="customerEmail" name="customerEmail_up" placeholder="Customer Email"
                       class="form-control input-md"
                       required="" type="text" value="${customerById.customerEmail}">
            </div>


            <div class="col-md-12">
                <label class="col-md-4 control-label" for="product_name">Customer Adress</label>
                    <input id="customerAddress" name="customerAddress_up" placeholder="Customer Adress"
                           class="form-control input-md" required="" type="text"
                           value="${customerById.customerAddress}">
                </div>


                <div class="col-md-12">
                    <label class="col-md-4 control-label" for="CustomerType_up">Customer Type</label>
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


                <div class="col-md-12">
                    <button id="singlebutton" name="singlebutton" class="btn btn-primary"><a
                            style="text-decoration: none ; color: #ffffff">Button</a></button>
                </div>
    </form>

</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
</html>
