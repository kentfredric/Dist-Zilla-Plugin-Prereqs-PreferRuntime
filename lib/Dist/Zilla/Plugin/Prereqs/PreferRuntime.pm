use strict;
use warnings;

package Dist::Zilla::Plugin::Prereqs::PreferRuntime;

# ABSTRACT: Move dependencies to C<runtime.requires> where possible.

use Moose;

=head1 SYNOPSIS

This, like L<< C<Dist::Zilla::Plugin::Prereqs::SyncVersions>|Dist::Zilla::Plugin::Prereqs::SyncVersions >>,
exists to keep your published requirements simple.

This, unlike its friend, this removes dependencies where possible.

    runtime.requires = 6     runtime.requires = 6
    build.requires   = 6  →
    test.requires    = 6

    runtime.requires = 7     runtime.requires = 7
    build.requires   = 6  →
    test.requires    = 6

    runtime.requires = 5     runtime.requires = 5
    build.requires   = 6  →  build.requires   = 6
    test.requires    = 6

    runtime.requires = 5     runtime.requires = 5
    build.requires   = 6  →  build.requires   = 6
    test.requires    = 7     test.requires    = 7



=cut

__PACKAGE__->meta->make_immutable;
no Moose;

1;
