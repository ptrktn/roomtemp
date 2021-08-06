FROM nginx

COPY html /usr/share/nginx/html

RUN mkdir /etc/nginx/templates
COPY default.conf.template /etc/nginx/templates

CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'
