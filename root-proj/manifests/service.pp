class root-proj::service inherits root-proj::params {
        service { $ser :
        ensure => running
}
}
