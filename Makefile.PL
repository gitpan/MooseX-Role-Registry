use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'MooseX::Role::Registry',
    AUTHOR           => q{binary.com <perl@binary.com>},
    VERSION_FROM     => 'lib/MooseX/Role/Registry.pm',
    ABSTRACT         => 'Moose Role which provides a Registry lookup functionality',
    LICENSE          => 'Artistic_2_0',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More'      => 0,
        'Test::Exception' => 0,
        'Moose'           => 0,
      },
    PREREQ_PM => {
        'Moose::Role'          => '0',
        'namespace::autoclean' => 0,
        'Try::Tiny'            => 0,
        'YAML::XS'             => 0,
      },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'MooseX-Role-Registry-*' },
    (
        eval { ExtUtils::MakeMaker->VERSION(6.46) }
        ? (
            META_MERGE => {
                'meta-spec' => { version => 2 },
                resources   => {
                    repository => {
                        type => 'git',
                        url => 'https://github.com/binary-com/perl-MooseX-Role-Registry.git',
                        web => 'https://github.com/binary-com/perl-MooseX-Role-Registry',
                    },
                }
            }
          )
        : ()
      ),
);
