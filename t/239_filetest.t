# This file is encoded in ShiftJIS.
die "This file is not encoded in ShiftJIS.\n" if q{あ} ne "\x82\xa0";

# Char::Esjis::X と -X (Perlのファイルテスト演算子) の結果が一致することのテスト(対象はディレクトリ)

my $__FILE__ = __FILE__;

use Char::Esjis;
print "1..22\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    for my $tno (1..22) {
        print "ok - $tno # SKIP $^X $0\n";
    }
    exit;
}

mkdir('directory',0777);

opendir(DIR,'directory');

if (((Char::Esjis::r 'directory') ne '') == ((-r 'directory') ne '')) {
    print "ok - 1 Char::Esjis::r 'directory' == -r 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 1 Char::Esjis::r 'directory' == -r 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::w 'directory') ne '') == ((-w 'directory') ne '')) {
    print "ok - 2 Char::Esjis::w 'directory' == -w 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 2 Char::Esjis::w 'directory' == -w 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::x 'directory') ne '') == ((-x 'directory') ne '')) {
    print "ok - 3 Char::Esjis::x 'directory' == -x 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 3 Char::Esjis::x 'directory' == -x 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::o 'directory') ne '') == ((-o 'directory') ne '')) {
    print "ok - 4 Char::Esjis::o 'directory' == -o 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 4 Char::Esjis::o 'directory' == -o 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::R 'directory') ne '') == ((-R 'directory') ne '')) {
    print "ok - 5 Char::Esjis::R 'directory' == -R 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 5 Char::Esjis::R 'directory' == -R 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::W 'directory') ne '') == ((-W 'directory') ne '')) {
    print "ok - 6 Char::Esjis::W 'directory' == -W 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 6 Char::Esjis::W 'directory' == -W 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::X 'directory') ne '') == ((-X 'directory') ne '')) {
    print "ok - 7 Char::Esjis::X 'directory' == -X 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 7 Char::Esjis::X 'directory' == -X 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::O 'directory') ne '') == ((-O 'directory') ne '')) {
    print "ok - 8 Char::Esjis::O 'directory' == -O 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 8 Char::Esjis::O 'directory' == -O 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::e 'directory') ne '') == ((-e 'directory') ne '')) {
    print "ok - 9 Char::Esjis::e 'directory' == -e 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 9 Char::Esjis::e 'directory' == -e 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::z 'directory') ne '') == ((-z 'directory') ne '')) {
    print "ok - 10 Char::Esjis::z 'directory' == -z 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 10 Char::Esjis::z 'directory' == -z 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::s 'directory') ne '') == ((-s 'directory') ne '')) {
    print "ok - 11 Char::Esjis::s 'directory' == -s 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 11 Char::Esjis::s 'directory' == -s 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::f 'directory') ne '') == ((-f 'directory') ne '')) {
    print "ok - 12 Char::Esjis::f 'directory' == -f 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 12 Char::Esjis::f 'directory' == -f 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::d 'directory') ne '') == ((-d 'directory') ne '')) {
    print "ok - 13 Char::Esjis::d 'directory' == -d 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 13 Char::Esjis::d 'directory' == -d 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::p 'directory') ne '') == ((-p 'directory') ne '')) {
    print "ok - 14 Char::Esjis::p 'directory' == -p 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 14 Char::Esjis::p 'directory' == -p 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::S 'directory') ne '') == ((-S 'directory') ne '')) {
    print "ok - 15 Char::Esjis::S 'directory' == -S 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 15 Char::Esjis::S 'directory' == -S 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::b 'directory') ne '') == ((-b 'directory') ne '')) {
    print "ok - 16 Char::Esjis::b 'directory' == -b 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 16 Char::Esjis::b 'directory' == -b 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::c 'directory') ne '') == ((-c 'directory') ne '')) {
    print "ok - 17 Char::Esjis::c 'directory' == -c 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 17 Char::Esjis::c 'directory' == -c 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::u 'directory') ne '') == ((-u 'directory') ne '')) {
    print "ok - 18 Char::Esjis::u 'directory' == -u 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 18 Char::Esjis::u 'directory' == -u 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::g 'directory') ne '') == ((-g 'directory') ne '')) {
    print "ok - 19 Char::Esjis::g 'directory' == -g 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 19 Char::Esjis::g 'directory' == -g 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::M 'directory') ne '') == ((-M 'directory') ne '')) {
    print "ok - 20 Char::Esjis::M 'directory' == -M 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 20 Char::Esjis::M 'directory' == -M 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::A 'directory') ne '') == ((-A 'directory') ne '')) {
    print "ok - 21 Char::Esjis::A 'directory' == -A 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 21 Char::Esjis::A 'directory' == -A 'directory' $^X $__FILE__\n";
}

if (((Char::Esjis::C 'directory') ne '') == ((-C 'directory') ne '')) {
    print "ok - 22 Char::Esjis::C 'directory' == -C 'directory' $^X $__FILE__\n";
}
else {
    print "not ok - 22 Char::Esjis::C 'directory' == -C 'directory' $^X $__FILE__\n";
}

closedir(DIR);
rmdir('directory');

__END__
