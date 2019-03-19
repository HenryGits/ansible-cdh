#!/bin/bash

curl -d "dbType=DM7&host={{groups['dm-master'][0]}}&port=5236&server=&dbaUser=SYSDBA&dbaPassword={{udm_connection_password}}&userName={{udm_connection_user}}&userPassword={{udm_connection_password}}&userPassword2={{udm_connection_password}}" http://{{inventory_hostname}}:{{dmudb_port}}/dmudb/core/mvc/Start/install.do

exit;