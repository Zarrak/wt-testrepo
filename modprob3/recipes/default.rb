bash "modprobe" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    sudo su
	modprobe nf_conntrack_ipv4
    net.nf_conntrack_max=1048576
  EOH
end