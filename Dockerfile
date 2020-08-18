FROM nginx
RUN mkdir /code/

# Install Certbot
RUN apt-get update
RUN apt-get install -y python-certbot-nginx

COPY nginx.conf /etc/nginx/
COPY schleising_net_nginx.conf /etc/nginx/conf.d/
