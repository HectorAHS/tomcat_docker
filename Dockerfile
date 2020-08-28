FROM tomcat:9.0-alpine

ENV CATALINA_OPTS="-Dspring.config.location=classpath:/application.properties,/opt/srom/cfg/application.properties -Dcom.sun.management.jmxremote=true  -Dcom.sun.management.jmxremote.port=9999  -Dcom.sun.management.jmxremote.rmi.port=9999 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"
ENV TOMCAT_HOME=/usr/local/tomcat

#Copy Config
COPY tomcat-users.xml $TOMCAT_HOME/conf/tomcat-users.xml
COPY context.xml $TOMCAT_HOME/conf/context.xml
COPY context.xml $TOMCAT_HOME/webapps/manager/META-INF
COPY context.xml $TOMCAT_HOME/webapps/host-manager/META-INF

CMD ["catalina.sh", "run"]