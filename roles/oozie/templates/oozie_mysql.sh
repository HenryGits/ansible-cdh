#!/bin/bash  
mysql -h{{groups["mysql-master"][0]}} -uroot -p'{{mysql_password}}'<<EOF
#Oozie数据库
drop database if exists cdh_oozie;
create database cdh_oozie DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
EOF
exit;