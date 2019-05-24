FROM openjdk 
WORKDIR /home/app
COPY target/*.jar /home/app

#mv *.jar file.jar
#RUN cd /tmp/ && java -jar *.jar 

EXPOSE 8080
CMD ["java", "-jar","*.jar"]
