#!perl -T

use 5.010;
use strict;
use warnings;

use Capture::Tiny qw(capture_merged);
use Data::Dump::Ala::SHARYANTO;
use DateTime;
use Test::More;

sub dd_ {
    my @args = @_;
    capture_merged { dd @args };
}

my $now  = DateTime->now;
my $nows = "$now";

is(dd_([1, 2, 3]), "[1, 2, 3]\n", "[1, 2, 3]");
my $dump = <<_;
[
  1,
  # DateTime object
  "$nows",
]
_
is(dd_([1, $now]), $dump, "[1, DateTime->now]");

DONE_TESTING:
done_testing();
