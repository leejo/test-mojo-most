# NAME

Test::Mojo::Most - Combine various [Test::Mojo](https://metacpan.org/pod/Test::Mojo) modules into one, a bit like
[Test::Most](https://metacpan.org/pod/Test::Most) but for Mojo

<div>

    <a href='https://travis-ci.org/leejo/test-mojo-most?branch=master'><img src='https://travis-ci.org/leejo/test-mojo-most.svg?branch=master' alt='Build Status' /></a>
    <a href='https://coveralls.io/r/leejo/test-mojo-most?branch=master'><img src='https://coveralls.io/repos/leejo/test-mojo-most/badge.png?branch=master' alt='Coverage Status' /></a>
</div>

# SYNOPSIS

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

# DESCRIPTION

Test::Mojo::Most is an extension for [Test::Mojo](https://metacpan.org/pod/Test::Mojo), it inherits all methods
from [Test::Mojo](https://metacpan.org/pod/Test::Mojo), [Test::Mojo::Session](https://metacpan.org/pod/Test::Mojo::Session), [Test::Mojo::Trim](https://metacpan.org/pod/Test::Mojo::Trim), and
[Test::Mojo::More](https://metacpan.org/pod/Test::Mojo::More). It will add more Test::Mojo:: modules as they become
available.

This module also fixes [Test::Mojo::More](https://metacpan.org/pod/Test::Mojo::More) to use the correct values when
retrieving the cookies / session / flash values

# SEE ALSO

[Test::Mojo](https://metacpan.org/pod/Test::Mojo)

[Test::Mojo::Session](https://metacpan.org/pod/Test::Mojo::Session)

[Test::Mojo::More](https://metacpan.org/pod/Test::Mojo::More)

[Test::Mojo::Trim](https://metacpan.org/pod/Test::Mojo::Trim)

# AUTHOR INFORMATION

Lee Johnson - `leejo@cpan.org`

# LICENSE

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. If you would like to contribute documentation
please raise an issue / pull request:

        https://github.com/leejo/test-mojo-most

# BUGS

Please raise issues:
	https://github.com/leejo/test-mojo-most/issues
