#!/bin/bash

elk_ver=8.13.4
grafana_ver=10.4.2-1.x86_64

centos_url="https://ftpmirror.your.org/pub/CentOS-Stream-All/9-stream/BaseOS/x86_64/iso/CentOS-Stream-9-latest-x86_64-dvd1.iso"
centos_file="vagrant/CentOS-Stream-Vagrant-9-20230704.1.x86_64.vagrant-virtualbox.box"

elk_url="https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-${elk_ver}-x86_64.rpm"
elk_file="roles/elk/files/elasticsearch-${elk_ver}-x86_64.rpm"

logstash_url="https://artifacts.elastic.co/downloads/logstash/logstash-${elk_ver}-x86_64.rpm"
logstash_file="roles/elk/files/logstash-${elk_ver}-x86_64.rpm"

kibana_url="https://artifacts.elastic.co/downloads/kibana/kibana-${elk_ver}-x86_64.rpm"
kibana_file="roles/elk/files/kibana-${elk_ver}-x86_64.rpm"

grafana_url="https://dl.grafana.com/enterprise/release/grafana-enterprise-${grafana_ver}.rpm"
grafana_file="roles/grafana/files/grafana-enterprise-${grafana_ver}.rpm"

mkdir -p $(dirname $centos_file) $(dirname $elk_file) $(dirname $kibana_file) $(dirname $grafana_file)

wget -c $centos_url -O $centos_file
wget -c $elk_url -O $elk_file
wget -c $logstash_url -O $logstash_file
wget -c $kibana_url -O $kibana_file
wget -c $grafana_url -O $grafana_file
