class nfs-server {
   
  package { "nfs-kernel-server": status => latest }

  augeas{ "exports" : 
    context => "/files/etc/exports",
    changes => [ 
        "set dir[. = '/data'] /data",
        "set dir[. = '/data']/client 10.1.0.0/255.255.0.0",
        "set dir[. = '/data']/client/option[1] rw",
        "set dir[. = '/data']/client/option[2] no_subtree_check",
        "set dir[. = '/data']/client/option[3] async",
        "set dir[. = '/data']/client/option[4] no_root_squash",

        "set dir[. = '/home'] /home",
        "set dir[. = '/home']/client 10.1.0.0/255.255.0.0",
        "set dir[. = '/home']/client/option[1] rw",
        "set dir[. = '/home']/client/option[2] no_subtree_check",
        "set dir[. = '/home']/client/option[4] no_root_squash",

        "set dir[. = '/seqs'] /seqs",
        "set dir[. = '/seqs']/client 10.1.0.0/255.255.0.0",
        "set dir[. = '/seqs']/client/option[1] rw",
        "set dir[. = '/seqs']/client/option[2] no_subtree_check",
        "set dir[. = '/seqs']/client/option[4] no_root_squash",

        "set dir[. = '/software'] /software",
        "set dir[. = '/software']/client 10.1.0.0/255.255.0.0",
        "set dir[. = '/software']/client/option[1] rw",
        "set dir[. = '/software']/client/option[2] no_subtree_check",
        "set dir[. = '/software']/client/option[4] no_root_squash",

    ],
  } 

   service { "nfs-kernel-server":
        ensure => running,
   }


}
