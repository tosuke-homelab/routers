#!/bin/sh

ln -sf /config/user-data/node_exporter/node_exporter.service /etc/systemd/system/node_exporter.service
ln -sf /config/user-data/node_exporter/node_exporter.socket /etc/systemd/system/node_exporter.socket
ln -sf /config/user-data/node_exporter/node_exporter-watch.service /etc/systemd/system/node_exporter-watch.service
ln -sf /config/user-data/bin/node_exporter /usr/sbin/node_exporter

systemctl enable --now node_exporter.service
systemctl enable --now node_exporter-watch.service

