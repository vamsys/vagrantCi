# Cookbook:: hellochef
# Attributes:: default
# Author:: Krishna Palakollu <vamsys@gmail.com>

default['hcs']['user'] = 'vagrant'
default['hcs']['group'] = 'vagrant'
default['hcs']['home'] = '/var/lib/hellochef'
default['hcs']['artifact']['repo'] = 'file://home/vagrant/spring_mvc_api/spring_mvc_api-0.1.0.jar'
default['hcs']['artifact']['local'] = 'spring_mvc_api-0.1.0.jar'
default['hcs']['listen_address'] = '0.0.0.0'
default['hcs']['host'] = 'localhost'
default['hcs']['port'] = '9000'
default['hcs']['log_directory'] = '/var/log/hellochef'
default['hcs']['service']['name'] = 'hellochef.service'
default['hcs']['service']['jar'] = '/var/lib/hellochef/spring_mvc_api-0.1.0.jar'
default['hcs']['service']['pidpath'] = '/tmp/hellochef.service-pid'