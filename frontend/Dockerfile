FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY dist /var/www/html/
EXPOSE 5000
CMD ["nginx", "-g", "daemon off;"]