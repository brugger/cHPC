class collectd {


    file{'collectd':
        path => '/etc/init.d/collected', 
        ensure => file,
        content => template('collectd/collectd'),
    }

    file { '/etc/rc2.d/S99collectd':
        File["/etc/init.d/collected"],
        ensure => 'link',
        target => '/etc/init.d/collected',
    }

}
