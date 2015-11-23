FROM tomcat:8.0.27-jre8

COPY ./YWLYDinner /usr/local/tomcat/webapps/YWLYDinner

WORKDIR $CATALINA_HOME

EXPOSE 8080
CMD ["catalina.sh", "run"]