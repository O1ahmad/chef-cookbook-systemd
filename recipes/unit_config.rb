node['unit_configs'].each do |unit_config|
  node.default['unit_path'] = unit_config['path'] || node['_default_unit_path']
  node.default['unit_type'] = unit_config['type'] || node['_default_unit_type']

  template "#{node.default['unit_path']}/#{unit_config[:name]}.#{node.default['unit_type']}" do
    source 'systemd.unit.erb'
    owner 'root'
    group 'root'
    mode '0644'
    variables(config: unit_config)
  end
end
