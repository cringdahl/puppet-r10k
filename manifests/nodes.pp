node 'default' {
  include role::agent

  notify { 'Default class for unknown node; define nodes in manifest/nodes.pp': }
}

node 'puppetmaster' {
  include role::master_standalone
}

#node 'puppetdb' {
#  include role::puppetdb
#}

#node 'puppetreports' {
#  include role::puppetreports
#}

node 'websrv' {
   include jenkins
   class { 'profile_nginx::reverse_proxy': }
}
