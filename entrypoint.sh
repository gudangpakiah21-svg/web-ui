#!/bin/sh
sing-box run -c /etc/sing-box/config.json &
nginx -g 'daemon off;'