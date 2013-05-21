# /etc/puppet/modules/gridengine/manifests/init.pp
# Created by root on Thu Dec  3 16:40:42 EST 2009

class gridengine::execd inherits gridengine-common {

    package { 
        "gridengine-exec":     ensure => present; 
    }


    service { 
    	        gridengine-exec:
		    enable => true,
		    ensure => running,
		    hasstatus => true,
		    hasrestart => true,
		    subscribe => [ Package["gridengine-exec"], 
                           File["$ge_common/bootstrap"], 
                           File["$ge_common/act_qmaster"], 
                           File["/etc/default/gridengine"],
                           ];
	}
}
