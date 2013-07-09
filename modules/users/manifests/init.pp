class users {

  # create a group with a specific GID...
  group { "info":
    ensure => present,
    gid    => 1000, 
    allowdupe => true
  }

  group { "lab":
    ensure => present,
    gid    => 1001, 
  }

  group { "seqs":
    ensure => present,
    gid    => 1002,
  }

  group { "kb468":
    gid => 1000,
    ensure => absent
    }

  user { 'kb468':
    uid        => 1000,
    ensure     => 'present',
    password => '$6$4soIGJIy$gvHdqlYLcsIYOGiM7LfFNDQ5w07cy7pysZTu45SjMoHahwzyZuPNSUKsBc5skplfIctOijKsku4vpU8UAATtR.',
    groups => ['info','sudo', 'adm'],
    shell => '/bin/tcsh',
    home => '/home/kb468',
  }

  user { 'hm208':
    uid        => 1001,
    ensure     => 'present',
    password => '',
    gid => 'lab',
    shell => '/bin/bash',
    home => '/home/hm208',
  }

  user { 'seqs':
    uid        => 5000,
    ensure     => 'present',
    password => '',
    gid => 'seqs',
    shell => '/bin/false',
    home => '/seqs/',
  }
    
}



