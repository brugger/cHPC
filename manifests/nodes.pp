node base {
    include ntp
    include tcsh
    include git
    include sudo
    include mdadm
}

node work inherits base {
   include emacs
   include gitk
}


node 'mgsrv13.medschl.cam.ac.uk' inherits work {
}

