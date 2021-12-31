<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/30/2021
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <style>
        .footer {

            left: 0;
            width: 100%;
            background-color: red;
            color: white;
            text-align: center;
        }
    </style>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/style.css">
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
                        <a class="nav-link active" aria-current="page" href="#">Service</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Concact</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</div>


<div>
    <section class="ftco-section">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                    <h2 class="heading-section">SERVICE</h2>
                </div>
            </div>
            <a href="/service?actionService=viewAddService" class="btn btn-success">ADD NEW SERVICE</a>
            <div class="row">
                <div class="col-md-12">
                    <div class="table-wrap">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Are</th>
                                <th>Cost</th>
                                <th>Max People</th>
                                <th>Standard Room</th>
                                <th>Pool Area</th>
                                <th>Number of Floor</th>
                                <th>Rent Type</th>
                                <th>Service Type</th>
                                <th>Description</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${serviceList}" var="sv">
                                <tr>
                                    <th scope="row"><c:out value="${sv.serviceId}"/></th>
                                    <td><c:out value="${sv.serviceName}"/></td>
                                    <td><c:out value="${sv.serviceArea}"/></td>
                                    <td><c:out value="${sv.serviceCost}"/></td>
                                    <td><c:out value="${sv.serviceMaxPeople}"/></td>
                                    <td><c:out value="${sv.standardRoom}"/></td>
                                    <td><c:out value="${sv.poolArea}"/></td>
                                    <td><c:out value="${sv.numberOfFloors}"/></td>
                                    <td><c:out value="${sv.rentType.rentTypeName}"/></td>
                                    <td><c:out value="${sv.serviceType.serviceTypeName}"/></td>
                                    <td><c:out value="${sv.descriptionOtherConvenience}"/></td>
                                    <td>
                                   <span>
                                       <a href="#" class="btn btn-success">DELETE</a>
                                       <a href="#" class="btn btn-success">UPDATE</a>
                                   </span>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</html>
