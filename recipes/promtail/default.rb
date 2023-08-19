node.reverse_merge!({
  "promtail" => {
    "journal_path" => "/var/log/journal",
  },
})

directory "/config/promtail"

template "/config/promtail/config.yml" do
  mode "644"
end
