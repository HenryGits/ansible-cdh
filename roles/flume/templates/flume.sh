#!/bin/bash
source /root/.bashrc;{{cdh_all_app_path}}/flume/bin/flume-ng agent --conf {{cdh_all_app_path}}/flume/conf/ -f {{cdh_all_app_path}}/flume/conf/flume.conf -n agent1