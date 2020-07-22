class root-dev_proj::file inherits root-dev_proj::params {
        file { $support_file_Dockerfile:
        content => template ('/etc/puppet/modules/root-dev_proj/templates/Dockerfile.erb'),
        mode => '777',
        owner => 'root',

}
	file { $support_file_index:
        content => template ('/etc/puppet/modules/root-dev_proj/templates/index.html.erb'),
        mode => '777',
        owner => 'root',
}
}
