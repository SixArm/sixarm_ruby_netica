# Ruby » <br> Netica gem of helpers to connect to Norsys Netica API using JRuby

* Doc: <http://sixarm.com/sixarm_ruby_netica/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_netica>
* Repo: <http://github.com/sixarm/sixarm_ruby_netica>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

For details about Netica, please see http://www.norsys.com

For docs go to <http://sixarm.com/sixarm_ruby_netica/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_netica

Bundler:

    gem "sixarm_ruby_netica", "~>1.0.8"

Require:

    require "sixarm_ruby_netica"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_netica --trust-policy HighSecurity
