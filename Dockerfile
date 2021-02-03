FROM bitnami/nginx:1.19

# defaults
ENV NGINX_WORKER_RLIMIT_NOFILE="409600" \
    NGINX_WORKER_CONNECTIONS="409000" \
    NGINX_KEEPALIVE_TIMEOUT="300" \
    NGINX_KEEPALIVE_TIMEOUT="20000000"


# NGINX config
COPY ./nginx.conf /opt/bitnami/nginx/conf/nginx.conf
COPY ./sites/default.conf /opt/bitnami/nginx/conf/server_blocks/default.conf
COPY ./app/default /app/default