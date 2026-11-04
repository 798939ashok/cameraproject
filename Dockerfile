FROM nginx:alpine
COPY surprise-click.html /usr/share/nginx/html/index.html
EXPOSE 80