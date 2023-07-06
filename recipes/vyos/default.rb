execute "vyos-preconfig-bootup" do
  action :nothing
  command "/config/scripts/vyos-preconfig-bootup.script"
end

remote_file "/config/scripts/vyos-preconfig-bootup.script" do
  mode "755"
  notifies :run, "execute[vyos-preconfig-bootup]"
end
