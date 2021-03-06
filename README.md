[![Build Status](https://travis-ci.com/Otus-DevOps-2019-08/pksmall_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2019-08/pksmall_microservices)

# pksmall_microservices

pksmall microservices repository

## Branches

### kubernetes-5
+ Создана новая ветка
+ Развернул `prometheus` из `helm chart`-а.
+ Включил `node-exporter` в `custom-values.yml`.
+ Разделил `reddit-endpoint` на 3 части `post-endpoint`, `ui-endpoint`, `comment-endpoint`.
+ Параметризировал старый дашборд. 
+ Создал `helm` чарт для `efk`. *   

### kubernetes-4
+ Создана новая ветка
+ `helm init` в версии 3 больше уже не нужен.
+ `helm search` изменилась, добавлены параметры `hub` и `repo`. `hub` - ведет поиск 
в репозитарии хелма, `repo` - использует свой/другой репозитарий, созданный самостоятельно
или добавленный с помощью `help repo add`. И `version` это версия чарта, а не самого 
приложения в списке получаемым с помощью `help search hub appName`.
+ `helm` развернут и протестированы все `Charts`.
+ `gitlab` развернут и протестирован.
+ обвновлены `.gitlab-ci.yml` под новый вид, как требует `gitlab`
+ связал `production` при удачной сборке `staging` с помощью `when: on_success`. * 
 
### kubernetes-3
+ Создана новая ветка
+ Добавил `tls` сертификат для доступа черех `https`
+ Добавил конфигурации `storage` для приложения.
+ Добавил в `network-policy` доступ `post` приложения. `*`

### kubernetes-2
+ Создана новая ветка
+ развернул `kubernets` в minikube
+ развернутый `kubernets` на GKE `http://35.184.167.47:32092/` `http://35.202.98.79:32092/`
+ добавил конфиг модуля `terraform`-а для развертывания `gke-k8s`. `*`  

### kubernetes-1
+ Создана новая ветка
+ Полностью отработана `kubernetes the hard way`.
+ Написан примерный план для `ansible`-плейбука для прохождения 
`kubernetes the hard way`. `*`

### logging-1
+ Создана новая ветка
+ Создан `docker-compose-logging.yml`
+ Поправлен `docker-compose.yml` для работы с `fluentd` и `zipkin`
+ Протестирована работа `fluentd`, `kibana` и `elesticsearch`
+ Добавлен `zipkin`
+ Дописано правило в `fluent.conf` для разбора 2-й лог-строки от `ui`. `*`
+ По ошибке в приложении ничего такого не нашел. Кроме  не правильных депенсев в `Gem` файлах
  и `post-app.py`. `*`

### monotoring-2
+ Создана новая ветка
+ Разделил файл `docker-compose.yml` на два.
+ Добавил `cAdivor` и `grafana` в файл `docker-compose-monitoring.yml`
+ Импортировал дашборд с сайта `grafana`
+ Создал новый дашборд для сбора метрик. Добавил графики работы приложений.
+ Добавил алертиниг в `prometheus`
+ Дописал `Makefile`. `*`
+ Добавил сбор метрик с докер демона и дашборд к нему `docker-engine-metrics_rev3.json`.`*`
+ Добавил `telegraf` и дашборд `telegraf-metrics_rev1.json`. `*`
+ Добавил 2 алерта. `CpuUserLoad` и `HighHttpRequestDuration`. `*`
+ Добавил `telegram` нотификатор. email использовать 2019 году как-то не хорошо :). `*`
+ Создал свой конфиг для `grafana`. Добавил дашборды и `stackdriver`. `**`
+ Добавил в `post` метрику `app.post_create_db_seconds` - вычесляет время создания поста. `**`


### monotoring-1
+ Создана новая ветка
+ Реорганизовал файлы
+ Добавил в `docker-compose.yml` запуск `prometheus` и `node-exporter`.
+ Добавил мониторинг `mongodb`. Используется `ssheehy/mongodb-exporter`. `*`
+ Добавил blackbox  `cloudprober`. `*`
+ Написан `Makefile` для автоматизация запуска и обновления контейнеров.

### gitlab-ci-1
+ Создана новая ветка
+ Создан новый виртуальный хост с помощью `docker-machine`.
+ Созданы директории и поправлены нужные файлы для запуска CI/CD.
+ Настроены нужные пайплайны и протестированы с помощью раннера.
+ Настройн динамический пайплайн.
+ Добавлена нотификация в слак канал. `*`
+ Использовал `kinako-executor` для билда приложения в контейнер. `*` 
+ `gitlab-ci/gitlab-runner-automation.sh` команда запуска раннера с помощью скрипта и 
  можно даже переменных добавить. `*`
  
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
