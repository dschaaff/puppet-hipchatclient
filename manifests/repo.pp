class hipchatclient::repo {
  
  case $::osfamily {
    'Debian': {
      ::apt::source {'hipchat4':
        location => 'https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client',
        release  => $::lsbdistcodename,
        repos    => 'main',
      }
      ::apt::key {'hipchat4':
        id     => 'FD1ACC751D0106938C1E6B33EBA59E53CC64091D',
        source => 'https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public'}
    }
    default: {
      notify { "module ${::module_name} does not support ${::operatingsystem}":}
    }
    
  }
  
}