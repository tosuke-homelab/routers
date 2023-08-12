directory "/config/tailscale"

directory "/config/tailscale/state" do
  mode "400"
end

remote_file "/config/tailscale/tailscaled.service" do
  mode "644"
  notifies :restart, "service[tailscaled]"
end
remote_file "/config/tailscale/var-lib-tailscale.mount" do
  mode "644"
  notifies :restart, "service[tailscaled]"
end
remote_file "/config/tailscale/tailscaled.defaults.example" do
  mode "644"
end

remote_file "/config/tailscale/tailscaled-watch.sh" do
  mode "755"
  notifies :restart, "service[tailscaled-watch]"
end
remote_file "/config/tailscale/tailscaled-watch.service" do
  mode "644"
  notifies :restart, "service[tailscaled-watch]"
end

directory "/config/scripts/post-config.d"
remote_file "/config/scripts/post-config.d/tailscale.sh" do
  mode "755"
end

execute "/config/scripts/post-config.d/tailscale.sh"

service "tailscaled"
service "tailscaled-watch"
