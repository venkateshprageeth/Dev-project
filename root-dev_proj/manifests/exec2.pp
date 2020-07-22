class root-dev_proj::exec2 inherits root-dev_proj::params {
exec { 'cmkget':
command => '/bin/wget http://35.202.255.193/monitoring/check_mk/agents/check-mk-agent-1.5.0p24-1.noarch.rpm',
unless => '/bin/yum list installed | grep check-mk-agent 2>/dev/null',
}
exec { 'cmkagentinstall':
command => '/bin/rpm -ivh check-mk-agent-1.5.0p24-1.noarch.rpm',
unless => '/bin/yum list installed | grep check-mk-agent 2>/dev/null',
require => Exec['cmkget'],
}
}
