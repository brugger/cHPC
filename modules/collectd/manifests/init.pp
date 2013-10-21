class collectd {


    file{'collectd':
        path => '/etc/init.d/collectd', 
        ensure => file,
        content => template('collectd/collectd'),
        mode => 755,
    }

    file { '/etc/rc2.d/S99collectd':
#        subscribe => [ File["/etc/init.d/collected"]],
        ensure => 'link',
        target => '/etc/init.d/collectd',
    }

    service { "collectd":
	ensure => running,
        enable => true,
	subscribe => File["/etc/init.d/collectd"],
    }

}
