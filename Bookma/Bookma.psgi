
use strict;
use File::Spec;
use File::Basename;
use lib File::Spec->catdir( dirname(__FILE__), 'lib' );

use Plack::Builder;
use Bookma;

my $webapp = Bookma->new;
my $app = $webapp->handler;
my $config = $webapp->config;

builder {
    enable 'Static',
        path => qr{^/static/}, root => $config->path_to('htdocs');
    $app;
};


