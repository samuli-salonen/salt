#!/bin/bash
echo "CREATE DATABASE testi2;" | sudo mariadb -u root
echo "GRANT ALL ON testi.* TO lamporja@localhost IDENTIFIED BY 'jotjH_goeYER-83jtej2-insert-better-password';"$
echo "Test database on tehty" | sudo tee /etc/salt/tehty.log

