directory "/config/bird"

remote_file "/config/bird/bird.conf" do
  mode "644"
  notifies :reload, "service[bird]"
end
remote_file "/config/bird/bird.service" do
  mode "644"
  notifies :restart, "service[bird]"
end

remote_file "/config/bird/bird-watch.sh" do
  mode "755"
  notifies :restart, "service[bird-watch]"
end
remote_file "/config/bird/bird-watch.service" do
  mode "644"
  notifies :restart, "service[bird-watch]"
end

remote_file "/config/scripts/post-config.d/bird.sh" do
  mode "755"
end

execute "/config/scripts/post-config.d/bird.sh"

service "bird"
service "bird-watch"
