FROM openjdk 
#COPY target/*.jar ./
mv *.jar file.jar
#RUN cd /tmp/ && java -jar *.jar 

EXPOSE 80
EXPOSE 8080
