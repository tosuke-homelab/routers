#!/bin/sh

ln -sf /config/user-data/bin/tailscale /usr/bin/tailscale
ln -sf /config/user-data/bin/tailscaled /usr/sbin/tailscaled

ln -sf /config/tailscale/var-lib-tailscale.mount /etc/systemd/system/var-lib-tailscale.mount
ln -sf /config/tailscale/tailscaled.defaults /etc/default/tailscaled
ln -sf /config/tailscale/tailscaled.service /etc/systemd/system/tailscaled.service
ln -sf /config/tailscale/tailscaled-watch.service /etc/systemd/system/tailscaled-watch.service

systemctl enable --now tailscaled.service
systemctl enable --now tailscaled-watch.service
