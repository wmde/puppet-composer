class composer() {

  package { [
      'php5-cli',
    ]: ensure => present,
  }

  file {
    "/usr/local/bin/composer":
      ensure => present,
      owner => 'root',
      group => 'root',
      mode => 0755,
      source => 'puppet:///modules/composer/composer.phar';
  }

}
