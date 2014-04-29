#
# Cookbook Name:: apache-setting
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apache2"
#ruby_block "check_file" do
#	block do if File.exist?("/etc/httpd/sites-enabled/") then

if platform?("redhat", "centos", "fedora")
	link "/etc/httpd/sites-enabled/default" do
		to "/etc/httpd/sites-available/default"
	end
end

#	end
#	end
#end

