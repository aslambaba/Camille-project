FROM node
RUN apt-get update
RUN apt install nginx -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt -y install nodejs && npm install -g npm@8.19.1 && apt install nginx -y
COPY ./ /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN /etc/init.d/nginx restart
