FROM nginx

COPY html /usr/share/nginx/html

RUN mkdir /etc/nginx/templates
COPY default.conf.template /etc/nginx/templates

CMD touch /var/tmp/meisrunning && nginx -g 'daemon off;'
