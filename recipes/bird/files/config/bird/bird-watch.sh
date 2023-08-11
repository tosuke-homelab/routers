#!/bin/sh

while inotifywait -e close_write /config/user-data/bin/bird; do
    /usr/bin/birdc graceful restart
done
