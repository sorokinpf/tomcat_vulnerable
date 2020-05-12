FROM tomcat:9.0
RUN cp -avT $CATALINA_HOME/webapps.dist/manager $CATALINA_HOME/webapps/manager
COPY tomcat-users.xml $CATALINA_HOME/conf
COPY context.xml $CATALINA_HOME/webapps/manager/META-INF