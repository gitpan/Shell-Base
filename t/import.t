#!/usr/bin/perl -w
# vim: set ft=perl:

package Some::Thing::Silly;
use strict;

use Test::More;

plan tests => 1;

use Shell::Base qw(shell);

ok(defined $Some::Thing::Silly::{'shell'},
    "Shell::Base->import(shell) creates a pseudo-function");
