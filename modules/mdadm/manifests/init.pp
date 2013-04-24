class mdadm {

    package { "mdadm": 
        ensure => latest
    }

    service { "mdadm":
        ensure => running,
    }
}
