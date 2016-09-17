# == Class: profile::puppetreports
#
#  Install and configure puppetboard
#
# === Parameters
#
# === Authors
#
# Laurent Bernaille
#
# === Copyright
#
# Copyright 2013 Your name here, unless otherwise noted.
#

class profile::puppetreports(
) {

  $ssl_dir = $::settings::ssldir
  $puppetboard_certname = $::certname
  class { 'puppetboard':
    groups              => 'puppet',
    manage_virtualenv   => true,
    puppetdb_host       => hiera('puppetdb_host'),
    puppetdb_port       => '8081',
    puppetdb_key        => "${ssl_dir}/private_keys/${puppetboard_certname}.pem",
    puppetdb_ssl_verify => true,
    puppetdb_cert       => "${ssl_dir}/certs/${puppetboard_certname}.pem",
  }
}