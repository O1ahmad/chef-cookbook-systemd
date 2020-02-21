name 'O1-systemd'
maintainer '0x0I'
maintainer_email 'zer0ne.io.x@gmail.com'
license 'MIT'
description 'Chef cookbook that installs and configures Systemd units: system components' \
            ' and services managed by the Linux systemd system/service manager.'
version '0.1.2'
chef_version '>= 14.0'
%w[centos fedora redhat debian ubuntu].each do |os|
  supports os
end
issues_url 'https://github.com/0x0I/chef-cookbook-systemd/issues'
source_url 'https://github.com/0x0I/chef-cookbook-systemd'
