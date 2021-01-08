FROM bitnami/nginx:1.19

# NGINX config
COPY ./nginx.conf /opt/bitnami/nginx/conf/nginx.conf
COPY ./sites/default.conf /opt/bitnami/nginx/conf/server_blocks/default.conf
COPY ./app/default /app/default