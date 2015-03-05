package Test::Mojo::Most;

use strict;
use warnings;

# if we use Mojo::Base we get redfined warnings, so use parent instead
use parent 'Test::Mojo::Session';
use parent 'Test::Mojo::More';
use parent 'Test::Mojo::Trim';

our $VERSION = '0.06';

sub _cookie {
    my ( $self,$name ) = @_;

    my @cookies = $self->ua->cookie_jar->all;
	@cookies = @{$cookies[0]} if ref $cookies[0] eq 'ARRAY';

    foreach my $cookie ( @cookies ) {
        return $cookie if $cookie->name eq $name;
    }
    return;
}

sub _session {
	# _extract_session from Test::Mojo::Session
	return shift->_extract_session;
}

sub _flash {
	return $_[0]->app->flash( $_[1] ) if @_ == 2;
	{};
}

sub cookie_hashref { return { map { $_->name => $_->value } @{ $_[0]->tx->res->cookies } } }
sub flash_hashref  { return $_[0]->_session->{flash} || $_[0]->_session->{new_flash} || {} }

__END__

=head1 NAME

Test::Mojo::Most - Combine various L<Test::Mojo> modules into one, a bit like
L<Test::Most> but for Mojo

=for html
<a href='https://travis-ci.org/leejo/test-mojo-most?branch=master'><img src='https://travis-ci.org/leejo/test-mojo-most.svg?branch=master' alt='Build Status' /></a>
<a href='https://coveralls.io/r/leejo/test-mojo-most?branch=master'><img src='https://coveralls.io/repos/leejo/test-mojo-most/badge.png?branch=master' alt='Coverage Status' /></a>

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
available.

This module also fixes L<Test::Mojo::More> to use the correct values when
retrieving the cookies / session / flash values

=head1 SEE ALSO

L<Test::Mojo>

L<Test::Mojo::Session>

L<Test::Mojo::More>

L<Test::Mojo::Trim>

=head1 AUTHOR INFORMATION

Lee Johnson - C<leejo@cpan.org>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. If you would like to contribute documentation
please raise an issue / pull request:

	https://github.com/leejo/test-mojo-most

=head1 BUGS

Please raise issues:
	https://github.com/leejo/test-mojo-most/issues

=cut

1;
