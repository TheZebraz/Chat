<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
  <title>Контакты</title>
  <%@ include file="commonImports.jsp" %>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>

  <%@ include file="header.jsp" %>

  <div class = "contacts">
    <span class= "contacts-header" >Контакты: </span><br>
    <span class= "contacts-number">+375 33 630 35 94 (MТС) Андрей </span>
    <br>
    <span class= "contacts-number">+375 44 596 90 59 (Velcom) Дима </span>
    <br>
    <span class= "contacts-item">Вконтакте: </span>
    <br>
    <a class= "contacts-number" href = "https://vk.com/9o9o9o9o9o">Андрей</a>
    <a class= "contacts-number" href = "https://vk.com/dmitrymakanin">Дима</a>
    <a class= "contacts-number" href = "https://vk.com/id4301452">Сергей</a>
  <div>
</body>
</html>