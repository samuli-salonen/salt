#!/bin/bash
echo "CREATE DATABASE testi10;" | sudo mariadb -u root
echo "Test database on tehty" | sudo tee /etc/salt/tehty.log

