directory "/config/prometheus"
directory "/config/prometheus/data" do
  owner "nobody"
  group "nogroup"
end

remote_file "/config/prometheus/prometheus.yml" do
  mode "644"
end
