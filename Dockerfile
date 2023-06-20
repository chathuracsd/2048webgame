FROM nginx
COPY . /usr/share/nginx/html
RUN chmod -R 775 /usr/share/nginx/html