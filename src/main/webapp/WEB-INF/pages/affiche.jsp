<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
  <title>Афиша</title>
  <%@ include file="commonImports.jsp" %>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

</head>
<body>

<%@ include file="header.jsp" %>
<br><br>
<c:if test = "${!empty concertslist}">


      <table class="table mytable general-font">

        <thead>
        <tr>
          <th>Дата</th>
          <th>Информация</th>
        </tr>
        </thead>
        <tbody>


        <c:forEach items = "${concertslist}" var = "concerts">
          <tr>
            <td>${concerts.date}</td>
            <td>${concerts.info}</td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
</c:if>
</body>
</html>