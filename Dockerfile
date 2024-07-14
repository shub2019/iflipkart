FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install openjdk-11-jdk -y
RUN apt-get install ssh -y
RUN useradd -md /home/sally -s /bin/bash sally
RUN echo "/bin/sh -c echo -e \"${USER}:sally\" | chpasswd"
RUN mkdir /home/sally/distros
ADD apache-tomcat-9.0.91.tar.gz /home/sally/distros
COPY target/flipkart.war /home/sally/distros/apache-tomcat-9.0.91/webapps
ENTRYPOINT ["/bin/sh", "-c" , "home/sally/distros/apache-tomcat-9.0.91/bin/startup.sh && service ssh start"]


