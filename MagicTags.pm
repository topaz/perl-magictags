package MagicTags;
use warnings;
use strict;

use Carp qw(croak);

no warnings 'redefine';

BEGIN {
  *CORE::GLOBAL::glob = sub {
    my ($arg) = @_;
    if ($arg =~ /^[a-z\/]/) {
      print "<$arg>";
      return "";
    } elsif ($arg =~ /^\?php.*\?$/s) {
      open(PHP, "|php");
      print PHP "<$arg>\n";
      close PHP;
      return "";
    } else {
      croak "syntax error in tag!";
    }
  };
}

1; 
