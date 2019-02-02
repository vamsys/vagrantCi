#
# Cookbook:: hellochef_service
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Create Home directory
directory node['hcs']['home'] do
  owner node['hcs']['user']
  group node['hcs']['group']
  mode '0755'
  recursive true
end

# Copy service resource jar to desired directory
cookbook_file File.join(node['hcs']['home'], 'spring_mvc_api-0.1.0.jar') do
  source node['hcs']['artifact']['local']
  owner node['hcs']['user']
  group node['hcs']['group']
  mode '0755'
end

# Register hellochef service in systemd
cookbook_file 'hellochef.service' do
  path '/etc/systemd/system/hellochef.service'
  source 'hellochef.service'
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
end

# Register hellochef service config
template 'hellochef service config' do
  path '/usr/local/bin/hellochef.sh'
  source 'hcs-service-run.erb'
  owner 'vagrant'
  group 'vagrant'
  mode '0755'
end

# Enable service
service 'hellochef.service' do
  supports :restart => true, :start => true, :stop => true
  action  [:enable, :start]
end