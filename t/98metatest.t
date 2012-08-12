#!/usr/bin/perl -w
use strict;

use Test::More;

# Skip if doing a regular install
plan skip_all => "Author tests not required for installation"
    unless ( $ENV{AUTOMATED_TESTING} );

eval "use Test::CPAN::Meta::YAML";
plan skip_all => "Test::CPAN::Meta::YAML required for testing META.yml files" if $@;

meta_yaml_ok();
