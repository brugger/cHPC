class users {

  # create a group with a specific GID...
  group { "info":
    ensure => present,
    gid    => 1000, 
  }

  user { 'kb468':
    ensure     => 'present',
    password => '$6$4soIGJIy$gvHdqlYLcsIYOGiM7LfFNDQ5w07cy7pysZTu45SjMoHahwzyZuPNSUKsBc5skplfIctOijKsku4vpU8UAATtR.',
    groups => ['info','sudo', 'adm'],
    shell => '/bin/tcsh',
    home => '/home/kb468',
  }
    
}



