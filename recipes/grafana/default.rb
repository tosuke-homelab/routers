directory "/config/grafana/data" do
  owner "472"
  group "472"
end

remote_file "/config/grafana/grafana.ini" do
  mode "644"
  notifies :run, "execute[restart container grafana]"
end

execute "restart container grafana" do
  action :nothing
  command "/bin/vbash -c 'source /opt/vyatta/etc/functions/script-template; vyatta_cfg_run run restart container grafana'"
end
