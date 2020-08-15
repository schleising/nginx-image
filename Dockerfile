FROM nginx
RUN mkdir /code/

COPY nginx.conf /etc/nginx/
COPY schleising_net_nginx.conf /etc/nginx/conf.d/
