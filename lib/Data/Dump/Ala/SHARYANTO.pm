package Data::Dump::Ala::SHARYANTO;

use 5.010;
use strict;
use warnings;
use Data::Dump::Filtered qw();

use Exporter::Lite;
our @EXPORT = qw(dd);

our $VERSION = '0.01'; # VERSION

sub dd {
    # dump_filtered always prints? unlike dd
    Data::Dump::Filtered::dump_filtered(
        @_,
        sub {
            my ($ctx, $oref) = @_;
            if ($ctx->class) {
                if ($oref->isa("DateTime")) {
                    return {dump => "\"$oref\"", comment => "DateTime object"};
                }
            } else {
                return;
            }
        }
    );
}

1;
# ABSTRACT: Use Data::Dump to dump data à la Steven Haryanto




__END__
=pod

=head1 NAME

Data::Dump::Ala::SHARYANTO - Use Data::Dump to dump data à la Steven Haryanto

=head1 VERSION

version 0.01

=head1 SYNOPSIS

 use Data::Dump::Ala::SHARYANTO;
 dd(...);

=head1 DESCRIPTION

Everyone prefers their dumps differently. I picked Data::Dump::Ala::* namespace
for author-customized L<Data::Dump> routines.

This module dumps with L<DateTime> objects converted to strings, e.g.
"2011-10-19".

=head1 FUNCTIONS

=for Pod::Coverage dd

=head2 dd(...)

Dump one or more data structures.

=head1 SEE ALSO

L<Data::Dump>

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

