# This file is encoded in ShiftJIS.
die "This file is not encoded in ShiftJIS.\n" if q{あ} ne "\x82\xa0";

# Char::Esjis::X と -X (Perlのファイルテスト演算子) の結果が一致することのテスト

my $__FILE__ = __FILE__;

use Char::Esjis;
print "1..48\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    for my $tno (1..48) {
        print "ok - $tno # SKIP $^X $0\n";
    }
    exit;
}

open(FILE,'>file');
close(FILE);

open(FILE,'file');

if (((Char::Esjis::r 'file') ne '') == ((-r 'file') ne '')) {
    print "ok - 1 Char::Esjis::r 'file' == -r 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 1 Char::Esjis::r 'file' == -r 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::r FILE) ne '') == ((-r FILE) ne '')) {
    print "ok - 2 Char::Esjis::r FILE == -r FILE $^X $__FILE__\n";
}
else {
    print "not ok - 2 Char::Esjis::r FILE == -r FILE $^X $__FILE__\n";
}

if (((Char::Esjis::w 'file') ne '') == ((-w 'file') ne '')) {
    print "ok - 3 Char::Esjis::w 'file' == -w 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 3 Char::Esjis::w 'file' == -w 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::w FILE) ne '') == ((-w FILE) ne '')) {
    print "ok - 4 Char::Esjis::w FILE == -w FILE $^X $__FILE__\n";
}
else {
    print "not ok - 4 Char::Esjis::w FILE == -w FILE $^X $__FILE__\n";
}

if (((Char::Esjis::x 'file') ne '') == ((-x 'file') ne '')) {
    print "ok - 5 Char::Esjis::x 'file' == -x 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 5 Char::Esjis::x 'file' == -x 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::x FILE) ne '') == ((-x FILE) ne '')) {
    print "ok - 6 Char::Esjis::x FILE == -x FILE $^X $__FILE__\n";
}
else {
    print "not ok - 6 Char::Esjis::x FILE == -x FILE $^X $__FILE__\n";
}

if (((Char::Esjis::o 'file') ne '') == ((-o 'file') ne '')) {
    print "ok - 7 Char::Esjis::o 'file' == -o 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 7 Char::Esjis::o 'file' == -o 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::o FILE) ne '') == ((-o FILE) ne '')) {
    print "ok - 8 Char::Esjis::o FILE == -o FILE $^X $__FILE__\n";
}
else {
    print "not ok - 8 Char::Esjis::o FILE == -o FILE $^X $__FILE__\n";
}

if (((Char::Esjis::R 'file') ne '') == ((-R 'file') ne '')) {
    print "ok - 9 Char::Esjis::R 'file' == -R 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 9 Char::Esjis::R 'file' == -R 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::R FILE) ne '') == ((-R FILE) ne '')) {
    print "ok - 10 Char::Esjis::R FILE == -R FILE $^X $__FILE__\n";
}
else {
    print "not ok - 10 Char::Esjis::R FILE == -R FILE $^X $__FILE__\n";
}

if (((Char::Esjis::W 'file') ne '') == ((-W 'file') ne '')) {
    print "ok - 11 Char::Esjis::W 'file' == -W 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 11 Char::Esjis::W 'file' == -W 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::W FILE) ne '') == ((-W FILE) ne '')) {
    print "ok - 12 Char::Esjis::W FILE == -W FILE $^X $__FILE__\n";
}
else {
    print "not ok - 12 Char::Esjis::W FILE == -W FILE $^X $__FILE__\n";
}

if (((Char::Esjis::X 'file') ne '') == ((-X 'file') ne '')) {
    print "ok - 13 Char::Esjis::X 'file' == -X 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 13 Char::Esjis::X 'file' == -X 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::X FILE) ne '') == ((-X FILE) ne '')) {
    print "ok - 14 Char::Esjis::X FILE == -X FILE $^X $__FILE__\n";
}
else {
    print "not ok - 14 Char::Esjis::X FILE == -X FILE $^X $__FILE__\n";
}

if (((Char::Esjis::O 'file') ne '') == ((-O 'file') ne '')) {
    print "ok - 15 Char::Esjis::O 'file' == -O 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 15 Char::Esjis::O 'file' == -O 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::O FILE) ne '') == ((-O FILE) ne '')) {
    print "ok - 16 Char::Esjis::O FILE == -O FILE $^X $__FILE__\n";
}
else {
    print "not ok - 16 Char::Esjis::O FILE == -O FILE $^X $__FILE__\n";
}

if (((Char::Esjis::e 'file') ne '') == ((-e 'file') ne '')) {
    print "ok - 17 Char::Esjis::e 'file' == -e 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 17 Char::Esjis::e 'file' == -e 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::e FILE) ne '') == ((-e FILE) ne '')) {
    print "ok - 18 Char::Esjis::e FILE == -e FILE $^X $__FILE__\n";
}
else {
    print "not ok - 18 Char::Esjis::e FILE == -e FILE $^X $__FILE__\n";
}

if (((Char::Esjis::z 'file') ne '') == ((-z 'file') ne '')) {
    print "ok - 19 Char::Esjis::z 'file' == -z 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 19 Char::Esjis::z 'file' == -z 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::z FILE) ne '') == ((-z FILE) ne '')) {
    print "ok - 20 Char::Esjis::z FILE == -z FILE $^X $__FILE__\n";
}
else {
    print "not ok - 20 Char::Esjis::z FILE == -z FILE $^X $__FILE__\n";
}

if (((Char::Esjis::s 'file') ne '') == ((-s 'file') ne '')) {
    print "ok - 21 Char::Esjis::s 'file' == -s 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 21 Char::Esjis::s 'file' == -s 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::s FILE) ne '') == ((-s FILE) ne '')) {
    print "ok - 22 Char::Esjis::s FILE == -s FILE $^X $__FILE__\n";
}
else {
    print "not ok - 22 Char::Esjis::s FILE == -s FILE $^X $__FILE__\n";
}

if (((Char::Esjis::f 'file') ne '') == ((-f 'file') ne '')) {
    print "ok - 23 Char::Esjis::f 'file' == -f 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 23 Char::Esjis::f 'file' == -f 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::f FILE) ne '') == ((-f FILE) ne '')) {
    print "ok - 24 Char::Esjis::f FILE == -f FILE $^X $__FILE__\n";
}
else {
    print "not ok - 24 Char::Esjis::f FILE == -f FILE $^X $__FILE__\n";
}

if (((Char::Esjis::d 'file') ne '') == ((-d 'file') ne '')) {
    print "ok - 25 Char::Esjis::d 'file' == -d 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 25 Char::Esjis::d 'file' == -d 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::d FILE) ne '') == ((-d FILE) ne '')) {
    print "ok - 26 Char::Esjis::d FILE == -d FILE $^X $__FILE__\n";
}
else {
    print "not ok - 26 Char::Esjis::d FILE == -d FILE $^X $__FILE__\n";
}

if (((Char::Esjis::p 'file') ne '') == ((-p 'file') ne '')) {
    print "ok - 27 Char::Esjis::p 'file' == -p 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 27 Char::Esjis::p 'file' == -p 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::p FILE) ne '') == ((-p FILE) ne '')) {
    print "ok - 28 Char::Esjis::p FILE == -p FILE $^X $__FILE__\n";
}
else {
    print "not ok - 28 Char::Esjis::p FILE == -p FILE $^X $__FILE__\n";
}

if (((Char::Esjis::S 'file') ne '') == ((-S 'file') ne '')) {
    print "ok - 29 Char::Esjis::S 'file' == -S 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 29 Char::Esjis::S 'file' == -S 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::S FILE) ne '') == ((-S FILE) ne '')) {
    print "ok - 30 Char::Esjis::S FILE == -S FILE $^X $__FILE__\n";
}
else {
    print "not ok - 30 Char::Esjis::S FILE == -S FILE $^X $__FILE__\n";
}

if (((Char::Esjis::b 'file') ne '') == ((-b 'file') ne '')) {
    print "ok - 31 Char::Esjis::b 'file' == -b 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 31 Char::Esjis::b 'file' == -b 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::b FILE) ne '') == ((-b FILE) ne '')) {
    print "ok - 32 Char::Esjis::b FILE == -b FILE $^X $__FILE__\n";
}
else {
    print "not ok - 32 Char::Esjis::b FILE == -b FILE $^X $__FILE__\n";
}

if (((Char::Esjis::c 'file') ne '') == ((-c 'file') ne '')) {
    print "ok - 33 Char::Esjis::c 'file' == -c 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 33 Char::Esjis::c 'file' == -c 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::c FILE) ne '') == ((-c FILE) ne '')) {
    print "ok - 34 Char::Esjis::c FILE == -c FILE $^X $__FILE__\n";
}
else {
    print "not ok - 34 Char::Esjis::c FILE == -c FILE $^X $__FILE__\n";
}

if (((Char::Esjis::u 'file') ne '') == ((-u 'file') ne '')) {
    print "ok - 35 Char::Esjis::u 'file' == -u 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 35 Char::Esjis::u 'file' == -u 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::u FILE) ne '') == ((-u FILE) ne '')) {
    print "ok - 36 Char::Esjis::u FILE == -u FILE $^X $__FILE__\n";
}
else {
    print "not ok - 36 Char::Esjis::u FILE == -u FILE $^X $__FILE__\n";
}

if (((Char::Esjis::g 'file') ne '') == ((-g 'file') ne '')) {
    print "ok - 37 Char::Esjis::g 'file' == -g 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 37 Char::Esjis::g 'file' == -g 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::g FILE) ne '') == ((-g FILE) ne '')) {
    print "ok - 38 Char::Esjis::g FILE == -g FILE $^X $__FILE__\n";
}
else {
    print "not ok - 38 Char::Esjis::g FILE == -g FILE $^X $__FILE__\n";
}

if (((Char::Esjis::T 'file') ne '') == ((-T 'file') ne '')) {
    print "ok - 39 Char::Esjis::T 'file' == -T 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 39 Char::Esjis::T 'file' == -T 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::T FILE) ne '') == ((-T FILE) ne '')) {
    print "ok - 40 Char::Esjis::T FILE == -T FILE $^X $__FILE__\n";
}
else {
    print "not ok - 40 Char::Esjis::T FILE == -T FILE $^X $__FILE__\n";
}

if (((Char::Esjis::B 'file') ne '') == ((-B 'file') ne '')) {
    print "ok - 41 Char::Esjis::B 'file' == -B 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 41 Char::Esjis::B 'file' == -B 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::B FILE) ne '') == ((-B FILE) ne '')) {
    print "ok - 42 Char::Esjis::B FILE == -B FILE $^X $__FILE__\n";
}
else {
    print "not ok - 42 Char::Esjis::B FILE == -B FILE $^X $__FILE__\n";
}

if (((Char::Esjis::M 'file') ne '') == ((-M 'file') ne '')) {
    print "ok - 43 Char::Esjis::M 'file' == -M 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 43 Char::Esjis::M 'file' == -M 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::M FILE) ne '') == ((-M FILE) ne '')) {
    print "ok - 44 Char::Esjis::M FILE == -M FILE $^X $__FILE__\n";
}
else {
    print "not ok - 44 Char::Esjis::M FILE == -M FILE $^X $__FILE__\n";
}

if (((Char::Esjis::A 'file') ne '') == ((-A 'file') ne '')) {
    print "ok - 45 Char::Esjis::A 'file' == -A 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 45 Char::Esjis::A 'file' == -A 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::A FILE) ne '') == ((-A FILE) ne '')) {
    print "ok - 46 Char::Esjis::A FILE == -A FILE $^X $__FILE__\n";
}
else {
    print "not ok - 46 Char::Esjis::A FILE == -A FILE $^X $__FILE__\n";
}

if (((Char::Esjis::C 'file') ne '') == ((-C 'file') ne '')) {
    print "ok - 47 Char::Esjis::C 'file' == -C 'file' $^X $__FILE__\n";
}
else {
    print "not ok - 47 Char::Esjis::C 'file' == -C 'file' $^X $__FILE__\n";
}

if (((Char::Esjis::C FILE) ne '') == ((-C FILE) ne '')) {
    print "ok - 48 Char::Esjis::C FILE == -C FILE $^X $__FILE__\n";
}
else {
    print "not ok - 48 Char::Esjis::C FILE == -C FILE $^X $__FILE__\n";
}

close(FILE);
unlink('file');

__END__
