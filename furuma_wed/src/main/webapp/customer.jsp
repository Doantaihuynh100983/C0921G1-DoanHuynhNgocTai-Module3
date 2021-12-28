<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/27/2021
  Time: 11:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
    <link rel="stylesheet" href="bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap4.min.css">
</head>

<body>
<div class="dashboard-main-wrapper">
    <div class="dashboard-header">
        <nav class="navbar navbar-expand-lg bg-white fixed-top">
            <a class="navbar-brand" href="customer.html">Concept</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto navbar-right-top">
                    <li class="nav-item">
                        <div id="custom-search" class="top-search-bar">
                            <input class="form-control" type="text" placeholder="Search..">
                        </div>
                    </li>
                    <li class="nav-item dropdown notification">
                        <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i> <span
                                class="indicator"></span></a>
                        <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                            <li>
                                <div class="notification-title"> Notification</div>
                                <div class="notification-list">
                                    <div class="list-group">
                                        <a href="#" class="list-group-item list-group-item-action active">
                                            <div class="notification-info">
                                                <div class="notification-list-user-img"><img
                                                        src="assets/images/avatar-2.jpg" alt=""
                                                        class="user-avatar-md rounded-circle"></div>
                                                <div class="notification-list-user-block"><span
                                                        class="notification-list-user-name">Jeremy Rakestraw</span>accepted
                                                    your invitation to join the team.
                                                    <div class="notification-date">2 min ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item list-group-item-action">
                                            <div class="notification-info">
                                                <div class="notification-list-user-img"><img
                                                        src="assets/images/avatar-3.jpg" alt=""
                                                        class="user-avatar-md rounded-circle"></div>
                                                <div class="notification-list-user-block"><span
                                                        class="notification-list-user-name">John Abraham </span>is now
                                                    following you
                                                    <div class="notification-date">2 days ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item list-group-item-action">
                                            <div class="notification-info">
                                                <div class="notification-list-user-img"><img
                                                        src="assets/images/avatar-4.jpg" alt=""
                                                        class="user-avatar-md rounded-circle"></div>
                                                <div class="notification-list-user-block"><span
                                                        class="notification-list-user-name">Monaan Pechi</span> is
                                                    watching your main repository
                                                    <div class="notification-date">2 min ago</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item list-group-item-action">
                                            <div class="notification-info">
                                                <div class="notification-list-user-img"><img
                                                        src="assets/images/avatar-5.jpg" alt=""
                                                        class="user-avatar-md rounded-circle"></div>
                                                <div class="notification-list-user-block"><span
                                                        class="notification-list-user-name">Jessica Caruso</span>accepted
                                                    your invitation to join the team.
                                                    <div class="notification-date">2 min ago</div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="list-footer"><a href="#">View all notifications</a></div>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown connection">
                        <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false"> <i class="fas fa-fw fa-th"></i> </a>
                        <ul class="dropdown-menu dropdown-menu-right connection-dropdown">
                            <li class="connection-list">
                                <div class="row">
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                        <a href="#" class="connection-item"><img src="assets/images/github.png" alt="">
                                            <span>Github</span></a>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                        <a href="#" class="connection-item"><img src="assets/images/dribbble.png"
                                                                                 alt=""> <span>Dribbble</span></a>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                        <a href="#" class="connection-item"><img src="assets/images/dropbox.png" alt="">
                                            <span>Dropbox</span></a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                        <a href="#" class="connection-item"><img src="assets/images/bitbucket.png"
                                                                                 alt=""> <span>Bitbucket</span></a>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                        <a href="#" class="connection-item"><img src="assets/images/mail_chimp.png"
                                                                                 alt=""><span>Mail chimp</span></a>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                        <a href="#" class="connection-item"><img src="assets/images/slack.png" alt="">
                                            <span>Slack</span></a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="conntection-footer"><a href="#">More</a></div>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown nav-user">
                        <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false"><img src="assets/images/avatar-1.jpg" alt=""
                                                                           class="user-avatar-md rounded-circle"></a>
                        <div class="dropdown-menu dropdown-menu-right nav-user-dropdown"
                             aria-labelledby="navbarDropdownMenuLink2">
                            <div class="nav-user-info">
                                <h5 class="mb-0 text-white nav-user-name">John Abraham </h5>
                                <span class="status"></span><span class="ml-2">Available</span>
                            </div>
                            <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                            <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
                            <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>

    <div class="nav-left-sidebar sidebar-dark" style="width:200px">
        <div class="menu-list">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav flex-column">
                        <li class="nav-divider">
                            Menu
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link active" href="#" data-toggle="collapse" aria-expanded="false"
                               data-target="#submenu-1" aria-controls="submenu-1"><i
                                    class="fa fa-fw fa-user-circle"></i>CUSTOMER <span
                                    class="badge badge-success">6</span></a>

                        </li>
                        <li class="nav-item ">
                            <a class="nav-link active" href="employee.jsp" data-toggle="collapse" aria-expanded="false"
                               data-target="#submenu-1" aria-controls="submenu-1"><i
                                    class="fa fa-fw fa-user-circle"></i>EMPLOYEE <span
                                    class="badge badge-success">6</span></a>

                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

    <div class="dashboard-wrapper" style="width: 500px; position: relative; left: -74px;">
        <div class="dashboard-ecommerce">
            <div class="container-fluid dashboard-content ">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">CUSTOMER</h2>
                        </div>
                    </div>
                </div>
                <div class="ecommerce-widget">

                    <div class="row">
                        <div class="col-xl-9 col-lg-12 col-md-6 col-sm-12 col-12">
                            <div class="card" style="width: 68rem">
                                <h5 class="card-header"><a style="color: red">ADD NEW CUSTOMER</a></h5>
                                <div class="card-body p-0">

                                        <table class="table table-striped table-bordered" id="tableCustomer">
                                            <thead class="bg-light" >

                                            <tr class="border-0">
<%--                                                int maSo, String hoTen, Date ngaySinh, int gioiTinh, --%>
<%--                                                int cmnd, int soDienThoai, String email, String loaiKhach, String diaChi--%>
                                                <th class="border-0">Mã Số</th>
                                                <th class="border-0">Họ Tên</th>
                                                <th class="border-0">Ngày Sinh</th>
                                                <th class="border-0">Giới Tính</th>
                                                <th class="border-0">CMND</th>
                                                <th class="border-0">SỐ ĐIỆN THOẠI</th>
                                                <th class="border-0">EMAIL</th>
                                                <th class="border-0">LOẠI KHÁCH</th>
                                                <th class="border-0">ĐỊA CHỈ</th>
                                                <th class="border-0">STATUS</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${customerList}" var="customer">
                                            <tr>
                                                <td>${customer.maSo}</td>
                                                <td>${customer.hoTen}</td>
                                                <td>${customer.ngaySinh}</td>
                                                <td>
                                                    <c:if test="${customer.gioiTinh == 0}">
                                                           <p>Nam</p>
                                                    </c:if>
                                                    <c:if test="${customer.gioiTinh == 1}">
                                                        <p>Nữ</p>
                                                    </c:if>
                                                </td>
<%--                                                <td>${customer.gioiTinh}</td>--%>
                                                <td>${customer.cmnd}</td>
                                                <td>${customer.soDienThoai}</td>
                                                <td>${customer.email}</td>
                                                <td>${customer.loaiKhach}</td>
                                                <td>${customer.diaChi}</td>
                                                <td>
                                                    <span class="badge-dot badge-brand mr-1"></span><a>DELETE</a>
                                                    <span class="badge-dot badge-brand mr-1"></span><a>UPDATE</a>
                                                </td>
                                            </tr>
                                            </c:forEach>
<%--                                            int maSo, String hoTen, Date ngaySinh, int gioiTinh, int cmnd, int soDienThoai,--%>
<%--                                            String email, String loaiKhach, String diaChi--%>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

            </div>
        </div>
    </div>
</div>
</div>
    <script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js" s></script>
<script src="datatables/js/dataTables.bootstrap4.min.js" s></script>
<script>
    $(document).ready(function () {
        $('#tableCustomer').dataTable({
            "dom" : 'lrtip',
            "lengthChange" : false,
            "pageLength" : 5
        });
    });

</script>
</body>

</html>
