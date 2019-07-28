FROM ubuntu:14.04

RUN apt-get update && apt-get install -y htop git nginx

ADD nginx.conf /etc/nginx/nginx.conf

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD ["service", "nginx", "start"]