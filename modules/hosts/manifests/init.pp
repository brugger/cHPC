class hosts {

  file { 'hosts':
	path => '/etc/hosts',
	ensure => file,
	content => template('hosts/hosts'),
  }
}
