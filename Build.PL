use strict;
use warnings;
use Module::Build 0.3601;
use File::Spec;

my %module_build_args = (
    "build_requires"        => {
        "Module::Build"         => "0.3601",
        "ExtUtils::CBuilder"    => 0
    },
    "configure_requires"    => {
        "Module::Build"         => "0.3601"
    },
    "dist_abstract"         => "low-level XS-based bindings to klib",
    "dist_author"           => [
        "Chris Fields <cjfields\@bioperl.org>"
    ],
    "dist_name"             => "Bio-Kseq",
    "dist_version"          => "0.01",
    "license"               => "perl",
    "module_name"           => "Bio::Kseq",
    "extra_compiler_flags"  => ['-fPIC'],
    "include_dirs"          => ['.', File::Spec->catdir(qw(src klib))],
    "extra_linker_flags"    => ["-lz"],
    "recursive_test_files"  => 1,
);

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
