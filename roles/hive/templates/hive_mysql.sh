#!/bin/bash  
mysql -h{{groups["mysql-master"][0]}} -uroot -p'{{mysql_password}}'<<EOF
#hive源数据存储库
drop database if exists cdh_hive;
create database cdh_hive DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
EOF
exit;