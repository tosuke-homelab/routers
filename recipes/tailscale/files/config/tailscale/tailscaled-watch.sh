#!/bin/sh

while inotifywait -e close_write /config/user-data/bin/tailscaled; do
    systemctl restart tailscaled.service
done
