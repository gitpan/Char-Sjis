# This file is encoded in ShiftJIS.
die "This file is not encoded in ShiftJIS.\n" if q{��} ne "\x82\xa0";

use strict;
use Char::Sjis;
print "1..2\n";

my $__FILE__ = __FILE__;

$_ = '��';
if ($_ =~ s/(.)//b) {
    if (length($1) == 1) {
        print qq{ok - 1 \$_='��'; \$_=~s/(.)//b; length(\$1)==1 $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 \$_='��'; \$_=~s/(.)//b; length(\$1)==1 $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 \$_='��'; \$_=~s/(.)//b; length(\$1)==1 $^X $__FILE__\n};
}

$_ = '��';
if ($_ =~ s'(.)''b) {
    if (length($1) == 1) {
        print qq{ok - 2 \$_='��'; \$_=~s'(.)''b; length(\$1)==1 $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 2 \$_='��'; \$_=~s'(.)''b; length(\$1)==1 $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 2 \$_='��'; \$_=~s'(.)''b; length(\$1)==1 $^X $__FILE__\n};
}

__END__

