class perl {

    package { "perl": ensure => installed }
    package { "perl-base": ensure => installed }
    package { "perl-doc": ensure => installed }
    package { "perl-modules": ensure => installed }
    package { "libxml-simple-perl": ensure => installed }
    package{ "libspreadsheet-writeexcel-perl": ensure => installed }
    package{ "libdbd-mysql-perl": ensure => installed }
    package{ "liblog-log4perl-perl": ensure => installed }
    package{ "libjson-perl": ensure => installed }
    package{ "libperl4-corelibs-perl": ensure => installed}
    package{ "libossp-uuid-perl": ensure => installed}
    package{ "libfile-tail-perl": ensure => installed}
    package{ "libcgi-ajax-perl": ensure => installed } 

}
