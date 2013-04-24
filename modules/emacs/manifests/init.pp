class emacs {

    package { "emacs23": ensure => latest,}
   
    package { "emacs23-el": ensure => latest }
}

