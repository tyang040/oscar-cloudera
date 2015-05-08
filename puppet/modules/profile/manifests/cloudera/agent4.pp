class profile::cloudera::agent4 {
  class { '::cloudera':
    cm_server_host => 'master',
    cm_version     => '4',
  }
  #include '::ntp'
  class { '::ntp':
    servers       => [ 'time' ],
    iburst_enable => true,
  }
}
