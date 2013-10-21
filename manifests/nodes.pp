node base {
    
    include users

    include ntp
    include tcsh
    include git
    include sudo
    include hosts
    include collectd

    include perl
    include python
    include r
    include java
    include vim
}

node work inherits base {
   include emacs
   include gitk
   include development
}

node headnode inherits work {
   include mdadm
   include "gridengine-master"
   include "gridengine-qmon"
   include "gridengine-client"
   include augeas
   include "nfs-server"
   include samba
   include mysql-client
   include nat
}

node execnode inherits base {
   include nfs-client-cluster
   include gridengine::execd
}

node compute-100-1 inherits execnode {}
node compute-100-2 inherits execnode {}
node compute-100-3 inherits execnode {}
node compute-100-4 inherits execnode {}
node compute-100-5 inherits execnode {}
node compute-100-6 inherits execnode {}
node compute-100-7 inherits execnode {}
node compute-100-8 inherits execnode {}

node 'mgcl01.medschl.cam.ac.uk' inherits headnode {

}

node 'mgsrv01.medschl.cam.ac.uk' inherits work {

  include mysql-server
  include apache
  include nfs-client
  include graphite

  


}



node 'mgpc17.medschl.cam.ac.uk' inherits work{
  include nfs-client

}


node 'mgpc47.medschl.private.cam.ac.uk' inherits work{

}

