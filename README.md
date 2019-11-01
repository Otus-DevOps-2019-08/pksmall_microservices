# pksmall_microservices
pksmall microservices repository

## Branches

### docker-2
+ Создана новая ветка
+ Переработал структуру файлов. Подключение `TravisCI`
+ Вывод команды `docker images -a` добавлена в `docker-monolith\docker-1.log`
+ Короткое описание сравнение вывод команд добавлено в  `docker-monolith\docker-1.log`
+ `docker run --rm --pid host -ti tehbilly/htop` - тут показаны процессы основного хоста
`docker run --rm -ti tehbilly/htop` - показан только один процес в собственно namespace
