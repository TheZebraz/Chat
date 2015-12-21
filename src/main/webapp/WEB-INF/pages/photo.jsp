<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Фото</title>
    <%@ include file="commonImports.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="carousel-style">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner photo-style">
            <div class="item ">
                <img src="http://mastihin.by/photo/DKall.png" alt="First Slide">
            </div>
            <div class="item">
                <img class="photo-style" src="http://mastihin.by/photo/andrew.png" alt="Second Slide">
            </div>
            <div class="item">
                <img  src="http://mastihin.by/photo/dimas.png" alt="Third Slide">
            </div>
            <div class="item active">
                <img src="http://mastihin.by/photo/graffiti.png" alt="Fourth Slide">
            </div>
        </div>
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>


</body>
</html>