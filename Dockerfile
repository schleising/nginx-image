FROM nginx
RUN mkdir /code/

# Install Certbot
RUN apt-get update
RUN apt-get install -y python-certbot-nginx cron

COPY nginx.conf /etc/nginx/
COPY schleising_net_nginx.conf /etc/nginx/conf.d/
COPY cronfile.txt /
COPY 30-run-cron.sh /docker-entrypoint.d/
RUN chmod +x /docker-entrypoint.d/30-run-cron.sh

RUN crontab cronfile.txt
