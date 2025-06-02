#!/bin/sh

HOUR=$(date +%H)

if [ "$HOUR" -ge 10 ] && [ "$HOUR" -lt 12 ]; then
  NAME="Rajshekhar"
elif [ "$HOUR" -ge 16 ] && [ "$HOUR" -lt 18 ]; then
  NAME="Deepak"
else
  NAME="-- Inactive Hours --"
fi

sed "s/{{name}}/$NAME/" /app/index.html.template > /usr/share/nginx/html/index.html

# Start NGINX
nginx -g 'daemon off;'
