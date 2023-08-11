directory "/config/user-data/node_exporter"

remote_file "/config/user-data/node_exporter/node_exporter.service" do
  mode "644"
  notifies :restart, "service[node_exporter]"
end
remote_file "/config/user-data/node_exporter/node_exporter.socket" do
  mode "644"
  notifies :restart, "service[node_exporter]"
end

remote_file "/config/user-data/node_exporter/watch.sh" do
  mode "755"
  notifies :restart, "service[node_exporter-watch]"
end
remote_file "/config/user-data/node_exporter/node_exporter-watch.service" do
  mode "644"
  notifies :restart, "service[node_exporter-watch]"
end

remote_file "/config/scripts/post-config.d/node_exporter.sh" do
  mode "755"
end

execute "/config/scripts/post-config.d/node_exporter.sh"

service "node_exporter"
service "node_exporter-watch"
