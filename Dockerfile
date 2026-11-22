FROM tomcat:9.0

COPY target/LibraryRegistration.war \
     /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080 
