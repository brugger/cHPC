class nat {


    file{'nat':
        path => '/etc/init.d/nat', 
        ensure => file,
        content => template('nat/nat'),
        mode => 755,
    }

    file { '/etc/rc2.d/S90nat':
#        subscribe => [ File["/etc/init.d/nat"]],
        ensure => 'link',
        target => '/etc/init.d/nat',
    }

    service { "nat":
	ensure => running,
        enable => true,
	subscribe => File["/etc/init.d/nat"],
    }

}
