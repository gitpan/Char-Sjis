# This file is encoded in ShiftJIS.
die "This file is not encoded in ShiftJIS.\n" if q{あ} ne "\x82\xa0";

use Char::Sjis;
print "1..1\n";

my $__FILE__ = __FILE__;

if ($^O eq 'MacOS') {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

my $chcp = '';
if ($^O =~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    $chcp = `chcp`;
}
if ($chcp !~ /932/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

open(FILE,'>F機能') || die "Can't open file: F機能\n";
print FILE "1\n";
close(FILE);

# sysopen
# use Fcntl;
my $O_RDONLY = 0;
if (sysopen(FILE,'F機能',$O_RDONLY)) {
    print "ok - 1 sysopen $^X $__FILE__\n";
    close(FILE);
}
else {
    print "not ok - 1 sysopen: $! $^X $__FILE__\n";
}

unlink('F機能');

__END__
