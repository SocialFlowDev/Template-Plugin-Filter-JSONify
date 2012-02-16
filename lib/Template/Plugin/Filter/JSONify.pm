package Template::Plugin::Filter::JSONify;

$Template::Plugin::Filter::JSONify::VERSION = '0.05';

# ABSTRACT: Template plugin for stringifying templates for use in javascript
use strict;
use warnings;
use parent 'Template::Plugin::Filter';

use JSON::PP;

my $jason = JSON::PP->new->allow_nonref->escape_slash;

sub init {
    my $self = shift;
    $self->install_filter('JSONify');
    return $self;
}

sub filter {
    shift;
    $jason->encode(shift);
}

1;

