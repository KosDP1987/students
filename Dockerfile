FROM openjdk 
COPY target/*.jar ./
#RUN cd /tmp/ && java -jar *.jar 

EXPOSE 80
EXPOSE 8080
