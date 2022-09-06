#!/usr/bin/env bash
sudo su
cp "$0" ../../usr/share/tomcat/webapps/
./../../usr/share/tomcat/bin/shutdown.sh
./../../usr/share/tomcat/bin/startup.sh
