node 'default' {
  include role::agent

  notify { 'Default class for unknown node': }
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
