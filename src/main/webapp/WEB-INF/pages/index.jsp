<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>

    <%@ include file="commonImports.jsp" %>
    <title>mastihin</title>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="affiche">
    <span class="font-affiche">Альбом 43%</span>
    <br>
    <br>
</div>
<div class="addition">
		<span class="addition-text">
		    Рекомендую делать так: сначала читаете текст, а затем слушаете трек.
        </span>
</div>

<div class="lyrics-in-center">
    <c:if test="${!empty tracks}">
        <c:forEach items="${tracks}" var="track">

            <div class="track container">
                <span class="font-lyrics-name">
                    ${track.name}
                    <a class="glyphicon glyphicon-play play-icon-style" href="musicMp3/iskry.mp3"></a>
                </span><br>
                <span class="font-lyrics-style">
                  ${track.text}
                  <div class="comment">
                      <button type="button" class="btn btn-default createCommentButton"  data-toggle="modal" data-target=".commentForm">Комментарий</button>
                      <span id="nameId" hidden>${track.name}</span>
                      <a class="glyphicon glyphicon-comment comment-icon-style" href=""></a>
                  </div>
                </span>
            </div>
        </c:forEach>
    </c:if>
    <div class="modal fade commentForm"  tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="contacts">
                    <h1>Прокомментируйте наш трек!</h1>
                    <form class="form-horizontal" id="commentCreateForm" action="<c:url value="createComment"/>" method="POST">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="idtext">Текст:</label>
                            <div class="col-sm-10">
                                <textarea class="form-control"  rows="5" id="idtext" name="text" placeholder="Введите свой комментарий"></textarea>
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
            $('.createCommentButton').click(function () {
                var name = $(this).parent().children('#nameId').text();
                var iu = '/createComment/' + name;
                $('#commentCreateForm').attr('action', iu);

            });
        });
    </script>
</div>
</body>
</html>

