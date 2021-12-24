<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 12/24/2021
  Time: 11:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<form class="form-horizontal" action="/product?action=create" method="post">
    <fieldset>

        <!-- Form Name -->
        <legend>PRODUCTS</legend>


        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>
            <div class="col-md-4">
                <input id="product_name" name="product_name" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text">

            </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name">PRODUCT PRICE</label>
            <div class="col-md-4">
                <input id="product_price" name="product_price" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text">

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name">PRODUCT IMAGES LINK</label>
            <div class="col-md-4">
                <input id="product_images" name="product_images" placeholder="PRODUCT IMAGES LINK" class="form-control input-md" required="" type="text">

            </div>
        </div>

                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton">Single Button</label>
                    <div class="col-md-4">
                        <button id="singlebutton" name="singlebutton" class="btn btn-primary">Button</button>
                    </div>
                </div>

    </fieldset>
</form>
