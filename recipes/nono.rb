include_recipe "vyos"
include_recipe "tailscale"
include_recipe "promtail"

include_recipe "litestream"
include_recipe "prometheus"
include_recipe "grafana"
include_recipe "k8s-controller"
