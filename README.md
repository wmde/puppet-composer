# Composer puppet module

Puppet module for composer

Installs composer.phar (https://getcomposer.org/) to /usr/local/bin
so that it can be run system-wide.

# Version

Composer version 1e27ff5e22df81e3cd0cd36e5fdd4a3c5a031f4a 2014-08-11 15:46:48

# Usage

1. As root clone this repo as a puppet module
> git clone https://github.com/wmde/puppet-composer.git /etc/puppet/modules/composer

2. On wikitech (If not already done) > Manage Puppet Groups > Project > Add class > "composer".

3. On wikitech > Manage Instances > Configure Instance > Tick the composer class
