#!/bin/bash

sleep "15"
kafka-configs --zookeeper zookeeper:2182 -zk-tls-config-file /etc/zookeeper/zookeeper-client.properties --entity-type users --entity-name admin --alter --add-config 'SCRAM-SHA-256=[iterations=8192,password=admin-secret]'
kafka-configs --zookeeper zookeeper:2182 -zk-tls-config-file /etc/zookeeper/zookeeper-client.properties --entity-type users --entity-name kafka --alter --add-config 'SCRAM-SHA-256=[iterations=8192,password=admin-secret]'
kafka-configs --zookeeper zookeeper:2182 -zk-tls-config-file /etc/zookeeper/zookeeper-client.properties --entity-type users --entity-name kafka1 --alter --add-config 'SCRAM-SHA-256=[iterations=8192,password=admin-secret]'
kafka-configs --zookeeper zookeeper:2182 -zk-tls-config-file /etc/zookeeper/zookeeper-client.properties --entity-type users --entity-name kafka2 --alter --add-config 'SCRAM-SHA-256=[iterations=8192,password=admin-secret]'
kafka-configs --zookeeper zookeeper:2182 -zk-tls-config-file /etc/zookeeper/zookeeper-client.properties --entity-type users --entity-name kafka3 --alter --add-config 'SCRAM-SHA-256=[iterations=8192,password=admin-secret]'
kafka-configs --zookeeper zookeeper:2182 -zk-tls-config-file /etc/zookeeper/zookeeper-client.properties --entity-type users --entity-name kafka4 --alter --add-config 'SCRAM-SHA-256=[iterations=8192,password=admin-secret]'
kafka-configs --zookeeper zookeeper:2182 -zk-tls-config-file /etc/zookeeper/zookeeper-client.properties --entity-type users --entity-name kafka5 --alter --add-config 'SCRAM-SHA-256=[iterations=8192,password=admin-secret]'
kafka-configs --zookeeper zookeeper:2182 -zk-tls-config-file /etc/zookeeper/zookeeper-client.properties --entity-type users --entity-name kafka6 --alter --add-config 'SCRAM-SHA-256=[iterations=8192,password=admin-secret]'
kafka-configs --zookeeper zookeeper:2182 -zk-tls-config-file /etc/zookeeper/zookeeper-client.properties --entity-type users --entity-name user --alter --add-config 'SCRAM-SHA-256=[iterations=8192,password=password]'
