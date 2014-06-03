#!perl

use strict;
use warnings;

use Mojolicious::Lite;
use Test::Most;
use Test::Mojo::Most;

get '/set' => sub {
	shift
		->session(s1 => 'session data')
		->session(s3 => [1, 3])
		->cookie('chocolate' => 'chip')
		->flash('flash!' => 'AAAAaaaa')
		->render(text => 'hello world');
} => 'set';

my $t = Test::Mojo::Most->new;
$t->get_ok('/set')
	->status_is(200)
	->content_like(qr/hello world/)
	->session_ok
	->session_has('/s1')
	->session_is('/s1' => 'session data')
	->session_hasnt('/s2')
	->session_is('/s3' => [1, 3], 's3 contains right array')
	->cookie_has('chocolate')
	->cookie_hasnt('hobnob')
	->cookie_like('chocolate',qr/hip/)
	->flash_is('/set' => undef)
	->flash_hasnt('/error')
;

isa_ok( $t->dom,'Mojo::DOM' );
isa_ok( $t->cookie_hashref,'HASH' );

cmp_deeply(
	$t->cookie_hashref,
	{
		'chocolate'   => 'chip',
		'mojolicious' => ignore(),
	},
	'cookie_hashref',
);

cmp_deeply(
	$t->flash_hashref,
	{
		'flash!' => 'AAAAaaaa',
	},
	'flash_hashref',
);

done_testing();
