class mysql-server {

    package { "mysql-server": 
        ensure => installed 
    }

    file { 'my.cnf':
        path => '/etc/mysql/my.cnf',
        ensure => file,
        content => template('mysql-server/my.cnf'),
  }


}
