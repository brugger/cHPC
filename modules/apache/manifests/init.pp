class apache {

    package { "apache2": ensure => installed }
    package { "libapache2-mod-python": ensure => installed }
    package { "libapache2-mod-wsgi": ensure => installed }
    package { "python-django": ensure => installed }
    package { "python-django-tagging": ensure => installed }


    file{'graphite':
        path => '/etc/apache2/sites-enabled/graphite', 
        ensure => file,
        content => template('apache/graphite'),
    }

}
