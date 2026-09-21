FROM alpine:latest

# Install Nginx & sing-box
RUN apk add --no-cache nginx sing-box

# Setup Folder
RUN mkdir -p /var/www/html /etc/sing-box /run/nginx

# Copy Berkas Konfigurasi
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /var/www/html/index.html
COPY config.json /etc/sing-box/config.json
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
