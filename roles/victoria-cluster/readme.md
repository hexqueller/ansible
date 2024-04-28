Роль для установки и настройки кластерного варианта Victoria Metrics

При данной настройке подразумевается, что у каждой ноды будет свой вариант следующих сервисов:
--vminsert
--vmselect
--vmstorage
--vmagent
--vmauth




http://192.168.1.10:8481/select/1/
http://192.168.1.11:8481/select/1/

http://localhost:8427 - VMAuth для Grafana
(Регулируется переменной "grafana_server_url" и "datasource_port" (для группы nodes проставил переменную в значение 8427))

http://192.168.1.10:3000/d/edjxg2kjzo268d/system?orgId=1&refresh=5s - должен открыться дашбоард