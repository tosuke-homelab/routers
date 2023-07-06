directory "/config/prometheus"
directory "/config/prometheus/data" do
  owner "nobody"
  group "nogroup"
end

remote_file "/config/prometheus/prometheus.yml" do
  mode "644"
  notifies :run, "execute[restart container prometheus]"
end

execute "restart container prometheus" do
  action :nothing
  command "/bin/vbash -c 'source /opt/vyatta/etc/functions/script-template; vyatta_cfg_run run restart container prometheus'"
end
