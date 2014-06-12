class composer(
    $base_dir
) {

  package { [
      'php5-cli',
    ]: ensure => present,
  }

  git::clone { 'composer':
      ensure => latest,
      directory => "${base_dir}/composer",
      origin => 'https://gerrit.wikimedia.org/r/p/integration/composer.git',
      recurse_submodules => true;
  }

  file {
    "/usr/local/bin/composer":
      ensure => link,
      mode => 0755,
      target => "${base_dir}/composer/vendor/bin/composer";
  }

}
