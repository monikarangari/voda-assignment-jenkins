#deploy application  tomcat jboss weblogic windowsiss
FROM tomcat:jdk21

LABEL author=monika
ENV APPPORT 8080
ENV DESTPATH /usr/local/tomcat/webapps/

#RUN base image has jdk so no need to download jdk

COPY webapp/target/webapp.war $DESTPATH
EXPOSE $APPPORT
CMD ["catalina.sh", "run"]
