# == Class: dev_proj
#
# Full description of class dev_proj here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'dev_proj':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2020 Your name here, unless otherwise noted.
#
class root-dev_proj inherits root-dev_proj::params {
include root-dev_proj::install
include root-dev_proj::service
include root-dev_proj::exec
include root-dev_proj::exec2
include root-dev_proj::file
Class['root-dev_proj::install'] -> Class['root-dev_proj::service']
Class['root-dev_proj::service'] -> Class['root-dev_proj::file']
Class['root-dev_proj::file'] -> Class['root-dev_proj::exec']
Class['root-dev_proj::exec'] -> Class['root-dev_proj::exec2']
}
