FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install ssh -y
COPY index.html /var/www/html
ENTRYPOINT service nginx start && bash
