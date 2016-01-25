# Version 1.0.0
#========== Basic Image ==========
From tomcat
MAINTAINER "DreamInSun"

#========== Environment ==========

#========== Configuration ==========

#========== Install Application ==========
WORKDIR /usr/local/tomcat
ADD ./tomcat/conf/server.xml  ./conf/server.xml
ADD ./tomcat/conf/web.xml     ./conf/web.xml

#========== Expose Ports ==========
EXPOSE 8080 

#========= RUN ==========
ADD ./shell/docker-entry.sh /
RUN chmod a+x /docker-entry.sh

#========= Start Service ==========
ENTRYPOINT ["/docker-entry.sh"]

#CMD ["catalina.sh", "run"]