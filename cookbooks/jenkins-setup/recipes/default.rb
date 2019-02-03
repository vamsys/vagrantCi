#
# Cookbook:: jenkins-setup
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe 'java'
include_recipe 'jenkins::master'

# Install credentials plugin
jenkins_plugin 'credentials' do
  version '2.1.18'
  notifies :execute, 'jenkins_command[safe-restart]', :immediately
end

# Install pam auth plugin
jenkins_plugin 'pam-auth' do
    version '1.4'
    notifies :execute, 'jenkins_command[safe-restart]', :immediately
  end

jenkins_command 'safe-restart' do
    action :nothing
end

include_recipe 'jenkins-setup::job_builder'
