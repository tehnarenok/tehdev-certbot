#!/bin/sh
certbot certonly --noninteractive --webroot -w /app/acme-challenge/ -d $DOMAIN --agree-tos --email $EMAIL