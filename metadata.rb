maintainer       "Librato, Inc."
maintainer_email "mike@librato.com"
license          "Apache 2.0"
description      "Installs/Configures ec2"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.10"

depends "apt", "~> 1.2.0"

recipe "ec2::raid_ephemeral", "Creates a RAID0 on the ephemeral EC2 drives."
recipe "ec2::tools", "Installs the EC2 tools"
recipe "ec2::nodename", "Install ec2nodename utility"
recipe "ec2::uniq_name_gen", "Utility to generate unique IDs"
recipe "ec2::java_dns_ttl", "Reset Java's DNS TTL"

# TODO: test on fedora
#
%w{ubuntu}.each do |os|
  supports os
end
