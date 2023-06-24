FROM nginx
COPY . /usr/share/nginx/html
RUN chmod -R 777 /usr/share/nginx/html
RUN curl -sSL https://get.docker.com | sh

