<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>

  <title>mastihin</title>
  <link rel="shortcut icon" href="http://mastihin.by/favicon.ico" />
  <link href="/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="/dist/css/bootstrap-social.css" rel="stylesheet">
  <link href="/dist/css/styles.css" rel="stylesheet">
  <link href="/dist/css/socialisons.css" rel="stylesheet">
  <script src="/dist/js/bootstrap.min.js"></script>
</head>
<body>

<%@ include file="header.jsp" %>

<div class = "affiche">
  <span class="font-affiche">Альбом 43%</span>
  <br>
  <br>
</div>
<div class = "addition">
		<span class="addition-text">
		Рекомендую делать так: сначала читаете текст, а затем слушаете трек.</span>
</div>

<div class= "lyrics-in-center">
  <c:if test = "${!empty tracks}">
    <c:forEach items = "${tracks}" var = "track">

      <div class="track container">
		<span class = "font-lyrics-name">
			${track.name}
              <a class="glyphicon glyphicon-play play-icon-style" href="musicMp3/iskry.mp3"></a>
		</span>
        <br>
		<span class="font-lyrics-style">
          ${track.text}
          <div class= "comment">
            <a  class="glyphicon glyphicon-comment comment-icon-style"  href=""></a>
          </div>
        </span>
      </div>
    </c:forEach>
  </c:if>
</div>
</body>
</html>

