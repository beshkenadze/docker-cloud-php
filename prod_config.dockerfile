FROM alpine

# NGINX
RUN mkdir -p /etc/nginx/conf.d
WORKDIR /etc/nginx
COPY nginx.conf .
COPY nginx-entrypoint.sh ./nginx-entrypoint.sh
COPY symfony.conf ./sites-available/default.conf
COPY upstream.conf ./conf.d/upstream.conf
RUN rm ./conf.d/default.conf
RUN ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default.conf
