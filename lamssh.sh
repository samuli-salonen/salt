#!/bin/bash
echo "CREATE DATABASE testi;" | sudo mariadb -u root
echo "GRANT ALL ON testi.* TO minionuser@localhost IDENTIFIED BY 'jotjH_goeYER-83jtej2-insert-better-password';" | sudo mariadb -u $
echo "Test database on tehty" | sudo tee /etc/liiba/tehty.log
