#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
mysql_service node['mysql_hostname'] do
  port node['port']
  version '5.5'
  initial_root_password 'rootpa2s'
  action [:create, :start]
end
remote_file '/tmp/some_archive.zip' do
	source node['application repo'] 
end
execute "unzip-file" do
  command "unzip -n /tmp/some_archive.zip -d /tmp"
  action :run
end
execute "import_database" do
	command "mysql -S /var/run/mysql-#{node['mysql_hostname']}/mysqld.sock -uroot -prootpa2s < /tmp/guestbookapp/guestbookmysqldump.sql"
	action :run
end
