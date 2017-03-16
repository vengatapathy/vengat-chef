#directory 'test' do
#  owner 'adm'
#  group 'adm'
#  mode '0750'
#  action :create
#end

#file 'test/test.txt' do
#  action :create
#  content "This is test file"
#  mode 0640
#end

#package "httpd"

#service 'httpd' do
# action :start
#end

#service 'firewalld' do
# action :stop
#end

#directory '/root/chef-repo/cookbooks/webserver/bin' do
#action :create
#end

#remote_file "/root/chef-repo/cookbooks/webserver/bin/httpd-2.4.25.tar.gz" do
# source "http://mirror.fibergrid.in/apache/httpd/httpd-2.4.25.tar.gz"
#end

package "git"
