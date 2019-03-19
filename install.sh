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

case $1 in

  basis)
        echo "######################################开始安装cdh 精装版#####################################"
        ansible-playbook -i $dir/hosts $dir/uninstall.yml
        ansible-playbook -i $dir/hosts $dir/basis.yml
        echo "######################################cdh 精装版完成安装#####################################"
        ;;
  professional)
        echo "######################################开始安装cdh 专业版#####################################"
        ansible-playbook -i $dir/hosts $dir/uninstall.yml
        ansible-playbook -i $dir/hosts $dir/professional.yml
        echo "######################################cdh 专业版完成安装#####################################"
        ;;
  first)
        echo "######################################开始安装cdh 图形版#####################################"
        ansible-playbook -i $dir/hosts $dir/uninstall.yml
        ansible-playbook -i $dir/hosts $dir/first.yml
        echo "######################################cdh 图形版完成安装#####################################"
       ;;
  last)
        echo "######################################开始进行cdh 图形版后续配置#####################################"
        ansible-playbook -i $dir/hosts $dir/last.yml
        echo "######################################完成cdh 图形版后续配置#####################################"
       ;;
  *)
    echo "请选择需要安装的版本： {basis(精装版)|professional(专业版)|first(cm初始环境)|last(cm后续配置)}  [例：sh install.sh basis]" ;;
esac
