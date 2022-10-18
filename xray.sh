#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f3e10ff0-f121-4dd9-8203-eed9680c1aa0"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

