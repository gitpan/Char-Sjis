# This file is encoded in ShiftJIS.
die "This file is not encoded in ShiftJIS.\n" if q{��} ne "\x82\xa0";

use strict;
use Char::Sjis;
print "1..1\n";

my $__FILE__ = __FILE__;

$_ = 'C:/Perl/site/lib';
$_ =~ s#/#\\#g;

if ($_ eq 'C:\\Perl\\site\\lib') {
    print qq{ok - 1 \$_ =~ s#/#\\\\#g; $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 \$_ =~ s#/#\\\\#g; $^X $__FILE__\n};
}

__END__
