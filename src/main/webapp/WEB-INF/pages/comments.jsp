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
      <span class="font-affiche">Комментарии</span>
      <br>
    </div>

    <c:if test = "${!empty comments}">

      <div class="panel panel-default mypanel">
        <div class="panel-heading ">
          <sec:authorize access="isAuthenticated()">
            <%--<button type="button" class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg">Добавить трек</button>--%>
            <%--<%@ include file="addTrackForm.jsp" %>--%>
          </sec:authorize>

        </div>
        <div class="panel-body">
          <table class="table mytable">

            <thead>
            <tr>
              <th>Трек</th>
              <th>Текст</th>
              <th>Дата</th>
              <sec:authorize access="hasRole('admin')">
                <th>Удалить</th>
              </sec:authorize>
            </tr>
            </thead>
            <tbody>


            <c:forEach items = "${comments}" var = "comment">
              <tr>
                <td>${comment.trackName}</td>
                <td>${comment.text}</td>
                <td>${comment.commentDate}</td>
                <sec:authorize access="hasRole('admin')">
                  <td>
                    <a href="deleteComment/${comment.idcomment}">Удалить</a>
                    <%--<button type="button" class="btn btn-default image-upd"  data-toggle="modal" data-target=".tmp">Изменить</button>--%>
                    <%--<span id="trackId" hidden>${track.id}</span>--%>
                    <%--<span id="nameId" hidden>${track.name}</span>--%>
                    <%--<span id="textId" hidden>${track.text}</span>--%>
                    <%--<span id="albumId" hidden>${track.album}</span>--%>
                    <%--<span id="recordId" hidden>${track.record}</span>--%>
                  </td>
                </sec:authorize>
              </tr>
            </c:forEach>
            </tbody>
          </table></div>
      </div>
    </c:if>
  </div>
</body>
</html>
