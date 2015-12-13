<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
  <title>Афиша</title>
  <%@ include file="commonImports.jsp" %>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

</head>
<body>

<%@ include file="header.jsp" %>

<table class="table mytable">
  <tbody>
  <tr>
    <td class="navbar-menu-item">07.06</td>
    <td class="navbar-menu-item"><a href="https://vk.com/eveningliverock">Концерт в клубе Граффити<a></td>
  </tr>
  <tr >
    <td class="navbar-menu-item">26.06</td>
    <td class="navbar-menu-item"><a href="https://vk.com/artjam3">Акустическое выступление на ART JAM<a></td>
  </tr>
  <tr>
    <td class="navbar-menu-item">21.07</td>
    <td class="navbar-menu-item"><a href="https://vk.com/openpoetrymic21">Открытый поэтический микрофон в баре "ДК"<a></td>
  </tr>
  </tbody>
</table>
</body>
</html>