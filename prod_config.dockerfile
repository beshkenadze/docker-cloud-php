FROM alpine

# NGINX
RUN mkdir -p /etc/nginx/conf.d
RUN mkdir -p /etc/nginx/sites-enabled/
WORKDIR /etc/nginx
COPY ./configs/nginx.conf .
COPY ./configs/symfony.conf ./sites-available/default.conf
COPY ./configs/upstream.conf ./conf.d/upstream.conf
RUN ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default.conf
