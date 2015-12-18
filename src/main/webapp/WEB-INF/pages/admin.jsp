<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
  <title>Редактор треков</title>
  <%@ include file="commonImports.jsp" %>

</head>
<body>

  <%@ include file="adminHeader.jsp" %>

  <div class="table-responsive">
    <div class="affiche">
      <span class="font-affiche">Редактор треков</span>
      <br>
    </div>

    <c:if test = "${!empty tracks}">
      <div class="panel panel-default mypanel">
        <div class="panel-heading ">
              <button type="button" class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg">Добавить трек</button>
               <%@ include file="addTrackForm.jsp" %>
        </div>
        <div class="panel-body">
      <table class="table mytable">

        <thead>
        <tr>
          <th>Название</th>
          <th>Текст</th>
          <th>Альбом</th>
          <th>Запись</th>
          <th>Удалить</th>
        </tr>
        </thead>
        <tbody>



        <c:forEach items = "${tracks}" var = "track">
          <tr>
            <td>${track.name}</td>
            <td>${track.text}</td>
            <td>${track.album}</td>
            <td>${track.record}</td>
            <td><a href="deleteTrack/${track.id}">Удалить</a> </td>
          </tr>
        </c:forEach>
        </tbody>
      </table></div>
      </div>
    </c:if>
  </div>
  <%--<script>--%>
    <%--javascript: (--%>
            <%--function () {--%>
              <%--var css = 'html {-webkit-filter: invert(100%);' +--%>
                              <%--'-moz-filter: invert(100%);' +--%>
                              <%--'-o-filter: invert(100%);' +--%>
                              <%--'-ms-filter: invert(100%); }',--%>
                      <%--head = document.getElementsByTagName('head')[0],--%>
                      <%--style = document.createElement('style');--%>

              <%--if (!window.counter) { window.counter = 1;} else  { window.counter ++;--%>
                <%--if (window.counter % 2 == 0) { var css ='html {-webkit-filter: invert(0%); -moz-filter: invert(0%); -o-filter: invert(0%); -ms-filter: invert(0%); }'}--%>
              <%--};--%>

              <%--style.type = 'text/css';--%>
              <%--if (style.styleSheet){--%>
                <%--style.styleSheet.cssText = css;--%>
              <%--} else {--%>
                <%--style.appendChild(document.createTextNode(css));--%>
              <%--}--%>

              <%--head.appendChild(style);--%>
            <%--}());--%>
  <%--</script>--%>

</body>
</html>