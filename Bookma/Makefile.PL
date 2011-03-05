use inc::Module::Install;
name 'Bookma';
all_from 'lib/Bookma.pm';

# requires '';

requires 'Pickles' => 0.06;

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_include;
WriteAll;
