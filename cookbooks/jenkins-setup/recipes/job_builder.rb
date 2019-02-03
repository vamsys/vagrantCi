#
# Cookbook:: jenkins-setup
# Recipe:: job_builder
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'python-pip'

execute 'install jenkins-job-builder' do
  command 'pip install jenkins-job-builder'
end