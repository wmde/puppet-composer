class composer() {

  file {
    "/usr/local/bin/composer":
      ensure => present,
      owner => 'root',
      group => 'root',
      mode => 0755,
      source => 'puppet:///modules/composer/composer.phar';
  }

}
