# == Class: hipchatclient
#
# include hipchatclient
# 
# === Authors
#
# Author Name <daniel@danielschaaff.com.com>
#
# === Copyright
#
# Copyright 2015 Daniel Schaaff, unless otherwise noted.
#
class hipchatclient (
  $manage_repo = true,
)
  {
  if $manage_repo {
    require ::hipchatclient::repo
  }
  #include ::apt
  package {'hipchat4':
    ensure  => latest,
    require => Class['::apt::update']
  }

}
