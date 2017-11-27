#!/bin/sh


echo ========== Synchornize System ==========
#ntpdate us.pool.ntp.org
echo SERVICE_NAME is $SERVICE_NAME
echo SERVICE_VERSION is $SERVICE_VERSION
echo PROFILE is $PROFILE
echo CONFIG_KEY is $CONFIG_KEY

echo ========== Set Up Environment ==========
export CATALINA_BASE=$CATALINA_HOME
export CATALINA_TMPDIR=$CATALINA_HOME/temp
export CLASSPATH=$CATALINA_HOME/bin/bootstrap.jar:/usr/local/tomcat/bin/tomcat-juli.jar
export CONFIG_PATH=$CATALINA_HOME/conf/

echo ========== Edit Configuration ==========
echo JAVA_HOME is $JAVA_HOME
echo JRE_HOME is $JRE_HOME
echo CLASSPATH is $CLASSPATH
echo CATALINA_BASE is $CATALINA_BASE
echo CATALINA_HOME is $CATALINA_HOME

echo ========== Initialize Database ==========


echo ========== Database Configuration ========== 

echo ========== Start Application ==========
bash $CATALINA_BASE/bin/catalina.sh run