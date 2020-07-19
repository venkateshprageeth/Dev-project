class root-proj::install inherits root-proj::params {
        package { $pack :
        ensure => installed
}
}
