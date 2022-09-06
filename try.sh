#!/usr/bin/env bash
sudo su

cd /usr/share/tomcat
ls -la
ls

sudo service jenkins restart
/usr/share/tomcat/bin
./shutdown.sh
