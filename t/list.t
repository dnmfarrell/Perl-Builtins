use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Perl::Builtins' }

# list context
ok my @list = Perl::Builtins::list, 'list() in list context';
is @list, 241, 'list() returns 240 functions';
is $list[0], 'AUTOLOAD', 'AUTOLOAD is first';
is $list[240], 'y', 'y is last';

# scalar context
ok my $list_ref = Perl::Builtins::list, 'list() in scalar context';
is @$list_ref, 241, 'list() in scalar context returns 240 functions';
is @$list_ref[0], 'AUTOLOAD', 'AUTOLOAD is first';
is @$list_ref[240], 'y', 'y is last';
done_testing;
