#!/bin/bash  
mysql -h{{groups["mysql-master"][0]}} -uroot -p'{{mysql_password}}'<<EOF
#hue数据库
drop database if exists cdh_hue;
create database cdh_hue DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
EOF
exit;