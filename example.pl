#!/usr/bin/perl -w
use strict;

use MagicTags;

print "in perl...\n";

<?php print("in php!\n"); var_dump(array(1,2,3)); ?>;

print "back in perl...\n";

my @links = ('http://google.com', 'http://synacor.com');

<html lang="en">;
  <body class="hax">;
    foreach my $link (@links) {
      <li class="item">;<a href="\$link">;
        print "go to $link!";
      </a>;</li>;
    }
  </body>;
</html>;

print "\n\naaaand done!\n";
