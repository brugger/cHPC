class perl {

    package { "perl": ensure => installed }
    package { "perl-base": ensure => installed }
    package { "perl-doc": ensure => installed }
    package { "perl-modules": ensure => installed }
    package { "libxml-simple-perl": ensure => installed }
    package{ "libspreadsheet-writeexcel-perl": ensure => installed }
    package{ "libdbd-mysql-perl": ensure => installed }

}
