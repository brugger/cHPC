class nfs-client {

  package { "nfs-client": ensure => latest }

  file { "/data/":
    ensure => "directory",
    owner  => "root",
    group  => "info",
    mode   => 775,
  }

  file { "/home/":
    ensure => "directory",
    owner  => "root",
    group  => "root",
    mode   => 755,
  }

  file { "/seqs/":
    ensure => "directory",
    owner  => "root",
    group  => "info",
    mode   => 775,
  }

  file { "/software/":
    ensure => "directory",
    owner  => "root",
    group  => "info",
    mode   => 775,
  }

  file { "/refs/":
    ensure => "directory",
    owner  => "root",
    group  => "info",
    mode   => 775,
  }


  service { "nfs-common": ensure => running}

  mount { "/home":
        device  => "193.60.85.140:/home",
        fstype  => "nfs",
        ensure  => "mounted",
        options => "defaults,nfsvers=3",
        atboot  => true,
        require => File[ "/home"]
    }

 mount { "/software":
        device  => "193.60.85.140:/software",
        fstype  => "nfs",
        ensure  => "mounted",
        options => "defaults,nfsvers=3",
        atboot  => true,
        require => File[ "/software"]
}

 mount { "/data":
        device  => "193.60.85.140:/data",
        fstype  => "nfs",
        ensure  => "mounted",
        options => "defaults,nfsvers=3",
        atboot  => true,
        require => File[ "/data"]
}


}
