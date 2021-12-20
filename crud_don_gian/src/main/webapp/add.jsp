<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/17/2021
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/add" , method="post">
    <div class="form-group">
        <label>Email address:</label>
        <input type="sinh_vien_id" class="form-control" placeholder="Enter id" id="email" name="sinh_vien_id">
    </div>
    <div class="form-group">
        <label for="pwd">Password:</label>
        <input type="sinh_vien_name" class="form-control" placeholder="Enter name" id="pwd" name="sinh_vien_name">
    </div>
    <div class="form-group">
        <label for="pwd">Password:</label>
        <input type="sinh_vien_email" class="form-control" placeholder="Enter email" id="pwe" name="sinh_vien_email">
    </div>
    <div class="form-group">
        <label for="pwd">Password:</label>
        <input type="sinh_vien_country" class="form-control" placeholder="Enter country" id="pwr" name="sinh_vien_country">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</body>