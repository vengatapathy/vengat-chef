#
# Cookbook:: jenkins
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

remote_file "/root/apache-tomcat-7.0.75.tar.gz" do
 source "http://mirror.fibergrid.in/apache/tomcat/tomcat-7/v7.0.75/bin/apache-tomcat-7.0.75.tar.gz"
end

remote_file "/root/jenkins.war" do
 source "http://ftp.yz.yamagata-u.ac.jp/pub/misc/jenkins/war-stable/2.32.3/jenkins.war"
end

bash 'extract_module' do
code <<-EOH
tar -zxvf /root/apache-tomcat-7.0.75.tar.gz -C /app1/dmp/tomcat
cp /root/jenkins.war /app1/dmp/tomcat/apache-tomcat-7.0.75/webapps
/app1/dmp/tomcat/apache-tomcat-7.0.75/bin/startup.sh
EOH
end

