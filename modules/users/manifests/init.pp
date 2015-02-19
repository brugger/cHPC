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

  group { "phe":
    ensure => present,
    gid    => 1003,
  }

  group { "training":
    ensure => present,
    gid    => 1004,
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

  user { 'mgarner':
    uid        => 1002,
    ensure     => 'present',
    password => '$6$QammOtb.$PPkC6D4My6afqGv/ny90xgjzo.ZOLTGet2BTU30yyoxZIzQaIoUupljRfvn0E099CuB4d7OKuBtE3ZaL8ao87/',
    gid => 'info',
    shell => '/bin/tcsh',
    home => '/home/mgarner',
  }


  user { 'gleadalln':
    uid       => 1003,
    ensure    => present,
    password  => '$6$1nPSSMda$U1zCPX5lr.RQyxEbGO2PCfpYGrYSz/u3oYmTDzvzKvd41d36bvYi3j.a16wqKe/BDDqk3U3UPMiiLY0Y01.vC.',
    gid       => 'phe',
    shell     => '/bin/bash',
    home      => '/home/gleadalln',
  }

  user {'pushpajand':
    uid       => 1005,
    ensure    => present,
    password  => '$6$XEi0Lnvg$ZZBCxHJuQlvPmyaoUteTIgyH98vGQ67dN.3NGK3dkeXq.DEIW0JOzpApNn30ZVoPm7Myn0DVHMY/F5lcYBqMk.',
    gid       => 'info',
    shell     => '/bin/bash',
    home      => '/home/pushpajand',
  }


  user { 'training':
    uid       => 1004,
    ensure    => present,
    password  => '$6$pB6SUfKL$WF8KohCuhA2PaK/Xih8M5s4RIpTGpa2FTd7FM8.WTGCX0ctX/bywRTgWgAJE9JXHUsFBTAMsUc9PlxhBPb8Lm/',
    gid       => 'training',
    shell     => '/bin/bash',
    home      => '/home/training',
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



