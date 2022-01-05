
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
<h1 style="text-align: center ; color: yellow">EDIT CUSTOMER</h1>
<div class="container-fluid">
    <form class="row col-8  formEmployee border bg-dark " action="/employee?actionEmployee=updateEmployee" method="post">

        <div class="col-md-6">
            <label for="employeeid" class="form-label">EMPLOYEE ID</label>
            <input type="text" class="form-control" id="employeeid" aria-describedby="emailHelp"
                   name="employeeId" value="${employeeById.employeeId}" readonly>
        </div>
        <div class="col-md-6">
            <label for="employeeName" class="form-label">EMPLOYEE NAME</label>
            <input type="text" class="form-control" id="employeeName" aria-describedby="emailHelp"
                   name="employeeName" value="${employeeById.employeeName}">
        </div>
        <div class="col-md-6">
            <label for="employeeBirthday" class="form-label">EMPLOYEE BIRTHDAY</label>
            <input type="date" class="form-control" id="employeeBirthday" aria-describedby="emailHelp"
                   name="employeeBirthday" value="${employeeById.employeeBirthday}">
        </div>
        <div class="col-md-6">
            <label for="employeeIdCard" class="form-label">EMPLOYEE ID CARD</label>
            <input type="text" class="form-control" id="employeeIdCard" aria-describedby="emailHelp"
                   name="employeeIdCard" value="${employeeById.employeeIdCard}">
        </div>

        <div class="col-md-6">
            <label for="employeeSalary" class="form-label">EMPLOYEE SALARY</label>
            <input type="text" class="form-control" id="employeeSalary" aria-describedby="emailHelp"
                   name="employeeSalary" value="${employeeById.employeeSalary}">
        </div>

        <div class="col-md-6">
            <label for="employeePhone" class="form-label">EMPLOYEE PHONE</label>
            <input type="text" class="form-control" id="employeePhone" aria-describedby="emailHelp"
                   name="employeePhone" value="${employeeById.employeePhone}">
        </div>

        <div class="col-md-6">
            <label for="employeeEmail" class="form-label">EMPLOYEE EMAIL</label>
            <input type="text" class="form-control" id="employeeEmail" aria-describedby="emailHelp"
                   name="employeeEmail" value="${employeeById.employeeEmail}">
        </div>

        <div class="col-md-12">
            <label for="employeeAddress" class="form-label">EMPLOYEE ADDRESS</label>
            <input type="text" class="form-control" id="employeeAddress" aria-describedby="emailHelp"
                   name="employeeAddress" value="${employeeById.employeeAddress}">
        </div>

        <div class="col-md-4">
            <label for="employeeposition" class="form-label">EMPLOYEE POSITION</label>
            <select class="form-select" aria-label="Default select example" name="position_epl" id="employeeposition">
                <c:forEach items="${position}" var="ps">
                    <c:choose>
                        <c:when test="${ employeeById.position.positionId == ps.positionId }">
                            <option value="${ps.positionId}" selected><c:out value="${ps.positionName}"/></option>
                        </c:when>
                        <c:otherwise>
                            <option value="${ps.positionId}"><c:out value="${ps.positionName}"/></option>
                        </c:otherwise>
                    </c:choose>

                </c:forEach>
            </select>
        </div>

        <div class="col-md-4">
            <label for="employeeEDUCATION" class="form-label">EMPLOYEE EDUCATION</label>
            <select class="form-select" aria-label="Default select example" name="education_epl" id="employeeEDUCATION">
                <c:forEach items="${education}" var="ed">
                    <c:choose>
                        <c:when test="${ employeeById.educationDegree.educationDegreeId == ed.educationDegreeId }">
                            <option value="${ed.educationDegreeId}" selected><c:out
                                    value="${ed.educationDegreeName}"/></option>
                        </c:when>
                        <c:otherwise>
                            <option value="${ed.educationDegreeId}"><c:out
                                    value="${ed.educationDegreeName}"/></option>
                        </c:otherwise>
                    </c:choose>

                </c:forEach>
            </select>
        </div>


        <div class="col-md-4">
            <label for="employeeDIVISION" class="form-label">EMPLOYEE DIVISION</label>
            <select class="form-select" aria-label="Default select example" name="division_epl" id="employeeDIVISION">
                <c:forEach items="${division}" var="dv">
                    <


                    <c:choose>
                        <c:when test="${ employeeById.division.divisionId == dv.divisionId }">
                            <option value="${dv.divisionId}" selected><c:out
                                value="${dv.divisionName}"/></option>
                        </c:when>
                        <c:otherwise>
                            <option value="${dv.divisionId}"><c:out
                                value="${dv.divisionName}"/></option>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-4">
            <button type="submit" class="btn btn-primary">Submit</button>
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
