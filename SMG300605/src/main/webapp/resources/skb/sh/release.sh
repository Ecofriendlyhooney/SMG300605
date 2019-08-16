#!/bin/bash

## Bitnami automation release shell 
##catalinaPAth="/opt/bitnami/apache-tomcat/webapps"
## catalina STOP
echo "#01/15 catalina auth"
chmod +x /opt/bitnami/apache-tomcat/bin/./catalina.sh
echo "#02/15 catalina stop"
         /opt/bitnami/apache-tomcat/bin/./catalina.sh stop
echo "#03/15 sleep 3 seconds"
sleep 3
## delete ROOT folder and file
ls -al
rm -r    /opt/bitnami/apache-tomcat/webapps/ROOT.war
echo "#04/15 old ROOT.war deleted"
rm -r    /opt/bitnami/apache-tomcat/webapps/ROOT
echo "#05/15 old ROOT folder deleted"
ls -al
echo "#06/15 sleep 1seconds"
sleep 1 
## cp new ROOT.war file
cp /home/g300605honey/ROOT.war /opt/bitnami/apache-tomcat/webapps
echo "#07/15 new ROOT.war file copied"
## catalina start
echo "#08/15 catalina start"
/opt/bitnami/apache-tomcat/bin/./catalina.sh start
echo "#09/15 catalina started"
echo "#10/15 sleep 3 seconds"
sleep 3
## change IP address
echo "#11/15 IP address change"
##put target IP address
sed -i 's/localhost:3306/xx.xxx.xxx.xxx/g' /opt/bitnami/apache-tomcat/webapps/ROOT/WEB-INF/spring-servlet.xml
echo "#12/15 IP address changed"
## restart catalina
echo "#13/15 catalina stop"
/opt/bitnami/apache-tomcat/bin/./catalina.sh stop
echo "#14/ sleep 3seconds"
sleep 3
echo "#15/ catalina restart"
/opt/bitnami/apache-tomcat/bin/./catalina.sh start