#!/bin/bash

elk_ver=8.13.4
grafana_ver=10.4.2-1.x86_64

centos_url="https://cloud.centos.org/centos/7/vagrant/x86_64/images/CentOS-7-x86_64-Vagrant-2004_01.VirtualBox.box"
centos_file="vagrant/CentOS-7-x86_64-Vagrant-2004_01.VirtualBox.box"

elk_url="https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-${elk_ver}-x86_64.rpm"
elk_file="roles/elk/files/elasticsearch-${elk_ver}-x86_64.rpm"

kibana_url="https://artifacts.elastic.co/downloads/kibana/kibana-${elk_ver}-x86_64.rpm"
kibana_file="roles/elk/files/kibana-${elk_ver}-x86_64.rpm"

grafana_url="https://dl.grafana.com/enterprise/release/grafana-enterprise-${grafana_ver}.rpm"
grafana_file="roles/grafana/files/grafana-enterprise-${grafana_ver}.rpm"

mkdir -p $(dirname $centos_file) $(dirname $elk_file) $(dirname $kibana_file) $(dirname $grafana_file)

wget -c $centos_url -O $centos_file
wget -c $elk_url -O $elk_file
wget -c $kibana_url -O $kibana_file
wget -c $grafana_url -O $grafana_file
