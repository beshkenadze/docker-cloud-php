FROM alpine

# Preparing
RUN mkdir -p /var/www/app
WORKDIR /var/www/app
# Add our application files here
COPY ./app .
