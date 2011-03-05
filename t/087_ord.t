# This file is encoded in ShiftJIS.
die "This file is not encoded in ShiftJIS.\n" if q{‚ } ne "\x82\xa0";

use Char::Sjis;
print "1..2\n";

my $__FILE__ = __FILE__;

if (Char::Sjis::ord('‚ ') == 0x82A0) {
    print qq{ok - 1 Char::Sjis::ord('‚ ') == 0x82A0 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 Char::Sjis::ord('‚ ') == 0x82A0 $^X $__FILE__\n};
}

$_ = '‚¢';
if (Char::Sjis::ord == 0x82A2) {
    print qq{ok - 2 \$_ = '‚¢'; Char::Sjis::ord() == 0x82A2 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 \$_ = '‚¢'; Char::Sjis::ord() == 0x82A2 $^X $__FILE__\n};
}

__END__
