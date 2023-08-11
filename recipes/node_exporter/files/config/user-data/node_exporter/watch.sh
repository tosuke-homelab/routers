#!/bin/sh

while inotifywait -e close_write /config/user-data/bin/node_exporter; do
    systemctl restart node_exporter.service
done