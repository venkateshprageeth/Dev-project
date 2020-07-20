class root-proj::config inherits root-proj::params {
        file { $config_nrpe:
        content => template ('/etc/puppet/modules/root-proj/templates/nrpe.cfg.erb'),
        mode => '777',
        owner => 'root',
	notify => Service[nrpe]
}
}
