class nfs-client-cluster {

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

  mount { "/data":
        device  => "10.1.1.1:/data",
        fstype  => "nfs",
        ensure  => "mounted",
        options => "defaults,nfsvers=3",
        atboot  => true,
	require => File[ "/data"]
    }

  mount { "/home":
        device  => "10.1.1.1:/home",
        fstype  => "nfs",
        ensure  => "mounted",
        options => "defaults,nfsvers=3",
        atboot  => true,
        require => File[ "/home"]
    }

  mount { "/seqs":
        device  => "10.1.1.1:/seqs",
        fstype  => "nfs",
        ensure  => "mounted",
        options => "defaults,nfsvers=3",
        atboot  => true,
        require => File[ "/seqs"]

    }

 mount { "/software":
        device  => "10.1.1.1:/software",
        fstype  => "nfs",
        ensure  => "mounted",
        options => "defaults,nfsvers=3",
        atboot  => true,
        require => File[ "/software"]

    }

  mount { "/refs":
        device  => "10.1.1.1:/refs",
        fstype  => "nfs",
        ensure  => "mounted",
        options => "defaults,nfsvers=3",
        atboot  => true,
        require => File[ "/refs"]

    }


}
