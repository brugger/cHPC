node base {
    
    include users

    include ntp
    include tcsh
    include git
    include sudo
    include hosts

    include perl
    include python
    include r
    include java
}

node work inherits base {
   include emacs
   include gitk
   include vim
   include development
}

node headnode inherits work {
   include mdadm
   include "gridengine-master"
   include "gridengine-qmon"
   include "gridengine-client"
   include augeas
   include "nfs-server"
}

node execnode inherits base {
   include nfs-client
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


node 'mgsrv13.medschl.cam.ac.uk' inherits headnode {

}

