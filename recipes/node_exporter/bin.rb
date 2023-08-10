directory "/config/user-data/node_exporter"

remote_file "/config/user-data/node_exporter/node_exporter.service" do
  mode "644"
end
remote_file "/config/user-data/node_exporter/node_exporter.socket" do
  mode "644"
end

remote_file "/config/scripts/post-config.d/node_exporter.sh" do
  mode "755"
end

execute "/config/scripts/post-config.d/node_exporter.sh"
