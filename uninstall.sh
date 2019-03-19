#!/bin/bash

dir=$(dirname $(readlink -f "$0"))
version=$(cat /etc/redhat-release|sed -r 's/.* ([0-9]+)\..*/\1/')
if [ "$version" = "7" ] ; then
    cd $dir/ansible-os7
else
    cd $dir/ansible-os6
fi
yum -y install *
cd $dir/

echo "###################################### 开始卸载dmcop2_cdh #####################################"
ansible-playbook -i $dir/hosts $dir/uninstall.yml
echo "###################################### dmcop2_cdh已完全移除 #####################################"
