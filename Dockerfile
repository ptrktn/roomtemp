FROM nginx
COPY html /usr/share/nginx/html

# https://github.com/rjoonas/heroku-docker-nginx-example/blob/master/Dockerfile
COPY default.conf.template /etc/nginx/default.conf.template
CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'
