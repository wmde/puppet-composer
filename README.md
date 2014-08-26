# Composer puppet module

Puppet module for composer

Installs composer.phar (https://getcomposer.org/) to /usr/local/bin
so that it can be run system-wide.

# Version

Composer version 7adc41d02c3536b3e19a6b906cf0c4cf6d3beb70 2014-01-20 18:10:11

# Usage

1. As root clone this repo as a puppet module
> git clone https://github.com/wmde/puppet-composer.git /etc/puppet/modules/composer

2. On wikitech (If not already done) > Manage Puppet Groups > Project > Add class > "composer".

3. On wikitech > Manage Instances > Configure Instance > Tick the composer class
