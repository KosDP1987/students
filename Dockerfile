FROM openjdk 
#COPY target/*.jar /opt/
#CMD cd /opt/ && java -jar *.jar 

COPY target/*.jar /tmp/
#RUN cd /tmp/ && java -jar *.jar 

EXPOSE 80
EXPOSE 8080
