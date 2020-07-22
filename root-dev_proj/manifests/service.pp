class root-dev_proj::service inherits root-dev_proj::params {
        service { $ser :
        ensure => running
}
}
