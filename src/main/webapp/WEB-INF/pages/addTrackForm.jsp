<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="contacts">
        <h1>Добавление трека</h1>
        <form class="form-horizontal" action="<c:url value="/addTrack"/>" method="POST">
          <div class="form-group">
            <label class="control-label col-sm-2" for="name">Название:</label>
            <div class="col-sm-10">
              <input class="form-control" id="name" name="name" placeholder="Введите название трека">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="text">Текст:</label>

            <div class="col-sm-10">
              <textarea class="form-control" rows="5" id="text" name="text" placeholder="Введите текст трека(с <br>)"></textarea>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="album">Альбом:</label>
            <div class="col-sm-10">
              <input class="form-control" id="album" name="album" placeholder="Введите название альбома">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="record">Запись:</label>
            <div class="col-sm-10">
              <input class="form-control" id="record" name="record" placeholder="Введите номер записи">
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <button type="submit" class="btn btn-default">Добавить</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
