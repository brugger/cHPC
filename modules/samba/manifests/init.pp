class samba {

    package { "samba": 
        ensure => installed 
    }

    package {"samba-common": ensure => installed }

    service { "samba":
        ensure => running,
#        subscribe => [ Package["samba"], 
#                           File["smb.conf"], ]
#

    }
}
