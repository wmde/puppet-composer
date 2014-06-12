class composer::update(
    $composer_home = '/tmp/composer',
    $install_dir = '/usr/local/bin',
    $target,
    $user
) {
    file {
        "${target}/composer.lock":
            ensure => 'absent',
    }

    exec { "composer-install-${title}":
        cwd => "${target}",
        command => "${install_dir}/composer install --prefer-source",
        environment => [ "COMPOSER_HOME=${composer_home}" ],
        require => [ file["${install_dir}/composer"], file["${target}/composer.lock"] ],
        user => $user,
        timeout => 1000;
    }

    exec { "composer-update-${title}":
        cwd => "${target}",
        command => "${install_dir}/composer update --prefer-source",
        environment => [ "COMPOSER_HOME=${composer_home}" ],
        require => [ exec["composer-install-${title}"] ],
        user => $user,
        timeout => 1000;
    }

}
