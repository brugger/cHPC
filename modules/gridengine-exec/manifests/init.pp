class gridengine-exec {

    package { gridengine-exec: ensure => latest }

    service { gridengine-exec: ensure => running }
}

