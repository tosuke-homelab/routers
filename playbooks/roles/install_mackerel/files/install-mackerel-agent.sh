#!/bin/sh

ln -sf /config/user-data/bin/mackerel-agent /usr/sbin/mackerel-agent
ln -sf /config/user-data/services/mackerel-agent.service /etc/systemd/system/mackerel-agent.service

systemctl enable --now mackerel-agent.service
