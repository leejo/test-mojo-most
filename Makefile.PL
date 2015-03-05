#!perl

use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME          => 'Test::Mojo::Most',
  ABSTRACT_FROM => 'lib/Test/Mojo/Most.pm',
  VERSION_FROM  => 'lib/Test/Mojo/Most.pm',
  AUTHOR        => 'Lee Johnson <leejo@cpan.org>',
  LICENSE       => 'perl',
  MIN_PERL_VERSION => '5.10.1',
  PREREQ_PM => {
    'Test::Mojo::Session' => 1.04,
    'Test::Mojo::More'    => 0.05,
    'Test::Mojo::Trim'    => 0.03,
  },
  BUILD_REQUIRES => {
    'Mojolicious' => 6.00,
    'Test::Most'  => 0.31,
  },
  META_MERGE => {
    resources => {
      license    => 'http://dev.perl.org/licenses/',
      homepage   => 'https://metacpan.org/module/Test::Mojo::Most',
      bugtracker => 'https://github.com/leejo/test-mojo-most/issues',
      repository => 'https://github.com/leejo/test-mojo-most'
    },
  },
  test => {
    TESTS => 't/*.t',
  },
);
