#!/bin/sh

ln -sf /config/user-data/bin/bird /usr/sbin/bird
ln -sf /config/user-data/bin/birdc /usr/bin/birdc
ln -sf /config/bird/bird.conf /etc/bird/bird.conf
ln -sf /config/bird/bird.service /etc/systemd/system/bird.service
ln -sf /config/bird/bird-watch.service /etc/systemd/system/bird-watch.service

systemctl enable --now bird.service
systemctl enable --now bird-watch.service
