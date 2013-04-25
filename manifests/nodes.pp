node base {
    
    include users

    include ntp
    include tcsh
    include git
    include sudo
    include hosts
}

node work inherits base {
   include emacs
   include gitk
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
   include gridengine-exec
   include nfs-client
}

node compute-100-1 inherits execnode {

}

node 'mgsrv13.medschl.cam.ac.uk' inherits headnode {

}

