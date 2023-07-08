directory "/config/litestream"

remote_file "/config/litestream/litestream.yml" do
  mode "644"
  notifies :run, "execute[restart container litestream]"
end

execute "restart container litestream" do
  action :nothing
  command "/bin/vbash -c 'source /opt/vyatta/etc/functions/script-template; vyatta_cfg_run run restart container litestream'"
end
