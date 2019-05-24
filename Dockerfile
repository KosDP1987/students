FROM openjdk 
COPY target/*.jar /opt/
CMD cd /opt/ && java -jar *.jar 

EXPOSE 80
EXPOSE 8080
