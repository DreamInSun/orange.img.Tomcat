#!/bin/sh
echo ========== Set Up Environment ==========
export JRE_HOME=/usr
export CATALINA_BASE=/usr/local/tomcat
export CATALINA_HOME=/usr/local/tomcat
export CATALINA_TMPDIR=/usr/local/tomcat/temp
export CLASSPATH=/usr/local/tomcat/bin/bootstrap.jar:/usr/local/tomcat/bin/tomcat-juli.jar
export CONFIG_PATH=/usr/local/tomcat/conf/

echo ========== Edit Configuration ==========
echo CATALINA_BASE is $CATALINA_BASE
echo CATALINA_HOME is $CATALINA_HOME

echo ========== Initialize Database ==========


echo ========== Database Configuration ========== 

echo ========== Start Application ==========
bash $CATALINA_BASE/bin/catalina.sh run