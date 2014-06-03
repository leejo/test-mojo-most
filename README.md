# NAME

Test::Mojo::Most - Combine various [Test::Mojo](https://metacpan.org/pod/Test::Mojo) modules into one, a bit like
[Test::Most](https://metacpan.org/pod/Test::Most) but for Mojo

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
                # and so on
        ;

        done_testing();

# DESCRIPTION

Test::Mojo::Most is an extension for [Test::Mojo](https://metacpan.org/pod/Test::Mojo), it inherits all methods
from [Test::Mojo](https://metacpan.org/pod/Test::Mojo), [Test::Mojo::Session](https://metacpan.org/pod/Test::Mojo::Session), and [Test::Mojo::More](https://metacpan.org/pod/Test::Mojo::More). It will
add more Test::Mojo:: modules as they become available

# SEE ALSO

[Test::Mojo](https://metacpan.org/pod/Test::Mojo), [Test::Mojo::Session](https://metacpan.org/pod/Test::Mojo::Session), [Test::Mojo::More](https://metacpan.org/pod/Test::Mojo::More)

# AUTHOR INFORMATION

Lee Johnson:
	https://github.com/leejo

This program is free software, you can redistribute it and/or modify it under
the terms of the Artistic License version 2.0.

# BUGS

Please raise issues:
	https://github.com/leejo/test-mojo-most/issues
