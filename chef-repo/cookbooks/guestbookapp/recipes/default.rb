#
# Cookbook Name:: guestbookapp
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "cp xml file to jboss conf dir" do
  command "sudo cp /tmp/guestbookapp/guestbookapp.war /usr/local/jboss/jboss6/server/default/deploy/ && sudo cp /tmp/guestbookapp/guestbookapp.xml /usr/local/jboss/jboss6/server/default/conf/ "
  action :run
end


