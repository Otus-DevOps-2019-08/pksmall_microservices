[![Build Status](https://travis-ci.com/Otus-DevOps-2019-08/pksmall_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2019-08/pksmall_microservices)

# pksmall_microservices

pksmall microservices repository

## Branches

### docker-2
+ Создана новая ветка
+ Переработал структуру файлов. Подключение `TravisCI`
+ Вывод команды `docker images -a` добавлена в `docker-monolith\docker-1.log`
+ Короткое описание сравнение вывод команд добавлено в  `docker-monolith\docker-1.log`
+ `docker run --rm --pid host -ti tehbilly/htop` - тут показаны процессы основного хоста
`docker run --rm -ti tehbilly/htop` - показан только один процес в собственной namespace
+ В директории infra добавил файлы для задачи со `*`. Возможность развернуть `terraform` с докером и 
плейбук для `packer` и плейбуки для `ansible`.
