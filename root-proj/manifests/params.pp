class root-proj::params {
        $pack = ['docker','nrpe','nagios-plugins-all']
        $ser  = ['docker','nrpe']
        $ser_status = 'running'
        $config_nrpe = '/etc/nagios/nrpe.cfg'
	$config_nrpe_plugin = '/usr/lib64/nagios/plugins/check_mem'
}
