# This file is encoded in ShiftJIS.
die "This file is not encoded in ShiftJIS.\n" if q{��} ne "\x82\xa0";

use Char::Sjis;
print "1..1\n";

my $__FILE__ = __FILE__;

# [96 FB] [92 4A]
$_ = "���J";

# [FB 92] [89 48]
if ($_ =~ s/��/�H/g) {
    print qq{not ok - 1 \$_ !~ s/��/�H/ --> ($_) $^X $__FILE__\n};
}
else {
    if ($_ eq "���J") {
        print qq{ok - 1 \$_ !~ s/��/�H/ --> ($_) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 \$_ !~ s/��/�H/ --> ($_) $^X $__FILE__\n};
    }
}

__END__

kog*2*20 ����

perl��Char::sjis�̕����u���B���p�A�S�p��1�o�C�g��2�o�C�g�ڂɓI�m�ɐ��K�\�����q�b�g������p
http://blogs.yahoo.co.jp/koga2020/40579992.html

���
