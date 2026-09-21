#!/bin/sh

# Jalankan sing-box di background
sing-box run -c /etc/sing-box/config.json &

# Jalankan nginx di foreground
nginx -g 'daemon off;'
