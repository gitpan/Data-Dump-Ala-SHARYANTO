
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Use Data::Dump to dump data \303\240 la Steven Haryanto",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Data-Dump-Ala-SHARYANTO",
  "dist_version" => "0.01",
  "license" => "perl",
  "module_name" => "Data::Dump::Ala::SHARYANTO",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Capture::Tiny" => 0,
    "Data::Dump" => "1.17",
    "DateTime" => 0,
    "Exporter::Lite" => 0,
    "perl" => "5.010"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
