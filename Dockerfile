FROM centos:7
WORKDIR /opt/
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz .
RUN tar -xzvf apache-tomcat-8.5.100.tar.gz
RUN yum install java-11-openjdk -y
WORKDIR /opt/apache-tomcat-8.5.100
ADD https://bucketfff.s3.amazonaws.com/student.war webapps/student.war
EXPOSE 8080
CMD ["bin/catalina.sh" ,"run"]


