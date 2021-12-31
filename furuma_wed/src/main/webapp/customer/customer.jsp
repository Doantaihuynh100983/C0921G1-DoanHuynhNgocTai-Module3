<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style type="text/css">
        .tableCustomers table, th, td {
            border: 1px solid black;

        }

        .footer {

            left: 0;
            width: 100%;
            background-color: red;
            color: white;
            text-align: center;
        }

    </style>
    <link rel="stylesheet" href="../bootstrap413/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../datatables/css/dataTables.bootstrap4.min.css"/>
</head>
<body>
<div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <img class="navbar-brand"
                 src="https://haymora.com/upload/images/cong_nghe_thong_tin/2020/codegym/codegym-logo.jpg"
                 style="width: 70px;height: 70px"/>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
                    aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarText">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                </ul>
                <span class="navbar-text text-end">
                        DOAN HUYNH NGOC TAI
                  </span>
            </div>
        </div>
    </nav>
</div>


<div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item ">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link active" aria-current="page" href="#">Employee</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/service">Service</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Concact</a>
                    </li>
                </ul>
                <form class="d-flex" method="get" action="/customer">
                    <input  type="hidden" value="searchCustomer" name="actionCustomer"/>
                    <input class="form-control me-2" name="search1" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</div>


<button type="button" class="btn btn-info"><a href="/customer?actionCustomer=viewsAddCustomer"
                                              style="text-decoration: none ; color: white">ADD NEW CUSTOMER</a></button>

<div class="tableCustomers">
    <table style="background-color:yellow ; width: 100%" class="table table-striped table-bordered" id="tableCustomer">
        <thead>
        <tr style="background-color:skyblue ;text-align: center">
            <td>ID</td>
            <td>Name</td>
            <td>Birthday</td>
            <td>Gender</td>
            <td>IdCard</td>
            <td>Phone</td>
            <td>Email</td>
            <td>Address</td>
            <td>Customer Type</td>
            <td style="background-color:red">STATUS</td>
            <%--                        customer.customerType.name--%>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${customerList}" var="i">
            <tr style="text-align: center">

                <td><c:out value="${i.customerId}"/></td>
                <td><c:out value="${i.customerName}"/></td>
                <td><c:out value="${i.customerBirthday}"/></td>
                <td>
                    <c:if test="${i.customerGender==true}">
                        <p>Nam</p>
                    </c:if>
                    <c:if test="${i.customerGender==false}">
                        <p>Nu</p>
                    </c:if>
                </td>
                <td><c:out value="${i.customerIdCard}"/></td>
                <td><c:out value="${i.customerPhone}"/></td>
                <td><c:out value="${i.customerEmail}"/></td>
                <td><c:out value="${i.customerAddress}"/></td>
                <td><c:out value="${i.customerType.customerTypeName}"/></td>
                <td>

                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal${i.customerId}">
                        DELETE
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal${i.customerId}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel" style="color: red"> BẠN CÓ MUỐN XÓA !!!!</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                     <c:out value="${i.customerName}"/>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-danger"> <a href="/customer?actionCustomer=deleteCustomer&did=${i.customerId}">DELETE</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btn btn-info">
                        <a
                            href="/customer?actionCustomer=customerByid&uid=${i.customerId}"
                            style="text-decoration: none ; color: white">UPDATE
                        </a>
                    </button>
                </td>
            </tr>

        </c:forEach>
        </tbody>

    </table>
</div>


<div class="footer">
    <p>Footer</p>
</div>


</body>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>

<script src="../jquery/jquery-3.5.1.min.js"></script>
<script src="../datatables/js/jquery.dataTables.min.js"></script>
<script src="../datatables/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableCustomer').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 6
        });
    });
</script>
</html>