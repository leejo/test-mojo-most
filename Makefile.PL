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
  },
  BUILD_REQUIRES => {
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
