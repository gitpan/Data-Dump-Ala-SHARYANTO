#!perl

use 5.010;
use strict;
use warnings;

use Capture::Tiny qw(capture_merged);
use Data::Dump::Ala::SHARYANTO;
use DateTime;
use Test::More;

sub dd_ {
    my @args = @_;
    #capture_merged { dd @args };
    dd @args;
}

my $now  = DateTime->now;
my $nows = "$now";

is(dd_([1, 2, 3]), "[1, 2, 3]", "[1, 2, 3]");
my $dump = qq{[
  1,
  # DateTime object
  "$nows",
]};
is(dd_([1, $now]), $dump, "[1, DateTime->now]");

DONE_TESTING:
done_testing();
