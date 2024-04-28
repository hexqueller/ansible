# Ansible by BesedinDV (only CentOS 7)

Этот репозиторий содержит примерно столько Ansible ролей:

* **nginx**: Эта роль установит nginx на сервер.
* **victoria-metrics**: Устанавливает викторию, node_exporter и настраивает мониторинг через grafana. Подойдет для конфигурации all-in-one!
* **victoria-cluster**: Устанавливает кластерную версию. В этом примере настроенна на отказоустойчивость.
* **grafana**: Устанавливает grafana-server на CentOS7. Для работы в каталоге нужен файл .rpm и переменная его версии {{grafana_version}}
* **grafana-configurate**: Проливает на сервер с графаной datasource и dashboard's.
* **site-deploy**: Конфигурирует nginx и закидывает пример сайта.

## Использование

Для работы следует создать плейбук и добавить нужные роли. Пример:

```yaml
---
- hosts: all
  roles:
    - nginx
    - victoria-metrics

- hosts: nodes
  roles:
    - victoria-cluster
```
## P.S Роли victoria имеют вложенные роли grafana и grafana-configurate
https://gitlab.com/xavki/tutoriels-victoriametrics/-/tree/main?ref_type=heads