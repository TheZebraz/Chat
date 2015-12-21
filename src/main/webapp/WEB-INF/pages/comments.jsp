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
    <span class="font-affiche">Комментарии</span>
    <br>
    <c:if test = "${!empty comments}">


          <table class="table mytable general-fon">

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
                    <button type="button" class="btn btn-default" onclick='location.href="deleteComment/${comment.idcomment}"'>Удалить</button>
                  </td>
                </sec:authorize>
              </tr>
            </c:forEach>
            </tbody>
          </table>
    </c:if>
  </div>
</div>
</body>
</html>
