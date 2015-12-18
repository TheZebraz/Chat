<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавление трека</title>
  <%@ include file="commonImports.jsp" %>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
<%@ include file="adminHeader.jsp" %>
<div class="contacts">
<form method="post" action="addTrack" commandName="track" class="form-horizontal" role="form">
  <div class="form-group">
    <label class="control-label col-sm-2" for="name">Название:</label>
    <div class="col-sm-10">
      <input class="form-control" id="name" path="name" placeholder="Введите название трека">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="text">Текст:</label>

    <div class="col-sm-10">
      <textarea class="form-control" rows="5" id="text" path="text" placeholder="Введите текст трека(с <br>)"></textarea>
      <%--<input class="form-control" id="text"  placeholder="Введите текст трека(с <br>)">--%>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="album">Альбом:</label>
    <div class="col-sm-10">
      <input class="form-control" id="album" path="album" placeholder="Введите название альбома">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="record">Запись:</label>
    <div class="col-sm-10">
      <input class="form-control" id="record" path="record" placeholder="Введите номер записи">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Добавить</button>
    </div>
  </div>
</form>
</div>

  <%--<form:form method="post" action="addTrack" commandName="track">--%>
    <%--<table>--%>
      <%--<tr>--%>
        <%--<td><form:label path="name">--%>
          <%--Название--%>
        <%--</form:label></td>--%>
        <%--<td>--%>
          <%--<form:input path="name"/>--%>
        <%--</td>--%>
        <%--<td><form:errors path="name"></form:errors> </td>--%>
      <%--</tr>--%>
      <%--<tr>--%>
        <%--<td><form:label path="text">--%>
          <%--Текст--%>
        <%--</form:label></td>--%>
        <%--<td>--%>
          <%--<form:input path="text"/>--%>
        <%--</td>--%>
        <%--<td><form:errors path="text"></form:errors> </td>--%>
      <%--</tr>--%>
      <%--<tr>--%>
        <%--<td><form:label path="album">--%>
          <%--Альбом--%>
        <%--</form:label></td>--%>
        <%--<td>--%>
          <%--<form:input path="album"/>--%>
        <%--</td>--%>
        <%--<td><form:errors path="album"></form:errors> </td>--%>
      <%--</tr>--%>
      <%--<tr>--%>
        <%--<td><form:label path="record">--%>
          <%--Запись--%>
        <%--</form:label></td>--%>
        <%--<td>--%>
          <%--<form:input path="record"/>--%>
        <%--</td>--%>
        <%--<td><form:errors path="record"></form:errors> </td>--%>
      <%--</tr>--%>
      <%--<tr>--%>
          <%--<td colspan="4"><input type="submit" value="Добавить трек"/></td>--%>
      <%--</tr>--%>
    <%--</table>--%>

  <%--</form:form>--%>

</body>
</html>
