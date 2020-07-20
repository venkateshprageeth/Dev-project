class root-proj::config2 inherits root-proj::params {
        file { $config_nrpe_plugin:
        content => template ('/etc/puppet/modules/root-proj/templates/check_mem.erb'),
        mode => '777',
        owner => 'root',

}
}
