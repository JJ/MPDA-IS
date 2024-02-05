#!/bin/sh

curl https://raw.githubusercontent.com/JJ/Test-Text/master/data/Spanish.aff -o Spanish.aff
curl https://raw.githubusercontent.com/SublimeText/Dictionaries/master/Spanish.dic -o Spanish.dic
echo "use Test::Text; just_check( 'doc','.', 'Spanish', 0 ); just_check( 'doc/infraestructura','.', 'Spanish', 0 ); just_check( 'doc/actividades','.', 'Spanish', 0 ); just_check( '.','.', 'Spanish' ); " > just_check.t
perl -MTAP::Harness -e 'use utf8; my $harness = TAP::Harness->new( { verbosity => 0} ); die "FAIL" if $harness->runtests( "just_check.t" )->failed;'
