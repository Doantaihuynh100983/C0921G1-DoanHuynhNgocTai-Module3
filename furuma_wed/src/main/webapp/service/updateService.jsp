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
    <form method="post" action="/service?actionService=updateService">
        <h2>UPDATE SERVICE</h2>
        <div class="col-md-6">
            <div class="form-group">
                <label for="first">Service ID</label>
                <input type="text" class="form-control" id="" name="service_id_u" value="${serviceById.serviceId}" readonly>
            </div>
            </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="first">Service Name</label>
                    <input type="text" class="form-control" id="first" name="service_name_u" value="${serviceById.serviceName}">
                </div>
            </div>
            <!--  col-md-6   -->

            <div class="col-md-6">
                <div class="form-group">
                    <label for="last">Service Area</label>
                    <input type="text" class="form-control" id="last" name="service_area_u" value="${serviceById.serviceArea}">
                </div>
            </div>
            <!--  col-md-6   -->
        </div>


        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="company">Service Cost</label>
                    <input type="text" class="form-control" id="company" name="service_cost_u" value="${serviceById.serviceCost}">
                </div>


            </div>
            <!--  col-md-6   -->

            <div class="col-md-6">

                <div class="form-group">
                    <label for="phone">Service Max People</label>
                    <input type="text" class="form-control" id="phone" name="service_max_people_u" value="${serviceById.serviceMaxPeople}">
                </div>
            </div>
            <!--  col-md-6   -->
        </div>
        <!--  row   -->


        <div class="row">
            <div class="col-md-6">

                <div class="form-group">
                    <label for="StandardRoom">Standard Room</label>
                    <input type="text" class="form-control" id="StandardRoom" name="service_standard_room_u" value="${serviceById.standardRoom}">
                </div>
            </div>
            <!--  col-md-6   -->
            <div class="col-md-6">

                <div class="form-group">
                    <label for="poolArea">Pool Area</label>
                    <input type="text" class="form-control" id="poolArea" name="service_pool_area_u" value="${serviceById.poolArea}">
                </div>
            </div>

            <!--  col-md-6   -->
        </div>


        <div class="row">
            <div class="col-md-6">

                <div class="form-group">
                    <label for="numberOfFloors">Number Of Floors</label>
                    <input type="text" class="form-control" id="numberOfFloors" name="service_number_of_floor_u" value="${serviceById.numberOfFloors}">
                </div>
            </div>
            <!--  col-md-6   -->
            <div class="col-md-6">

                <div class="form-group">
                    <label>Rent Type</label><br>
                    <c:forEach var="rentype" items="${renTypeList}" >
                        <div class="form-check form-check-inline">
                            <c:choose>
                                    <c:when test="${ serviceById.rentType.rentTypeId == rentype.rentTypeId}">
                                        <input class="form-check-input" type="radio" name="rentType" id="rentType_u" value="${rentype.rentTypeId}"  checked>
                                        <label class="form-check-label" for="rentType_u">
                                            <c:out value="${rentype.rentTypeName}"/>
                                        </label>
                                    </c:when>
                                    <c:otherwise>
                                        <input class="form-check-input" type="radio" name="rentType" id="rentType_u" value="${rentype.rentTypeId}" >
                                        <label class="form-check-label" for="rentType_u">
                                            <c:out value="${rentype.rentTypeName}"/>
                                        </label>
                                    </c:otherwise>
                            </c:choose>
                        </div>
                    </c:forEach>
                </div>
            </div>


            <!--  col-md-6   -->
        </div>

        <div class="row">
            <div class="col-md-6">

                <div class="form-group">
                    <label for="ServiceType_u">Service Type</label>
                    <br>
                    <select id="ServiceType_u"  class="form-select" aria-label="Default select example"  name="ServiceType_u">
                        <c:forEach items="${serviceTypeList}" var="svl">
                            <c:choose>
                                <c:when test="${serviceById.serviceType.serviceTypeId == svl.serviceTypeId}">
                                    <option selected value="${svl.serviceTypeId}">${svl.serviceTypeName}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${svl.serviceTypeId}">${svl.serviceTypeName}</option>
                                </c:otherwise>
                            </c:choose>

                        </c:forEach>
                    </select>
                </div>
            </div>

            <!--  col-md-6   -->
            <div class="col-md-6">

                <div class="form-group">
                    <label for="descriptionOtherConvenience">Description</label>
                    <input type="text" class="form-control" id="descriptionOtherConvenience" name="descriptionOtherConvenience_u" value="${serviceById.descriptionOtherConvenience}">
                </div>
            </div>


        </div>


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
