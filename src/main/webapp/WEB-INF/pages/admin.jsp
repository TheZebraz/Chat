<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
  <title>Редактор треков</title>
  <%@ include file="commonImports.jsp" %>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>

  <%@ include file="adminHeader.jsp" %>

  <div class="table-responsive">

    <div class="affiche">
      <div class="login-link-container">
        <sec:authorize access="isAnonymous()">
          <p>
            <button type="button" class="btn btn-default" onclick='location.href="/j_spring_security_check"'>Sign In</button>
          </p>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
        <p>
          <button type="button" class="btn btn-default" onclick='location.href="/j_spring_security_logout"'>Sign Out</button>
        </p>
        </sec:authorize>
      <span class="font-affiche">Редактор треков</span>
        <br>
    </div>

    <c:if test = "${!empty tracks}">

      <div class="panel panel-default mypanel">
        <div class="panel-heading ">
          <sec:authorize access="isAuthenticated()">
            <button type="button" class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg">Добавить трек</button>
            <%@ include file="addTrackForm.jsp" %>
          </sec:authorize>

        </div>
        <div class="panel-body">
      <table class="table mytable">

        <thead>
        <tr>
          <th>Название</th>
          <th>Текст</th>
          <th>Альбом</th>
          <th>Запись</th>
          <sec:authorize access="hasRole('admin')">
            <th>Удалить</th>
          </sec:authorize>

        </tr>
        </thead>
        <tbody>


        <c:forEach items = "${tracks}" var = "track">
          <tr>
            <td>${track.name}</td>
            <td>${track.text}</td>
            <td>${track.album}</td>
            <td>${track.record}</td>
            <sec:authorize access="hasRole('admin')">
                <td>
                  <a href="deleteTrack/${track.id}">Удалить</a>
                  <button type="button" class="btn btn-default image-upd"  data-toggle="modal" data-target=".tmp">Изменить</button>
                  <span id="trackId" hidden>${track.id}</span>
                  <span id="nameId" hidden>${track.name}</span>
                  <span id="textId" hidden>${track.text}</span>
                  <span id="albumId" hidden>${track.album}</span>
                  <span id="recordId" hidden>${track.record}</span>
                </td>
            </sec:authorize>
          </tr>
        </c:forEach>
        </tbody>
      </table></div>
      </div>
    </c:if>

      <div class="modal fade tmp"  tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="contacts">
              <h1>Редактирование трека</h1>
              <form class="form-horizontal" id="trackupdater" action="<c:url value="updateTrack"/>" method="POST">
                <div class="form-group">
                  <label class="control-label col-sm-2" for="idname">Название:</label>
                  <div class="col-sm-10">
                    <input class="form-control" id="idname" name="name" placeholder="Введите название трека">
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2" for="idtext">Текст:</label>

                  <div class="col-sm-10">
                    <textarea class="form-control"  rows="5" id="idtext" name="text" placeholder="Введите текст трека(с <br>)"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2" for="idalbum">Альбом:</label>
                  <div class="col-sm-10">
                    <input class="form-control" id="idalbum" name="album" placeholder="Введите название альбома">
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2" for="idrecord">Запись:</label>
                  <div class="col-sm-10">
                    <input class="form-control" id="idrecord" name="record" placeholder="Введите номер записи">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">Изменить</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <script>
        $( document ).ready(function() {
          $('.image-upd').click(function () {
            var id = $(this).parent().children('#trackId').text();
            var name = $(this).parent().children('#nameId').text();
            var album = $(this).parent().children('#albumId').text();
            var text = $(this).parent().children('#textId').text();
            var record = $(this).parent().children('#recordId').text();
            var iu = '/updateTrack/' + id;
            var nameField = document.getElementById('idname');
            var textField = document.getElementById('idtext');
            var albumField = document.getElementById('idalbum');
            var recordField = document.getElementById('idrecord');
            nameField.value = name;
            textField.value = text;
            recordField.value = record;
            albumField.value = album;
            $('#trackupdater').attr('action', iu);

          });
        });
      </script>
  </div>
</body>
</html>