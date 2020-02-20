name 'O1-systemd'
maintainer '0x0I'
maintainer_email 'zer0ne.io.x@gmail.com'
license 'MIT'
description 'chef cookbook template for 0x0I developed infrastructure' \
            ' installation, configuration and operations as software'
version '0.1.0'
chef_version '>= 14.0'
%w[centos fedora redhat debian ubuntu].each do |os|
  supports os
end
issues_url 'https://github.com/0x0I/chef-cookbook-template/issues'
source_url 'https://github.com/0x0I/chef-cookbook-template'
