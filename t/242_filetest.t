# This file is encoded in ShiftJIS.
die "This file is not encoded in ShiftJIS.\n" if q{あ} ne "\x82\xa0";

# 引数に _ が指定された場合のテスト

my $__FILE__ = __FILE__;

use Char::Esjis;
print "1..23\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    for my $tno (1..23) {
        print "ok - $tno # SKIP $^X $0\n";
    }
    exit;
}

open(FILE,'>file');
close(FILE);

open(FILE,'file');

if (-r ('file')) {
    if (Char::Esjis::r(_)) {
        print "ok - 1 Char::Esjis::r _ == -r _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 1 Char::Esjis::r _ == -r _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::r(_)) {
        print "not ok - 1 Char::Esjis::r _ == -r _ $^X $__FILE__\n";
    }
    else {
        print "ok - 1 Char::Esjis::r _ == -r _ $^X $__FILE__\n";
    }
}

if (-w ('file')) {
    if (Char::Esjis::w(_)) {
        print "ok - 2 Char::Esjis::w _ == -w _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 2 Char::Esjis::w _ == -w _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::w(_)) {
        print "not ok - 2 Char::Esjis::w _ == -w _ $^X $__FILE__\n";
    }
    else {
        print "ok - 2 Char::Esjis::w _ == -w _ $^X $__FILE__\n";
    }
}

if (-x ('file')) {
    if (Char::Esjis::x(_)) {
        print "ok - 3 Char::Esjis::x _ == -x _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 3 Char::Esjis::x _ == -x _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::x(_)) {
        print "not ok - 3 Char::Esjis::x _ == -x _ $^X $__FILE__\n";
    }
    else {
        print "ok - 3 Char::Esjis::x _ == -x _ $^X $__FILE__\n";
    }
}

if (-o ('file')) {
    if (Char::Esjis::o(_)) {
        print "ok - 4 Char::Esjis::o _ == -o _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 4 Char::Esjis::o _ == -o _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::o(_)) {
        print "not ok - 4 Char::Esjis::o _ == -o _ $^X $__FILE__\n";
    }
    else {
        print "ok - 4 Char::Esjis::o _ == -o _ $^X $__FILE__\n";
    }
}

if (-R ('file')) {
    if (Char::Esjis::R(_)) {
        print "ok - 5 Char::Esjis::R _ == -R _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 5 Char::Esjis::R _ == -R _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::R(_)) {
        print "not ok - 5 Char::Esjis::R _ == -R _ $^X $__FILE__\n";
    }
    else {
        print "ok - 5 Char::Esjis::R _ == -R _ $^X $__FILE__\n";
    }
}

if (-W ('file')) {
    if (Char::Esjis::W(_)) {
        print "ok - 6 Char::Esjis::W _ == -W _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 6 Char::Esjis::W _ == -W _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::W(_)) {
        print "not ok - 6 Char::Esjis::W _ == -W _ $^X $__FILE__\n";
    }
    else {
        print "ok - 6 Char::Esjis::W _ == -W _ $^X $__FILE__\n";
    }
}

if (-X ('file')) {
    if (Char::Esjis::X(_)) {
        print "ok - 7 Char::Esjis::X _ == -X _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 7 Char::Esjis::X _ == -X _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::X(_)) {
        print "not ok - 7 Char::Esjis::X _ == -X _ $^X $__FILE__\n";
    }
    else {
        print "ok - 7 Char::Esjis::X _ == -X _ $^X $__FILE__\n";
    }
}

if (-O ('file')) {
    if (Char::Esjis::O(_)) {
        print "ok - 8 Char::Esjis::O _ == -O _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 8 Char::Esjis::O _ == -O _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::O(_)) {
        print "not ok - 8 Char::Esjis::O _ == -O _ $^X $__FILE__\n";
    }
    else {
        print "ok - 8 Char::Esjis::O _ == -O _ $^X $__FILE__\n";
    }
}

if (-e ('file')) {
    if (Char::Esjis::e(_)) {
        print "ok - 9 Char::Esjis::e _ == -e _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 9 Char::Esjis::e _ == -e _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::e(_)) {
        print "not ok - 9 Char::Esjis::e _ == -e _ $^X $__FILE__\n";
    }
    else {
        print "ok - 9 Char::Esjis::e _ == -e _ $^X $__FILE__\n";
    }
}

if (-z ('file')) {
    if (Char::Esjis::z(_)) {
        print "ok - 10 Char::Esjis::z _ == -z _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 10 Char::Esjis::z _ == -z _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::z(_)) {
        print "not ok - 10 Char::Esjis::z _ == -z _ $^X $__FILE__\n";
    }
    else {
        print "ok - 10 Char::Esjis::z _ == -z _ $^X $__FILE__\n";
    }
}

$_ = -s 'file';
if (Char::Esjis::s(_) == $_) {
    print "ok - 11 Char::Esjis::s _ (@{[Char::Esjis::s _]}) == -s 'file' ($_) $^X $__FILE__\n";
}
else {
    print "not ok - 11 Char::Esjis::s _ (@{[Char::Esjis::s _]}) == -s 'file' ($_) $^X $__FILE__\n";
}

if (-f ('file')) {
    if (Char::Esjis::f(_)) {
        print "ok - 12 Char::Esjis::f _ == -f _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 12 Char::Esjis::f _ == -f _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::f(_)) {
        print "not ok - 12 Char::Esjis::f _ == -f _ $^X $__FILE__\n";
    }
    else {
        print "ok - 12 Char::Esjis::f _ == -f _ $^X $__FILE__\n";
    }
}

if (-d ('file')) {
    if (Char::Esjis::d(_)) {
        print "ok - 13 Char::Esjis::d _ == -d _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 13 Char::Esjis::d _ == -d _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::d(_)) {
        print "not ok - 13 Char::Esjis::d _ == -d _ $^X $__FILE__\n";
    }
    else {
        print "ok - 13 Char::Esjis::d _ == -d _ $^X $__FILE__\n";
    }
}

if (-p ('file')) {
    if (Char::Esjis::p(_)) {
        print "ok - 14 Char::Esjis::p _ == -p _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 14 Char::Esjis::p _ == -p _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::p(_)) {
        print "not ok - 14 Char::Esjis::p _ == -p _ $^X $__FILE__\n";
    }
    else {
        print "ok - 14 Char::Esjis::p _ == -p _ $^X $__FILE__\n";
    }
}

if (-S ('file')) {
    if (Char::Esjis::S(_)) {
        print "ok - 15 Char::Esjis::S _ == -S _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 15 Char::Esjis::S _ == -S _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::S(_)) {
        print "not ok - 15 Char::Esjis::S _ == -S _ $^X $__FILE__\n";
    }
    else {
        print "ok - 15 Char::Esjis::S _ == -S _ $^X $__FILE__\n";
    }
}

if (-b ('file')) {
    if (Char::Esjis::b(_)) {
        print "ok - 16 Char::Esjis::b _ == -b _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 16 Char::Esjis::b _ == -b _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::b(_)) {
        print "not ok - 16 Char::Esjis::b _ == -b _ $^X $__FILE__\n";
    }
    else {
        print "ok - 16 Char::Esjis::b _ == -b _ $^X $__FILE__\n";
    }
}

if (-c ('file')) {
    if (Char::Esjis::c(_)) {
        print "ok - 17 Char::Esjis::c _ == -c _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 17 Char::Esjis::c _ == -c _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::c(_)) {
        print "not ok - 17 Char::Esjis::c _ == -c _ $^X $__FILE__\n";
    }
    else {
        print "ok - 17 Char::Esjis::c _ == -c _ $^X $__FILE__\n";
    }
}

if (-u ('file')) {
    if (Char::Esjis::u(_)) {
        print "ok - 18 Char::Esjis::u _ == -u _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 18 Char::Esjis::u _ == -u _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::u(_)) {
        print "not ok - 18 Char::Esjis::u _ == -u _ $^X $__FILE__\n";
    }
    else {
        print "ok - 18 Char::Esjis::u _ == -u _ $^X $__FILE__\n";
    }
}

if (-g ('file')) {
    if (Char::Esjis::g(_)) {
        print "ok - 19 Char::Esjis::g _ == -g _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 19 Char::Esjis::g _ == -g _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::g(_)) {
        print "not ok - 19 Char::Esjis::g _ == -g _ $^X $__FILE__\n";
    }
    else {
        print "ok - 19 Char::Esjis::g _ == -g _ $^X $__FILE__\n";
    }
}

if (-k ('file')) {
    if (Char::Esjis::k(_)) {
        print "ok - 20 Char::Esjis::k _ == -k _ $^X $__FILE__\n";
    }
    else {
        print "not ok - 20 Char::Esjis::k _ == -k _ $^X $__FILE__\n";
    }
}
else {
    if (Char::Esjis::k(_)) {
        print "not ok - 20 Char::Esjis::k _ == -k _ $^X $__FILE__\n";
    }
    else {
        print "ok - 20 Char::Esjis::k _ == -k _ $^X $__FILE__\n";
    }
}

$_ = -M 'file';
if (Char::Esjis::M(_) == $_) {
    print "ok - 21 Char::Esjis::M _ (@{[Char::Esjis::M _]}) == -M 'file' ($_) $^X $__FILE__\n";
}
else {
    print "not ok - 21 Char::Esjis::M _ (@{[Char::Esjis::M _]}) == -M 'file' ($_) $^X $__FILE__\n";
}

$_ = -A 'file';
if (Char::Esjis::A(_) == $_) {
    print "ok - 22 Char::Esjis::A _ (@{[Char::Esjis::A _]}) == -A 'file' ($_) $^X $__FILE__\n";
}
else {
    print "not ok - 22 Char::Esjis::A _ (@{[Char::Esjis::A _]}) == -A 'file' ($_) $^X $__FILE__\n";
}

$_ = -C 'file';
if (Char::Esjis::C(_) == $_) {
    print "ok - 23 Char::Esjis::C _ (@{[Char::Esjis::C _]}) == -C 'file' ($_) $^X $__FILE__\n";
}
else {
    print "not ok - 23 Char::Esjis::C _ (@{[Char::Esjis::C _]}) == -C 'file' ($_) $^X $__FILE__\n";
}

close(FILE);
unlink('file');

__END__
