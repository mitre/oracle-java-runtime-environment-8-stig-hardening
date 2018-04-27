#
# Cookbook:: JRE8-hardening
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'java'

directory '/etc/.java/' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

directory '/etc/.java/deployment' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template '/etc/.java/deployment/deployment.config' do
  source 'deployconfig.erb'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template '/etc/.java/deployment/deployment.properties' do
  source 'deployproperties.erb'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

file '/etc/.java/deployment/exception.sites' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end




