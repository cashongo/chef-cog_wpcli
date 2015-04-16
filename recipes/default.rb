#
# Cookbook Name:: cog_wpcli
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#


cookbook_file "wp-cli.phar" do
  path "/usr/local/bin/wp-cli.phar"
  action :create
  mode "0755"
  owner "root"
  group "root"
end

link "/usr/local/bin/wp" do
 to "wp-cli.phar"
end
