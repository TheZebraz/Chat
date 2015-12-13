<h1><p align="center">Сайт группы mastihin</p></h1>

##Аннотация:
	Проект создания сайта музыкальной группы mastihin. Данный сайт позволит 
	быстро найти информацию о группе, о ближайших выступлениях. Также обеспечит
	легкий доступ к текстам и прослушиванию треков группы.Основными
	особенностями данного сайта будут: интеграция с потоковыми сервисами 
	воспроизведения музыки, легкое администрирование, быстрое добавление 
	удаление информации на страницы.  Также будет связь с основными соцсетями.
	Пользователи получат удобную «безболезненную» необязательную регистрацию, 
	простой приятный дизайн в стиле группы mastihin. Немаловажным будет наличие
	возможности развития и расширения сайта, добавления каких-либо разделов.
##Прототип:(новый домен)
	http://mastihin.by/

##Требования:
	1.	Страницы пользователей:
		1.1.	Главная:	
			1.1.1.	Меню сайта;
			1.1.2.	Кнопки перехода на страницы в соцсетях Instagram,VK,YouTube
			1.1.3.	Возможность прослушать треки;
			1.1.4.	Ближайшее выступление;
			1.1.5.	Кнопка купить билет;
			1.1.6.	В середине страницы тексты с кнопкой прослушивания трека.
			1.1.7.	Кнопка регистрации (появляется всплывающее окно, в котором 
			указывается адрес электронной почты, и пароль. Имеется кнопка забыли
			пароль, которая позволяет восстановить пароль отправив его на почту)
			1.1.8.	Кнопка войти.
		1.2.	Страница фотографий и видео:
			1.2.1.	Галерея с фото, галерея с видео.
			1.2.2.	Сортировка: по мероприятиям, по дате, все.
		1.3.	Раздел афиши:
			1.3.1.	Список(таблица) ближайших выступлений;
			1.3.2.	Кнопка купить билет;
			1.3.3.	Лента времени.
			1.3.4.	??Карта мероприятий??(Пользователю отображается)
		1.4.	Страница прослушивания:
			1.4.1.	Возможность загрузить треки, альбомы;
			1.4.2.	Интеграция с сервисами потокового прослушивания музыки;
			1.4.3.	Возможность оставить комментарий к треку(Анонимно).
		1.5.	Страница обратной связи:
			1.5.1.	Возможность написать на почту
			1.5.2.	Контакты в соцсетях
			1.5.3.	Номера телефонов
			1.5.4.	«Рады будем сотрудничать с Вами»
		1.6.	??Участники, история??
		1.7.	??Интервью, мы в СМИ:)?? 
		
	2.	Страницы для администрирования:
		2.1.	Страница добавления трека:
			2.1.1.	Возможность в один клик загрузить музыкальный файл в базу;
			2.1.2.	Drag and drop на страницу файла.
			2.1.3.	Добавление описания трека;
			2.1.4.	Добавление текста трека;
			2.1.5.	Кнопка публикации трека.
		2.2.	Страница со списком существующих треков:
			2.2.1.	Таблица с треками.
			2.2.2.	Поля: название трека, текст, продолжительность, опубликован ли,
			дата загрузки, название альбома.
			2.2.3.	Возможность просмотреть комментарии к треку (всплывающее окно 
			поверх остальной страница, которую можно скролить, комментарий можно
			удалить);
		2.3.	Страница с комментариями
			2.3.1.	Таблица последних комментариев, с указанием к какому треку
			относится комментарий, датой;
			2.3.2.	Возможность удалить комментарий;
			2.3.3.	Сортировки различные: по трекам, по дате.
			2.3.4.	Связь с почтой (при новом комментарии приходит уведомление на почту).
		2.4.	Страница добавления информации о выступлении:
			2.4.1.	Таблица выступлений
			2.4.2.	С прошедшими, и будущими мероприятиями (помечены разным цветом в
			таблице);
			2.4.3.	Кнопка добавления концерта, загрузка афиши, даты, места (??для
			последующей интеграции с картой), дополнительной информации.
			2.4.4.	Добавление фотографий или видео концертов с привязкой к конкретному 
			мероприятию (всплывающее окно поверх остальной страницы, 
			в которой можно будет указать информацию об изображениях и кнопкой, с помощь.
			Которой можно добавить изображения или видео).
		2.5.	Страница администрирования галереи:
			2.5.1.	Возможность добавления мультимедиа, удаления, изменения;
		
	3.	Основные требования к дизайну:
		Простой! Плоский дизайн. Основные цвета: черно-белая гамма. 
		Шрифт Century Gothic. Всплывающие окна, вместо перехода на отдельную страницу. 
		
	4.	Сервер
		4.1.	Управление базой данных:
			4.1.1.	Создание базы;
			4.1.2.	Чтение по запросу;
			4.1.3.	Обновление хранимой информации;
			4.1.4.	Удаление информации;
	
	5.	Требования к базе данных
		1.	Хранение изображений(ссылок)
		2.	Хранение видео(ссылок)
		3.	Хранение текстов песен с форматированием
		4.	Хранение аудиозаписей в хорошем формате и в MP3
		5.	Хранение информации о мероприятиях

##Коммиты:
	1."encoding fix":
		-Соцсети в новых окнах
		-Корректно отображается во всех браузерах
		-Решена проблема с кодировками
		-Добавлен фавикон(не работает в google chrome!!!)
		-Добавлена ссылка на youtube канал
	2."video plus affiche plus music plus soundcloud":
		-Добавлен раздел видео
		-Добавлен раздел музыка
		-Добавлена афиша
		-Добавлена ссылка на soundcloud
##Пофиксить:
		-мобильная верстка
		-страница Фото зум на разных экранах
		-добавить комменты
		-добавить регистрацию и вход в систему
