# Выполнено ДЗ № 16
monitoring-1
 - [ ] Основное ДЗ
 - [ ] Задание со *

## В процессе сделано:
https://cloud.docker.com/u/27101988/repository/list
Запуск сервисов через докер образа теперь из docker/docker-compose.yml
настроен мониторинг 
проведены сборы метрик
## Как запустить проект:
(нужен запущенный инстанс docker-host)
* docker-machine ip docker-host
docker pull 27101988/ui
docker pull 27101988/prometeus
docker pull 27101988/comment
docker pull 27101988/pull
cd docker ; docker-compose up -d


## Как проверить работоспособность:


## PR checklist
 - [ ] Выставил label с номером домашнего задания
 - [ ] Выставил label с темой домашнего задания
