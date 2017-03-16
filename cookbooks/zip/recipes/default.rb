#
# Cookbook:: zip
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

bash 'extract_module' do
code <<-EOH
unzip /root/unzipped/zip.zip
mv /test*.txt /root/chef-repo/cookbooks/zip/recipes/
EOH
end
