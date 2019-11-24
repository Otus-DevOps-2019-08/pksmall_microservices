[![Build Status](https://travis-ci.com/Otus-DevOps-2019-08/pksmall_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2019-08/pksmall_microservices)

# pksmall_microservices

pksmall microservices repository

## Branches

### gitlab-ci-1
+ Создана новая ветка
+ Создан новый виртуальный хост с помощью `docker-machine`.
+ Созданы директории и поправлены нужные файлы для запуска CI/CD.
+ Настроены нужные пайплайны и протестированы с помощью раннера.
+ Настройн динамический пайплайн.
+ Добавлена нотификация в слак канал.
+ `gitlab-ci/gitlab-runner-automation.sh` команда запуска раннера с помощью скрипта и 
  можно даже переменных добавить.
  
### docker-4
+ Создана новая ветка
+ `docker run --network host -d nginx` несколько раз запущен, но контейнер только один, т.к.
порт 80 уже занят.
+ изменить базовый префикс названия, для проекта, можно командами для построения - 
`docker-compose -p foo build` или сразу запустить проект - `docker-compose -p foo up`, 
где `foo` новый префикс для имен контейнеров
+ `docker-compose.yml` добавлено 2-х сетевая конфигурация и параметризированы некоторые
значения. Переменные вынесены в файл `.env`. В репозитария идет его пример - `.env.example`
+ `docker-compose.override.yml` добавлен в репозитарий. Задания со `*`
+ Команда `docker-compose config` пригодится для проверки новых конфигурация, без запуска `docker-compose` 

### docker-3
+ Создана новая ветка
+ Скачен и разархивирован архив с исходниками по микросервисам
+ Созданы 3 `Dockfile` для каждого из сервисов `post-py`, `comment` и `ui`
+ Собраны и протестированны контейнеры.
+ Добавлена легкая обптимизация с помощью `hadolint`

### docker-2
+ Создана новая ветка
+ Переработал структуру файлов. Подключение `TravisCI`
+ Вывод команды `docker images -a` добавлена в `docker-monolith\docker-1.log`
+ Короткое описание сравнение вывод команд добавлено в  `docker-monolith\docker-1.log`
+ `docker run --rm --pid host -ti tehbilly/htop` - тут показаны процессы основного хоста
`docker run --rm -ti tehbilly/htop` - показан только один процес в собственной namespace
+ В директории infra добавил файлы для задачи со `*`. Возможность развернуть `terraform` с докером и 
плейбук для `packer` и плейбуки для `ansible`.
