#!/bin/bash

api_url="https://www.bitstamp.net/api/ticker/"

out="$(curl -s "$api_url")"

if [ $? -ne 0 ]; then
    echo "n/a"
    exit 0
fi

printf "%s" "$out" | awk -v RS="," '
/last/ {
    gsub("\"", "")
    print "$"$2
}
'
