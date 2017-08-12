# SixArm.com → Ruby → <br> Netica gem of helpers to connect to Norsys Netica API using JRuby

* Doc: <http://sixarm.com/sixarm_ruby_netica/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_netica>
* Repo: <http://github.com/sixarm/sixarm_ruby_netica>
<!--HEADER-SHUT-->


## Introduction

For details about Netica, please see http://www.norsys.com

For docs go to <http://sixarm.com/sixarm_ruby_netica/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_netica", ">= 1.0.9", "< 2"

To install using the command line, run this:

    gem install sixarm_ruby_netica -v ">= 1.0.9, < 2"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_netica -v ">= 1.0.9, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_netica"

<!--INSTALL-SHUT-->
