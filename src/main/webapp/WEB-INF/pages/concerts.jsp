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

<div class="table-responsive general-font">

  <div class="affiche general-font">
    <span class="font-affiche">Концерты</span>
    <br>

    <c:if test = "${!empty concertslist}">

      <div class="panel panel-default mypanel">
        <div class="panel-heading ">
          <sec:authorize access="isAuthenticated()">
            <button type="button" class="btn btn-default" data-toggle="modal" data-target=".addconcert">Добавить концерт</button>
            <%@ include file="addConcertForm.jsp" %>
          </sec:authorize>

        </div>
        <div class="panel-body">
          <table class="table mytable">

            <thead>
            <tr>
              <th>Дата</th>
              <th>Информация</th>
                <sec:authorize access="hasRole('admin')">
                <th>Удалить</th>
                </sec:authorize>
            </tr>
            </thead>
            <tbody>


            <c:forEach items = "${concertslist}" var = "concerts">
              <tr>
                <td>${concerts.date}</td>
                <td>${concerts.info}</td>
                  <sec:authorize access="hasRole('admin')">
                  <td>
                    <button type="button" class="btn btn-default" onclick='location.href="deleteConcert/${concerts.id}"'>Удалить</button>
                  <button type="button" class="btn btn-default chConcert"  data-toggle="modal" data-target=".changeConcert">Изменить</button>
                  <span id="concertId" hidden>${concerts.id}</span>
                  <span id="dateId" hidden>${concerts.date}</span>
                  <span id="infoId" hidden>${concerts.info}</span>
                  </td>
                  </sec:authorize>
              </tr>
            </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </c:if>

    <div class="modal fade changeConcert" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="contacts">

            <h1>Изменение концерта</h1>
            <form class="form-horizontal" id="changeConcert" action="<c:url value=""/>" method="POST">
              <div class="form-group">
                <label class="control-label col-sm-2" for="iddate">Дата:</label>
                <div class="col-sm-10">
                  <input class="form-control" id="iddate" name="date" placeholder="Введите дату мероприятия">
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-2" for="idinfo">Информация:</label>

                <div class="col-sm-10">
                  <textarea class="form-control" rows="5" id="idinfo" name="info" placeholder="Введите информация о концерте"></textarea>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-default">Изменить концерт</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>


    <script>
      $( document ).ready(function() {
        $('.chConcert').click(function () {
          var id = $(this).parent().children('#concertId').text();
          var date = $(this).parent().children('#dateId').text();
          var info = $(this).parent().children('#infoId').text();
          var iu = '/updateConcert/' + id;
          var dateField = document.getElementById('iddate');
          var infoField = document.getElementById('idinfo');
          dateField.value = date;
          infoField.value = info;
          $('#changeConcert').attr('action', iu);
        });
      });
    </script>
  </div>
</div>
</body>
</html>

