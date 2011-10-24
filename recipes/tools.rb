#
# Install EC2 API tools
#

template "/etc/apt/sources.list.d/multiverse.list" do
  source "multiverse.sources.erb"
  mode "0644"
  variables :version => %{lsb_release -cs}.chomp
  notifies :run, "execute[apt-get -y update]", :immediately
end

package "ec2-api-tools"
package "ec2-ami-tools"
