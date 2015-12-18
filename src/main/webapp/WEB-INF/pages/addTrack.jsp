<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Добавление трека</title>
  <%@ include file="commonImports.jsp" %>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
<%@ include file="adminHeader.jsp" %>
<div class="contacts">
<form:form method="post" action="addTrack" commandName="track" class="form-horizontal">
  <div class="form-group">
    <label class="control-label col-sm-2" for="name">Название:</label>
    <div class="col-sm-10">
      <form:input class="form-control" id="name" path="name" placeholder="Введите название трека">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="text">Текст:</label>

    <div class="col-sm-10">
      <form:textarea class="form-control" rows="5" id="text" path="text" placeholder="Введите текст трека(с <br>)"></form:textarea>
      <%--<input class="form-control" id="text"  placeholder="Введите текст трека(с <br>)">--%>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="album">Альбом:</label>
    <div class="col-sm-10">
      <form:input class="form-control" id="album" path="album" placeholder="Введите название альбома">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="record">Запись:</label>
    <div class="col-sm-10">
      <form:input class="form-control" id="record" path="record" placeholder="Введите номер записи">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Добавить</button>
    </div>
  </div>
</form:form>
</div>
</body>
</html>
