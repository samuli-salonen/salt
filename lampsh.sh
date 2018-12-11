#!/bin/bash
echo "CREATE DATABASE testi10;" | sudo mariadb -u root
echo "GRANT ALL ON testi.* TO lamporja@localhost IDENTIFIED BY '1234';"$
echo "Test database on tehty" | sudo tee /etc/salt/tehty.log

