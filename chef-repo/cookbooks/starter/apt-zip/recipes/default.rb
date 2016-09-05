#
# Cookbook Name:: apt
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "apt-get update" do
  command "apt-get update -y" 
# && apt-get upgrade -y"
  action :run
end
execute "apt-get zip" do
  command "apt-get install unzip -y"
  action :run
end

