node basenode {
    include ntp
    include tcsh
    include git
    include sudo
}

node 'mgsrv13.medschl.cam.ac.uk' inherits basenode {
}

