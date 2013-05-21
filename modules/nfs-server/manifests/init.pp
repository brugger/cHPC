class nfs-server {
   
  package { "nfs-kernel-server": status => latest }


  file {'/etc/exports' : source => "puppet:///modules/nfs-server/exports", 
                         mode   => 755,
                         notify => Service['nfs-kernel-server']}

   service { "nfs-kernel-server":
        ensure => running,
        require => [Package["nfs-kernel-server"], File['/etc/exports']],
   }


}
