#!/usr/bin/perl -w
# vim: set ft=perl:

use strict;

use Test::More;
use Shell::Base;

plan tests => 4;

my ($version, $prog);
use_ok("Shell::Base");

is($version = Shell::Base->version, $Shell::Base::VERSION, '$self->version() is ok');
is($prog = Shell::Base->progname, 'misc.t', '$self->progname() is ok');
is(Shell::Base->intro,
"$prog version $version, Copyright (C) 2002 darren chamberlain
$prog comes with ABSOLUTELY NO WARRANTY; for details type 'warranty'.
This is free software, and you are welcome to redistribute it
under certain conditions; see COPYING for more details.",
    '$self->intro() is ok');
