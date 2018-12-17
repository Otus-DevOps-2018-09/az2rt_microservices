# Выполнено ДЗ № 12
docker-3

 - [ ] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
скачали проект, теперь каждый сервис располагается в отдельном контейнере
настроена сеть между ними
добавлен docker volume для базы
 
## Как запустить проект:

docker run -d --network=reddit --network-alias=post_db --network-alias=comment_db -v reddit_db:/data/db mongo:latest ;
docker run -d --network=reddit --network-alias=post 27101988/post:1.0 ;
docker run -d --network=reddit --network-alias=comment 27101988/comment:1.0 ;
docker run -d --network=reddit -p 9292:9292 27101988/ui:2.0

## Как проверить работоспособность:

http://35.189.192.55:9292/

## PR checklist
 - [ ] Выставил label с номером домашнего задания
 - [ ] Выставил label с темой домашнего задания
