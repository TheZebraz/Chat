<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="modal fade addconcert" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="contacts">

        <h1>Добавление концерта</h1>
        <form class="form-horizontal" action="<c:url value="/addConcert"/>" method="POST">
          <div class="form-group">
            <label class="control-label col-sm-2" for="date">Дата:</label>
            <div class="col-sm-10">
              <input class="form-control" id="date" name="date" placeholder="Введите дату мероприятия">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="info">Информация:</label>

            <div class="col-sm-10">
              <textarea class="form-control" rows="5" id="info" name="info" placeholder="Введите информация о концерте"></textarea>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <button type="submit" class="btn btn-default">Добавить концерт</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
