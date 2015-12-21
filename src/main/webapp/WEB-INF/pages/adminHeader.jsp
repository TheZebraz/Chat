
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<header >
  <nav class="custom-navbar navbar">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="brand-font navbar-brand" href="/">mastihin</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">

        <ul class="nav navbar-nav navbar-right">
          <li><a class = "navbar-menu-item" href="admin">Редактор треков</a></li>
            <li><a class = "navbar-menu-item" href="comments">Комментарии</a></li>
          <li><a class = "navbar-menu-item" href="concerts">Концерты</a></li>
        </ul>
      <ul class="nav navbar-nav navbar-right">
          <div class="login-link-container">
              <sec:authorize access="isAnonymous()">
                  <p>
                      <button type="button" class="btn btn-default general-font" onclick='location.href="/j_spring_security_check"'>Войти</button>
                  </p>
              </sec:authorize>
              <sec:authorize access="isAuthenticated()">
                  <p>
                      <button type="button" class="btn btn-default general-font" onclick='location.href="/j_spring_security_logout"'>Выйти</button>
                  </p>
              </sec:authorize>

          </div>
      </ul>
      </div>
    </div>
  </nav>
</header>