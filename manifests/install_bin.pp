class composer::install_bin(
    $composer_home = '/tmp/composer',
    $install_dir = '/usr/local/bin',
    $source_dir
) {

    package { [ 'php5-cli' ]:
        ensure => present,
    }

    git::clone { 'composer':
        ensure => latest,
        directory => "${source_dir}/composer",
        origin => 'https://gerrit.wikimedia.org/r/p/integration/composer.git',
    }

    file {
        "${install_dir}/composer":
            ensure => link,
            mode => 0755,
            target => "${source_dir}/composer/vendor/bin/composer";
    }

    file {
        "${composer_home}":
            ensure => 'directory';
    }

}
