use strict;
use warnings;

package Dist::Zilla::Plugin::Prereqs::PreferRuntime;
BEGIN {
  $Dist::Zilla::Plugin::Prereqs::PreferRuntime::AUTHORITY = 'cpan:KENTNL';
}
{
  $Dist::Zilla::Plugin::Prereqs::PreferRuntime::VERSION = '0.001000';
}

# ABSTRACT: Move dependencies to C<runtime.requires> where possible.

use Moose;


__PACKAGE__->meta->make_immutable;
no Moose;

1;

__END__

=pod

=encoding utf-8

=head1 NAME

Dist::Zilla::Plugin::Prereqs::PreferRuntime - Move dependencies to C<runtime.requires> where possible.

=head1 VERSION

version 0.001000

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

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
