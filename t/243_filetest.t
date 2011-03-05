# This file is encoded in ShiftJIS.
die "This file is not encoded in ShiftJIS.\n" if q{あ} ne "\x82\xa0";

# ファイルテストが真になる場合は 1 が返るテスト

my $__FILE__ = __FILE__;

use Char::Esjis;
print "1..9\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    for my $tno (1..9) {
        print "ok - $tno # SKIP $^X $0\n";
    }
    exit;
}

open(FILE,'>file');
close(FILE);

open(FILE,'file');

if ((Char::Esjis::r 'file') == 1) {
    $_ = Char::Esjis::r 'file';
    print "ok - 1 Char::Esjis::r 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Esjis::r 'file';
    print "not ok - 1 Char::Esjis::r 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Esjis::w 'file') == 1) {
    $_ = Char::Esjis::w 'file';
    print "ok - 2 Char::Esjis::w 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Esjis::w 'file';
    print "not ok - 2 Char::Esjis::w 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Esjis::o 'file') == 1) {
    $_ = Char::Esjis::o 'file';
    print "ok - 3 Char::Esjis::o 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Esjis::o 'file';
    print "not ok - 3 Char::Esjis::o 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Esjis::R 'file') == 1) {
    $_ = Char::Esjis::R 'file';
    print "ok - 4 Char::Esjis::R 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Esjis::R 'file';
    print "not ok - 4 Char::Esjis::R 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Esjis::W 'file') == 1) {
    $_ = Char::Esjis::W 'file';
    print "ok - 5 Char::Esjis::W 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Esjis::W 'file';
    print "not ok - 5 Char::Esjis::W 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Esjis::O 'file') == 1) {
    $_ = Char::Esjis::O 'file';
    print "ok - 6 Char::Esjis::O 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Esjis::O 'file';
    print "not ok - 6 Char::Esjis::O 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Esjis::e 'file') == 1) {
    $_ = Char::Esjis::e 'file';
    print "ok - 7 Char::Esjis::e 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Esjis::e 'file';
    print "not ok - 7 Char::Esjis::e 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Esjis::z 'file') == 1) {
    $_ = Char::Esjis::z 'file';
    print "ok - 8 Char::Esjis::z 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Esjis::z 'file';
    print "not ok - 8 Char::Esjis::z 'file' ($_) == 1 $^X $__FILE__\n";
}

if ((Char::Esjis::f 'file') == 1) {
    $_ = Char::Esjis::f 'file';
    print "ok - 9 Char::Esjis::f 'file' ($_) == 1 $^X $__FILE__\n";
}
else {
    $_ = Char::Esjis::f 'file';
    print "not ok - 9 Char::Esjis::f 'file' ($_) == 1 $^X $__FILE__\n";
}

close(FILE);
unlink('file');

__END__
