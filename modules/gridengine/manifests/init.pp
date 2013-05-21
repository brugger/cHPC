# /etc/puppet/modules/gridengine/manifests/init.pp
# Created by root on Thu Dec  3 16:40:42 EST 2009

class gridengine-common {

    package { 
        "gridengine-common":     ensure => present; 
    }

    $ge_root    = "/var/lib/gridengine/"
    $ge_cell    = "default"
    $ge_common  = "$ge_root/$ge_cell/common"
    $ge_qmaster = "mgsrv13.medschl.cam.ac.uk"

    File {
        owner => "root",
        group => "root",
        mode  => "444",
        require => Package["gridengine-common"],
    }

    file {
        "$ge_root/$ge_cell":             ensure => directory, mode => 755;
        "$ge_common":                    ensure => directory, mode => 755;

        "$ge_common/bootstrap":          content => template("gridengine/bootstrap.erb");
        "$ge_common/act_qmaster":        content => template("gridengine/act_qmaster.erb");

        "/etc/default/gridengine":       content => template("gridengine/gridengine.erb");

	"/etc/gridengine/bootstrap":     content => template("gridengine/bootstrap.erb");
	"/etc/gridengine/configuration": content => template("gridengine/configuration.erb");

    }
}
