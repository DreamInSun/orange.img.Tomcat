# Version 6-jre8
# cyan.img.Tomcat

#========== Basic Image ==========
From java:8-jre
MAINTAINER "DreamInSun"

#========== Environment ==========
# Timezone Patch
#RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#========== Configuration ========== 
ENV CATALINA_HOME	  /tomcat

ENV SERVICE_VERSION   LTS 
ENV PROFILE           product

#========== System Optimization ==========
RUN ulimit -HSn 4096  

#========== Install Application ==========
ADD apache-tomcat-6.0.47	$CATALINA_HOME 
RUN chmod a+x $CATALINA_HOME/bin/*.sh


#========== Expose Ports ==========
EXPOSE 8080 

#========= Add Entry Point ==========
ADD shell /shell
RUN chmod a+x /shell/*.sh

#========= Start Service ==========
ENTRYPOINT ["/shell/docker-entrypoint.sh"] 