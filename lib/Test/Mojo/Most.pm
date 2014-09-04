package Test::Mojo::Most;

use strict;
use warnings;

# if we use Mojo::Base we get redfined warnings, so use parent instead
use parent 'Test::Mojo::Session';
use parent 'Test::Mojo::More';
use parent 'Test::Mojo::Trim';

our $VERSION = '0.04';

__END__

=head1 NAME

Test::Mojo::Most - Combine various L<Test::Mojo> modules into one, a bit like
L<Test::Most> but for Mojo

=head1 SYNOPSIS

	use strict;
	use warnings;
	use Test::Most;
	use Test::Mojo::Most;

	my $t = Test::Mojo::Most->new;
	$t->get_ok( ... )
		# from Test::Mojo
		->status_is( ... )
		# from Test::Mojo::Session
		->session_has( ... )
		# from Test::Mojo::More
		->cookie_has( ... )
		# from Test::Mojo::Trim
		->trimmed_content_is( ... )
		# and so on
	;

	done_testing();

=head1 DESCRIPTION

Test::Mojo::Most is an extension for L<Test::Mojo>, it inherits all methods
from L<Test::Mojo>, L<Test::Mojo::Session>, L<Test::Mojo::Trim>, and
L<Test::Mojo::More>. It will add more Test::Mojo:: modules as they become
available

=head1 SEE ALSO

L<Test::Mojo>

L<Test::Mojo::Session>

L<Test::Mojo::More>

L<Test::Mojo::Trim>

=head1 AUTHOR INFORMATION

Lee Johnson - C<leejo@cpan.org>

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. If you would like to contribute documentation
please raise an issue / pull request:

	https://github.com/leejo/test-mojo-most

=head1 BUGS

Please raise issues:
	https://github.com/leejo/test-mojo-most/issues

=cut

1;
