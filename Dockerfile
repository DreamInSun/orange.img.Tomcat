# Version 1.0.0
#========== Basic Image ==========
From tomcat
MAINTAINER "DreamInSun"

#========== Environment ==========

#========== Configuration ==========
#ENV JAVA_OPTS_XMS           128M
#ENV JAVA_OPTS_XMX           512M
#ENV JAVA_OPTS_PERM_SIZE      64M
#ENV JAVA_OPTS_PERM_SIZE_MAX 128M

#========== Install Application ==========
ADD tomcat  /usr/local/

#========== Expose Ports ==========
#EXPOSE 8080 

#========= Add Entry Point ==========
COPY shell /
RUN chmod a+x /shell/*

#========= Start Service ==========
ENTRYPOINT ["/shell/docker-entrypoint.sh"] 