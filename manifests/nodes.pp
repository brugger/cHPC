node basenode {
    include ntp
    include tcsh
    include git
}

node 'mgsrv13.medschl.cam.ac.uk' inherits basenode {
}

