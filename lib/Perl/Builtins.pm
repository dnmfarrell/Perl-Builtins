use 5.008;
use warnings;
package Perl::Builtins;
use Pod::Functions '%Type';

#ABSTRACT: A list of all Perl 5 built functions

=for HTML <a href="https://travis-ci.org/sillymoose/Perl-Builtins"><img src="https://travis-ci.org/sillymoose/Perl-Builtins.svg?branch=master"></a>
<a href='https://coveralls.io/r/sillymoose/Perl-Builtins'><img src='https://coveralls.io/repos/sillymoose/Perl-Builtins/badge.png' alt='Coverage Status' /></a>

=head2 SYNOPSIS

    use Perl::Builtins;

    # get an array of functions
    my @builtin_functions = Perl::Builtins::list;

    # get an arrayref instead
    my $builtin_functions = Per::Builts::list;

=head2 DESCRIPTION

This module simply returns a list of strings of all the builtin functions in Perl. In scalar context it returns an arrayref.

=head2 RATIONALE

I wrote this module because several times I have needed a list of all builtin functions in Perl, and couldn't find an easy way to get it. Then Father Chrysostomos pointed me towards L<B::Keywords>. You should probably use that.

=head2 SEE ALSO

L<B::Keywords>

=head2 CONTRIBUTORS

John D Jones III, Father Chrysostomos

=cut

sub list { wantarray ? keys %Type : [ keys %Type ] }

1;
