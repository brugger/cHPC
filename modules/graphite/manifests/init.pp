class graphite {


    file{'carbon-cache':
        path => '/etc/init.d/carbon-cache', 
        ensure => file,
        content => template('graphite/carbon-cache'),
        mode => 755,
    }

    file { '/etc/rc2.d/S99carbon-cache':
        ensure => 'link',
        target => '/etc/init.d/carbon-cache',
    }

    service { "carbon-cache":
	ensure => running,
        enable => true,
        status => '/usr/sbin/service  carbon-cache status | grep "is running"',
	subscribe => File["/etc/init.d/carbon-cache"],
    }

    file{'carbon-aggregator':
        path => '/etc/init.d/carbon-aggregator',
        ensure => file,
        content => template('graphite/carbon-aggregator'),
        mode => 755,
    }

    file { '/etc/rc2.d/S99carbon-aggregator':
        ensure => 'link',
        target => '/etc/init.d/carbon-aggregator',
    }

    service { "carbon-aggregator":
        ensure => running,
        enable => true,
        status => '/usr/sbin/service  carbon-aggregator status | grep "is running"',
        subscribe => File["/etc/init.d/carbon-aggregator"],
    }


}
