class logs2rabbitmq {


    file{'logs2rabbitmq':
        path => '/etc/init.d/logs2rabbitmq', 
        ensure => file,
        content => template('logs2rabbitmq/logs2rabbitmq'),
        mode => 755,
    }

    file { '/etc/rc2.d/S99logs2rabbitmq':
#        subscribe => [ File["/etc/init.d/logs2rabbitmq"]],
        ensure => 'link',
        target => '/etc/init.d/logs2rabbitmq',
    }

    service { "logs2rabbitmq":
	ensure => running,
        enable => true,
	subscribe => File["/etc/init.d/logs2rabbitmq"],
        status => '/usr/sbin/service logs2rabbitmq status | grep "is running"',

    }

}
