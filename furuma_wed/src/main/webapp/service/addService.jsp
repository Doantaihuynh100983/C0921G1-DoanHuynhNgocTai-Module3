<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/31/2021
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <form method="post" action="/service?actionService=addService">
        <h2>ADD NEW SERVICE</h2>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="first">Service Name</label>
                    <input type="text" class="form-control" id="first" name="service_name">
                </div>
            </div>
            <!--  col-md-6   -->

            <div class="col-md-6">
                <div class="form-group">
                    <label for="last">Service Area</label>
                    <input type="text" class="form-control" id="last" name="service_area">
                </div>
            </div>
            <!--  col-md-6   -->
        </div>


        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="company">Service Cost</label>
                    <input type="text" class="form-control" id="company" name="service_cost">
                </div>


            </div>
            <!--  col-md-6   -->

            <div class="col-md-6">

                <div class="form-group">
                    <label for="phone">Service Max People</label>
                    <input type="text" class="form-control" id="phone" name="service_max_people">
                </div>
            </div>
            <!--  col-md-6   -->
        </div>
        <!--  row   -->


        <div class="row">
            <div class="col-md-6">

                <div class="form-group">
                    <label for="StandardRoom">Standard Room</label>
                    <input type="text" class="form-control" id="StandardRoom" name="service_standard_room">
                </div>
            </div>
            <!--  col-md-6   -->
            <div class="col-md-6">

                <div class="form-group">
                    <label for="poolArea">Pool Area</label>
                    <input type="text" class="form-control" id="poolArea" name="service_pool_area">
                </div>
            </div>

            <!--  col-md-6   -->
        </div>


        <div class="row">
            <div class="col-md-6">

                <div class="form-group">
                    <label for="numberOfFloors">Number Of Floors</label>
                    <input type="text" class="form-control" id="numberOfFloors" name="service_number_of_floor">
                </div>
            </div>
            <!--  col-md-6   -->
            <div class="col-md-6">

                <div class="form-group">
                    <label>Rent Type</label><br>
                    <c:forEach var="rentype" items="${renTypeList}" >
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="rentType" id="rentType" value="${rentype.rentTypeId}" name="service_rentype">
                        <label class="form-check-label" for="rentType"><c:out value="${rentype.rentTypeName}"/></label>
                    </div>
                    </c:forEach>
                </div>
            </div>

            <!--  col-md-6   -->
        </div>

        <div class="row">
            <div class="col-md-6">

                <div class="form-group">
                    <label for="ServiceType">Service Type</label>
                    <br>
                     <select id="ServiceType"  class="form-select" aria-label="Default select example"  name="ServiceType">
                         <c:forEach items="${serviceTypeList}" var="svl">
                         <option value="${svl.serviceTypeId}">${svl.serviceTypeName}</option>
                         </c:forEach>
                    </select>
                </div>
            </div>

            <!--  col-md-6   -->
            <div class="col-md-6">

                <div class="form-group">
                    <label for="descriptionOtherConvenience">Description</label>
                    <input type="text" class="form-control" id="descriptionOtherConvenience" name="descriptionOtherConvenience">
                </div>
            </div>

            <!--  col-md-6   -->
        </div>
        <!--  row   -->

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
</body>
</html>
