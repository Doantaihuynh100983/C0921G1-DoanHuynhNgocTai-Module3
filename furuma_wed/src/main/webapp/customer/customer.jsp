<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid black;
            padding: 8px;

        }
        body{
            background-image:url(https://i.pinimg.com/originals/29/70/67/2970675eca7523ed6e1c0408134ef246.jpg);
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: black;
            color: yellow;
        }

        .pagination {
            float: right;
        }

    </style>
</head>
<body>

<div>
    <nav class="navbar navbar-expand-lg  bg-dark">
        <div class="container-fluid">

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0  ">
                    <li class="nav-item ">
                        <a class="nav-link active text-warning" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link active text-warning" aria-current="page" href="/employee">Employee</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-warning" aria-current="page" href="/customer">Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-warning" aria-current="page" href="/service">Service</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-warning" aria-current="page" href="#">Concact</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
</div>
<h1 style="color:  yellow">CUSTOMER LIST</h1>
<form class="row g-3" method="get" action="/customer">
    <div class="col-md-4">
        <label for="employeeName" class="form-label" style="color:  yellow"> CUSTOMER NAME</label>
        <input class="form-control me-2" name="search1" type="search" placeholder="Search" aria-label="Search" id="employeeName">

    </div>
    <div class="col-md-4">
        <label for="employeePOSTISION" class="form-label" style="color:  yellow"> CUSTOMER EMAIL</label>
        <input class="form-control me-2" name="search1" type="search" placeholder="Search" aria-label="Search"  id="employeePOSTISION">
    </div>
    <div class="col-md-4">
        <label for="employeeAdress" class="form-label" style="color:  yellow"> CUSTOMER TYPE</label>
        <input class="form-control me-2" name="search1" type="search" placeholder="Search" aria-label="Search" id="employeeAdress">
    </div>
    <button class="btn btn-warning" type="submit">Search</button>
</form>



<div>
    <table style="background-color:yellow ; width: 100%" class="table table-dark table-striped table-bordered" id="customers">
        <thead>
        <tr style="background-color:skyblue ;text-align: center ;color: yellow">
            <td>ID</td>
            <td>Name</td>
            <td>Birthday</td>
            <td>Gender</td>
            <td>IdCard</td>
            <td>Phone</td>
            <td>Email</td>
            <td>Address</td>
            <td>Customer Type</td>
            <td>STATUS</td>
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
                    <a type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal${i.customerId}">
                        DELETE
                    </a>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal${i.customerId}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel" style="color: red"> BẠN CÓ MUỐN XÓA !!!!</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                   <h1 style="color: black"> <c:out value="${i.customerName}"/></h1>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                     <a href="/customer?actionCustomer=deleteCustomer&did=${i.customerId}" type="button" class="btn btn-warning">DELETE</a>
                                </div>
                            </div>
                        </div>
                    </div>
                        <a href="/customer?actionCustomer=customerByid&uid=${i.customerId}"
                           type="button" class="btn btn-warning" >UPDATE
                        </a>

                </td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
</div>

<a  type="button" class="btn btn-warning"  href="/customer?actionCustomer=viewsAddCustomer">ADD NEW CUSTOMER </a>






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
        $('#customers').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 6
        });
    });
</script>
</html>
