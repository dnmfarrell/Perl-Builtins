use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Perl::Builtins' }

# list context
ok my @list = Perl::Builtins::list, 'list() in list context';
is @list, 224, 'list() returns 224 functions';

# scalar context
ok my $list_ref = Perl::Builtins::list, 'list() in scalar context';
is @$list_ref, 224, 'list() in scalar context returns 224 functions';

done_testing;
