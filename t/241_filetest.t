# This file is encoded in ShiftJIS.
die "This file is not encoded in ShiftJIS.\n" if q{‚ } ne "\x82\xa0";

# ˆø”‚ªÈ—ª‚³‚ê‚½ê‡‚ÌƒeƒXƒg

my $__FILE__ = __FILE__;

use Char::Esjis;
print "1..24\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    for my $tno (1..24) {
        print "ok - $tno # SKIP $^X $0\n";
    }
    exit;
}

open(FILE,'>file');
close(FILE);

open(FILE,'file');

$_ = 'file';
if ((Char::Esjis::r_ ne '') == (-r ne '')) {
    print "ok - 1 Char::Esjis::r_ == -r  $^X $__FILE__\n";
}
else {
    print "not ok - 1 Char::Esjis::r_ == -r  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::w_ ne '') == (-w ne '')) {
    print "ok - 2 Char::Esjis::w_ == -w  $^X $__FILE__\n";
}
else {
    print "not ok - 2 Char::Esjis::w_ == -w  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::x_ ne '') == (-x ne '')) {
    print "ok - 3 Char::Esjis::x_ == -x  $^X $__FILE__\n";
}
else {
    print "not ok - 3 Char::Esjis::x_ == -x  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::o_ ne '') == (-o ne '')) {
    print "ok - 4 Char::Esjis::o_ == -o  $^X $__FILE__\n";
}
else {
    print "not ok - 4 Char::Esjis::o_ == -o  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::R_ ne '') == (-R ne '')) {
    print "ok - 5 Char::Esjis::R_ == -R  $^X $__FILE__\n";
}
else {
    print "not ok - 5 Char::Esjis::R_ == -R  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::W_ ne '') == (-W ne '')) {
    print "ok - 6 Char::Esjis::W_ == -W  $^X $__FILE__\n";
}
else {
    print "not ok - 6 Char::Esjis::W_ == -W  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::X_ ne '') == (-X ne '')) {
    print "ok - 7 Char::Esjis::X_ == -X  $^X $__FILE__\n";
}
else {
    print "not ok - 7 Char::Esjis::X_ == -X  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::O_ ne '') == (-O ne '')) {
    print "ok - 8 Char::Esjis::O_ == -O  $^X $__FILE__\n";
}
else {
    print "not ok - 8 Char::Esjis::O_ == -O  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::e_ ne '') == (-e ne '')) {
    print "ok - 9 Char::Esjis::e_ == -e  $^X $__FILE__\n";
}
else {
    print "not ok - 9 Char::Esjis::e_ == -e  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::z_ ne '') == (-z ne '')) {
    print "ok - 10 Char::Esjis::z_ == -z  $^X $__FILE__\n";
}
else {
    print "not ok - 10 Char::Esjis::z_ == -z  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::s_ ne '') == (-s ne '')) {
    print "ok - 11 Char::Esjis::s_ == -s  $^X $__FILE__\n";
}
else {
    print "not ok - 11 Char::Esjis::s_ == -s  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::f_ ne '') == (-f ne '')) {
    print "ok - 12 Char::Esjis::f_ == -f  $^X $__FILE__\n";
}
else {
    print "not ok - 12 Char::Esjis::f_ == -f  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::d_ ne '') == (-d ne '')) {
    print "ok - 13 Char::Esjis::d_ == -d  $^X $__FILE__\n";
}
else {
    print "not ok - 13 Char::Esjis::d_ == -d  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::p_ ne '') == (-p ne '')) {
    print "ok - 14 Char::Esjis::p_ == -p  $^X $__FILE__\n";
}
else {
    print "not ok - 14 Char::Esjis::p_ == -p  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::S_ ne '') == (-S ne '')) {
    print "ok - 15 Char::Esjis::S_ == -S  $^X $__FILE__\n";
}
else {
    print "not ok - 15 Char::Esjis::S_ == -S  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::b_ ne '') == (-b ne '')) {
    print "ok - 16 Char::Esjis::b_ == -b  $^X $__FILE__\n";
}
else {
    print "not ok - 16 Char::Esjis::b_ == -b  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::c_ ne '') == (-c ne '')) {
    print "ok - 17 Char::Esjis::c_ == -c  $^X $__FILE__\n";
}
else {
    print "not ok - 17 Char::Esjis::c_ == -c  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::u_ ne '') == (-u ne '')) {
    print "ok - 18 Char::Esjis::u_ == -u  $^X $__FILE__\n";
}
else {
    print "not ok - 18 Char::Esjis::u_ == -u  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::g_ ne '') == (-g ne '')) {
    print "ok - 19 Char::Esjis::g_ == -g  $^X $__FILE__\n";
}
else {
    print "not ok - 19 Char::Esjis::g_ == -g  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::T_ ne '') == (-T ne '')) {
    print "ok - 20 Char::Esjis::T_ == -T  $^X $__FILE__\n";
}
else {
    print "not ok - 20 Char::Esjis::T_ == -T  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::B_ ne '') == (-B ne '')) {
    print "ok - 21 Char::Esjis::B_ == -B  $^X $__FILE__\n";
}
else {
    print "not ok - 21 Char::Esjis::B_ == -B  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::M_ ne '') == (-M ne '')) {
    print "ok - 22 Char::Esjis::M_ == -M  $^X $__FILE__\n";
}
else {
    print "not ok - 22 Char::Esjis::M_ == -M  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::A_ ne '') == (-A ne '')) {
    print "ok - 23 Char::Esjis::A_ == -A  $^X $__FILE__\n";
}
else {
    print "not ok - 23 Char::Esjis::A_ == -A  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Esjis::C_ ne '') == (-C ne '')) {
    print "ok - 24 Char::Esjis::C_ == -C  $^X $__FILE__\n";
}
else {
    print "not ok - 24 Char::Esjis::C_ == -C  $^X $__FILE__\n";
}

close(FILE);
unlink('file');

__END__
