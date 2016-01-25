# Version 1.0.0
#========== Basic Image ==========
From tomcat:8
MAINTAINER "DreamInSun"

#========== Environment ==========

#========== Configuration ==========
#ENV JAVA_OPTS_XMS           128M
#ENV JAVA_OPTS_XMX           512M
#ENV JAVA_OPTS_PERM_SIZE      64M
#ENV JAVA_OPTS_PERM_SIZE_MAX 128M

#========== Install Application ==========
ADD tomcat  /usr/local/tomcat
RUN chmod a+x /usr/local/tomcat/bin/catalina.sh
RUN rm -rf /usr/local/tomcat/webapps/docs
RUN rm -rf /usr/local/tomcat/webapps/examples

#========== Expose Ports ==========
#EXPOSE 8080 

#========= Add Entry Point ==========
ADD shell /shell
RUN chmod a+x /shell/*

#========= Start Service ==========
ENTRYPOINT ["/shell/docker-entrypoint.sh"] 