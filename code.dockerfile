FROM alpine
RUN addgroup -g 1000 -S nginx \
 && adduser -u 1000 -D -S -G nginx nginx
# Preparing
RUN mkdir -p /var/www/app
WORKDIR /var/www/app
# Add our application files here
COPY ./web ./web
RUN chown -R nginx /var/www/app
