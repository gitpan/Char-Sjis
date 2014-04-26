1;
__END__

=pod

=encoding Shift_JIS

=head1 NAME

Sjis-JA - JAPANESE DOCUMENT

=head1 —v–ñ

ƒXƒNƒŠƒvƒg ShiftJIS_script.pl ‚Ì’†‚ÉˆÈ‰º‚ğ‹Lq‚µ‚Ä...

  use Sjis;

ƒRƒ}ƒ“ƒhƒvƒƒ“ƒvƒg‚ÅˆÈ‰º‚Ì‚æ‚¤‚ÉÀs‚·‚é

  perl ShiftJIS_script.pl argv1 argv2 ...

Sjisƒ\ƒtƒgƒEƒFƒA‚ÍAShiftJIS ‚É‚æ‚Á‚Ä‘‚©‚ê‚½ Perl ƒXƒNƒŠƒvƒg‚ÆperlƒCƒ“ƒ^ƒvƒŠƒ^
‚ÌŠÔ‚ÉˆÊ’u‚·‚éƒ~ƒhƒ‹ƒEƒFƒA‚Å‚·B

Perl ‚ÍAƒeƒLƒXƒgˆ—‚ª90%A‚»‚êˆÈŠO‚Ìˆ—‚ª10%‚Å\¬‚³‚ê‚é–â‘è‚ÉŒü‚¯‚ÄÅ“K‰»‚³
‚ê‚Ä‚¢‚é‚ÆŒ¾‚í‚ê‚Ä‚¢‚Ü‚·B‚±‚±‚Å‚¢‚¤ƒeƒLƒXƒg‚É ShiftJIS ‚ªŠÜ‚Ü‚ê‚È‚©‚Á‚½‚Æ‚µ‚Ä‚à
Perl3 ˆÈ~‚Å‚ ‚ê‚ÎƒoƒCƒiƒŠƒf[ƒ^‚ğˆµ‚¦‚é‚Ì‚ÅAShiftJIS ƒf[ƒ^‚ğƒoƒCƒiƒŠƒf[ƒ^‚Æ
‚µ‚Äˆµ‚¤‚±‚Æ‚ª‰Â”\‚Å‚·B

"use Sjis;" ‚É‚æ‚Á‚ÄAƒXƒNƒŠƒvƒg‚ğ ShiftJIS ‚Å‹Lq‚·‚é‚±‚Æ‚ª‚Å‚«‚é‚æ‚¤‚É‚È‚èA
³‹K•\Œ»‚ğ‚Í‚¶‚ß‚Æ‚·‚é perl ‚ÌŠeí‹@”\‚Í ShiftJIS ‚É‘Î‰‚·‚é‚æ‚¤‚É‚È‚è‚Ü‚·B
ŠÖ” length ‚ªˆµ‚¤’·‚³‚Ì’PˆÊ‚ÍƒoƒCƒg‚Ì‚Ü‚Ü‚ÅAUTF8ƒtƒ‰ƒO‚Íg—p‚µ‚Ü‚¹‚ñB

=head1 ‚±‚Ì•¶‘‚Ì•\‹L‚Ì‚Ô‚ê‚É‚Â‚¢‚Ä

‚¢‚í‚ä‚éƒVƒtƒgJIS‚É‘Î‚·‚é–¼Ì‚É‚Â‚¢‚ÄA‚±‚Ì•¶‘‚Å‚Í ShiftJIS ‚Æ‚µ‚½‚èƒVƒtƒgJIS
‚Æ‚µ‚½‚è Shift-JIS ‚Æ‚µ‚½‚è‚µ‚Ä‚¢‚Ü‚·‚ªAˆÓ–¡‚·‚é‚à‚Ì‚Í“¯‚¶‚¾‚Æl‚¦‚Ä‚­‚¾‚³‚¢B
‚±‚ê‚ç‚ğ‹Lq‚·‚éÛ‚ÉQÆ‚µ‚½‘—¿‚ª‚ ‚Á‚½ê‡AŠT‚Ë‚»‚Ì‚Ü‚Ü‚Ì•\‹L‚ğc‚µ‚Ä‚¢‚Ü‚·B
‚»‚ê‚ç‚ğ•ÏX‚µ‚È‚¢‚Ù‚¤‚ª‚æ‚¢‚Æv‚Á‚½‚½‚ßA‚±‚Ì•¶‘‘S‘Ì‚Æ‚µ‚Ä‚Í“ˆê‚³‚ê‚Ä‚¢‚Ü‚¹
‚ñB‚ ‚ç‚©‚¶‚ß‚²—¹³‚­‚¾‚³‚¢B

=head1 ‚à‚¤‚Ğ‚Æ‚Â‚Ì–¢—ˆ(‚İ‚ç‚¢)

JPerl ‚Í‚Æ‚Ä‚à—D‚ê‚½ƒ\ƒtƒgƒEƒFƒA‚Å‚·B‚¨‚Á‚ÆA‚±‚±‚Å‚¢‚¤ JPerl ‚Í“ú–{Œê‘Î‰”Å‚Ì
Perl ‚Ì‚±‚Æ‚ÅAJava ‚â JVM ‚Æ‚ÍŠÖŒW‚ª‚ ‚è‚Ü‚¹‚ñBŒë‰ğ‚³‚ê‚½‚èAŠú‘Ò‚³‚ê‚½‚è‚·‚é
‚Ì‚à¢‚é‚Ì‚ÅA‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚Í Sjis ‚Æ‚¢‚¤–¼‘O‚É‚µ‚Ü‚µ‚½B‚»‚ÌŒãAƒgƒbƒvƒŒƒxƒ‹
‚Ì–¼‘O‚ğ”ğ‚¯‚é‚½‚ß Char::Sjis ‚Æ‚¢‚¤–¼‘O‚ÅƒfƒBƒXƒgƒŠƒrƒ…[ƒVƒ‡ƒ“‚ğì¬‚·‚é‚æ‚¤‚É
‚µ‚Ü‚µ‚½‚ªA’Êíg—p‚·‚é‚Ì‚Í]—ˆ‚Ì Sjis.pm, Esjis.pm ‚Å‚æ‚¢‚Æv‚¢‚Ü‚·B

‚Æ‚±‚ë‚ÅA‚»‚Ì JPerl ‚Íƒo[ƒWƒ‡ƒ“ 5.005_04 ˆÈ~Aƒƒ“ƒeƒiƒ“ƒX‚³‚ê‚Ä‚¢‚Ü‚¹‚ñB

‘å•Ïc”O‚È‚±‚Æ‚ÉAJPerl‚ÌŠJ”­‚ğs‚Á‚½“n•Ó ”•¶‚³‚ñ‚Í The Perl Confernce Japan
1998 ‚É‚Ä

  "‚í‚½‚È‚×‚Í”æ‚ê‚½‚©‚çŸ‚Ìl‚æ‚ë‚µ‚­‚Ë"

‚Æ‚¢‚¤ƒƒbƒZ[ƒW‚ğc‚µAPerl ‚©‚ç—£‚ê‚Ä‚¢‚Á‚Ä‚µ‚Ü‚¢‚Ü‚µ‚½B

ƒXƒ‰ƒCƒh15 "jperl ‚Ì¡Œã"

ftp://ftp.oreilly.co.jp/pcjp98/watanabe/jperlconf.ppt

‚«‚Á‚Æ’N‚©‚ªˆø‚«Œp‚¢‚Å‘‚¢‚Ä‚­‚ê‚é‚¾‚ë‚¤B
‚È‚Ç‚ÆŠú‘Ò‚ğ‚µ‚È‚ª‚ç10”NŠÔA‘Ò‚¿‘±‚¯‚éŠÔ‚É¢ŠE‚Íˆá‚¤•ûŒü‚Ö‚Æi‚ñ‚Å‚¢‚­‚Ì‚Å‚µ‚½B

‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚Í ShiftJIS ‚Å‘‚©‚ê‚½ Perl ƒXƒNƒŠƒvƒg‚ğƒGƒXƒP[ƒvˆ—‚·‚é‚½‚ß‚Ì
ƒ\[ƒXƒR[ƒhƒtƒBƒ‹ƒ^‚Å‚·BƒGƒXƒP[ƒvˆ—‚É‚æ‚Á‚Ä•¶šƒR[ƒh‚ª•Ï‰»‚·‚é‚±‚Æ‚Í‚ ‚è
‚Ü‚¹‚ñB‚à‚µ•Ï‰»‚µ‚½ê‡‚ÍAƒoƒO‚Å‚·‚Ì‚Å•ñ’¸‚¯‚é‚Æ‚ ‚è‚ª‚½‚¢‚Å‚·B

¬Œ÷‚µ‚½ƒ\ƒtƒgƒEƒFƒA‚©‚çˆÈ‰º‚Ì‚±‚Æ‚ğŠw‚ñ‚Å‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚Íì¬‚³‚ê‚Ü‚µ‚½B

=over 2

=item * Perl4 ‚©‚ç Perl5 ‚Ì‚æ‚¤‚ÈãˆÊŒİŠ·«

=item * jcode.pl ‚Ì‚æ‚¤‚ÈÅ‘åŒÀ‚ÌˆÚA«

=item * JPerl ‚Ì‚æ‚¤‚ÉUTF8ƒtƒ‰ƒO‚ğg‚í‚¸AShiftJIS‚ğ‚»‚Ì‚Ü‚Üˆµ‚¢APerl ‚Í1‚Â‚ÌŒ¾Œê‚Ì‚Ü‚Ü

=item * Encode ƒ‚ƒWƒ…[ƒ‹‚Ì‚æ‚¤‚É Perl ‚Í1‚Â‚ÌƒCƒ“ƒ^ƒvƒŠƒ^‚Ì‚Ü‚Ü

=item * Ruby ‚Ì‚æ‚¤‚É•¶šW‡“Æ—§‚Èè–@

=item * cpanminus ‚Ì‚æ‚¤‚Éƒ‚ƒmƒŠƒVƒbƒN‚ÈƒXƒNƒŠƒvƒg

=item * Perl ©g‚Ì‚æ‚¤‚É TMTOWTDI(There's more than one way to do it)

=back

‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚ÆPerl‚Ì–¢—ˆ‚É‚Â‚¢‚Äl‚¦‚é‚Æ‹¹‚ª‚Ç‚«‚Ç‚«‚µ‚Ü‚·B‚İ‚È‚³‚ñ‚¾‚Á‚Ä
‚«‚Á‚Æ‚»‚¤‚Å‚µ‚å‚¤H

=head1 Šî–{“I‚Èd‘g‚İ

Å‹ßAˆÈ‰º‚Ìƒ[ƒ‹‚ğÄ”­Œ©‚µ‚Ü‚µ‚½B

[Tokyo.pm] jus Benkyoukai

http://mail.pm.org/pipermail/tokyo-pm/1999-September/001854.html

("SJIS.pm" ‚Æ‚¢‚¤ƒtƒ@ƒCƒ‹–¼‚Å•Û‘¶‚³‚ê‚Ä‚¢‚é‚à‚Ì‚Æ‚µ‚Ü‚·)

  package SJIS;
  use Filter::Util::Call;
  sub multibyte_filter {
      my $status;
      if (($status = filter_read()) > 0 ) {
          s/([\x81-\x9f\xe0-\xef])([\x40-\x7e\x80-\xfc])/
              sprintf("\\x%02x\\x%02x",ord($1),ord($2))
          /eg;
      }
      $status;
  }
  sub import {
      filter_add(\&multibyte_filter);
  }
  1;

Šî–{“I‚É‚ÍA‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚Íã‹L‚Ì‚æ‚¤‚È‚±‚Æ‚ğs‚¢‚Ü‚·B
‚½‚¾‚µAFilter::Util::Call ‚ğ—˜—p‚µ‚Ä‚¢‚È‚¢“_APerl ‚Ì\•¶‚ğ‰ğÍ‚µ‚Ä•K—v‚É‰‚¶‚Ä
ƒGƒXƒP[ƒv‚·‚é“_‚ªˆÙ‚È‚è‚Ü‚·B

=head1 ƒCƒ“ƒXƒg[ƒ‹•û–@(ŠÈ’P‚È•û–@)

   CPAN ‚©‚ç Sjis.pm ‚Æ Esjis.pm ‚ğƒ_ƒEƒ“ƒ[ƒh‚µ Perl ‚Ì lib ƒfƒBƒŒƒNƒgƒŠ‚ÉŠi”[‚µ‚Ü‚·B

=head1 ƒCƒ“ƒXƒg[ƒ‹•û–@(make‚ğg‚¤ê‡)

   perl Makefile.PL
   make test
   make install

=head1 ƒCƒ“ƒXƒg[ƒ‹•û–@(make‚ğg‚í‚È‚¢ê‡)

   perl pMakefile.pl          --- pMakefile.pl ‚ª pmake.bat ‚ğ¶¬‚µ‚Ü‚·
   pmake.bat
   pmake.bat test
   pmake.bat install          --- Œ»İg—p’†‚Ì perl ŠÂ‹«‚ÉƒCƒ“ƒXƒg[ƒ‹‚µ‚Ü‚·
   pmake.bat dist             --- CPAN ”z•z—pƒpƒbƒP[ƒW‚ğì‚è‚Ü‚·
   pmake.bat ptar.bat         --- ptar.bat ‚ğì¬‚µ‚Ü‚·

=head1 ƒ\ƒtƒgƒEƒFƒA‚Ìˆê——

   Sjis.pm               --- ShiftJIS ƒ\[ƒXƒR[ƒhƒtƒBƒ‹ƒ^
   Esjis.pm              --- Sjis.pm ‚Ìƒ‰ƒ“ƒ^ƒCƒ€ƒ‹[ƒ`ƒ“
   Char/Sjis.pm          --- Sjis.pm ‚Ì•Ê–¼(‹@”\‚Í“¯‚¶‚Å‚·)
   Char/Esjis.pm         --- Esjis.pm ‚Ì•Ê–¼(‹@”\‚Í“¯‚¶‚Å‚·)

=head1 DOS•—ƒVƒXƒeƒ€‚É‚¨‚¯‚éƒRƒ}ƒ“ƒhƒ‰ƒCƒ“‚ÌƒƒCƒ‹ƒhƒJ[ƒh“WŠJ

DOS•—ƒVƒXƒeƒ€‚Ì•W€ƒVƒFƒ‹(COMMAND.COM ‚¨‚æ‚Ñ cmd.exe)‚ÍA‹N“®‚·‚éƒvƒƒOƒ‰ƒ€‚Ö“n‚·
ƒpƒ‰ƒ[ƒ^‚ÌƒƒCƒ‹ƒhƒJ[ƒh“WŠJ‚ğs‚¢‚Ü‚¹‚ñB‚»‚Ì‘ã‚í‚è‚Æ‚µ‚Ä Esjis.pm “à‚Ì import
ŠÖ”‚ªƒƒCƒ‹ƒhƒJ[ƒh“WŠJ‚ğs‚¤‚æ‚¤‚É‚È‚Á‚Ä‚¢‚Ü‚·B

   Ql Esjis.pm ‚©‚ç”²ˆ
   #
   # @ARGV wildcard globbing
   #
   sub import {

       if ($^O =~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
           my @argv = ();
           for (@ARGV) {

               # has space
               if (/\A (?:$q_char)*? [ ] /oxms) {
                   if (my @glob = Esjis::glob(qq{"$_"})) {
                       push @argv, @glob;
                   }
                   else {
                       push @argv, $_;
                   }
               }

               # has wildcard metachar
               elsif (/\A (?:$q_char)*? [*?] /oxms) {
                   if (my @glob = Esjis::glob($_)) {
                       push @argv, @glob;
                   }
                   else {
                       push @argv, $_;
                   }
               }

               # no wildcard globbing
               else {
                   push @argv, $_;
               }
           }
           @ARGV = @argv;
       }
   }

=head1 ‰‚ß‚Ä‚ÌJPerl

  œ g‚¢•û(‚»‚Ì1)

    1. ƒXƒNƒŠƒvƒg ShiftJIS_script.pl ‚Ì’†‚ÉˆÈ‰º‚Ì‚¢‚¸‚ê‚©‚ğ‹Lq‚µ‚Ä...

      use Sjis;
      use Sjis ver.sion;              --- Sjis.pm ‚Ìƒo[ƒWƒ‡ƒ“‚ª ver.sion ˆÈã‚È‚çÀs‰Â
      use Sjis ver.sion.0;            --- Sjis.pm ‚Ìƒo[ƒWƒ‡ƒ“‚ª ver.sion ‚Å‚È‚¯‚ê‚Î die ‚·‚é
      use Sjis qw(ord reverse getc);  --- ord, reverse, getc ‚ÌŠg’£‹@”\‚ğg‚¤ê‡
      use Sjis ver.sion qw(ord reverse getc);
      use Sjis ver.sion.0 qw(ord reverse getc);

      ¦ no Sjis; ‚Í—˜—p‚Å‚«‚Ü‚¹‚ñB

      use Sjis ver.sion.0; Œ`®‚¾‚Æ Sjis ƒ\ƒtƒgƒEƒFƒA‚Ìƒo[ƒWƒ‡ƒ“‚ÌãŒÀE‰ºŒÀ‚Ì‘o•û
      ‚ğw’è‚Å‚«‚Ü‚·BÀs‚Ì Sjis ƒ\ƒtƒgƒEƒFƒA‚ª‹Lq‚µ‚½ƒo[ƒWƒ‡ƒ“‚Æ‚Ò‚Á‚½‚è“¯‚¶‚Å
      ‚È‚¢‚È‚ç‚Î die ‚µ‚Ü‚·B—á‚¦‚ÎAuse Sjis 0.88.0; ‚Æ‹Lq‚·‚é‚Æ Sjis ƒ\ƒtƒgƒEƒFƒA
      ‚Ìƒo[ƒWƒ‡ƒ“‚ª 0.88 ‚Å‚ ‚é‚±‚Æ‚ğ•Ûá‚Å‚«‚Ü‚·B

    2. ƒRƒ}ƒ“ƒhƒvƒƒ“ƒvƒg‚ÅˆÈ‰º‚Ì‚æ‚¤‚ÉÀs‚·‚é

      perl  ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32

      ? * ‚ğg‚Á‚ÄƒƒCƒ‹ƒhƒJ[ƒh‚Ìw’è‚ª‚Å‚«‚Ü‚·
      ' ` ' ‚ğg‚Á‚ÄƒNƒH[ƒg‚·‚é‚±‚Æ‚ª‚Å‚«‚Ü‚·

  œ g‚¢•û(‚»‚Ì2)

    ƒRƒ}ƒ“ƒhƒvƒƒ“ƒvƒg‚ÅˆÈ‰º‚Ì‚æ‚¤‚ÉÀs‚·‚é

      C:\>perl  Sjis.pm  ShiftJIS_script.pl  >  Escaped_script.pl.e
      C:\>perl  Escaped_script.pl.e

      ShiftJIS_script.pl  --- ShiftJIS ‚Å‘‚©‚ê‚½ƒXƒNƒŠƒvƒg
      Escaped_script.pl.e --- ƒGƒXƒP[ƒv‚³‚ê‚½ƒXƒNƒŠƒvƒg

  œ g‚¦‚éƒTƒuƒ‹[ƒ`ƒ“‚ÆŠÖ”
      Sjis::ord(...);
      Sjis::reverse(...);
      Sjis::getc(...);
      Sjis::length(...);
      Sjis::substr(...);
      Sjis::index(...);
      Sjis::rindex(...);
      CORE::chop(...);
      CORE::ord(...);
      CORE::reverse(...);
      CORE::getc(...);
      CORE::index(...);
      CORE::rindex(...);

  œ ˆÈ‰º‚Íƒ_ƒ~[ƒTƒuƒ‹[ƒ`ƒ“‚Æ‚µ‚Ä—pˆÓ‚³‚ê‚Ä‚¢‚é
      utf8::upgrade(...);
      utf8::downgrade(...);
      utf8::encode(...);
      utf8::decode(...);
      utf8::is_utf8(...);
      utf8::valid(...);
      bytes::chr(...);
      bytes::index(...);
      bytes::length(...);
      bytes::ord(...);
      bytes::rindex(...);
      bytes::substr(...);

=head1 ƒGƒXƒP[ƒv‚É‚æ‚éãˆÊŒİŠ·«‚ÌŠm•Û

‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚Í‰ß‹‚Ì‚à‚Ì‚ğ‰ó‚µ‚½‚è‚Í‚¹‚¸Aí‚ÉuƒGƒXƒP[ƒvv‚É‚æ‚Á‚Ä‹@”\‚ğ’Ç‰Á
‚µ‚Ä‚¢‚Ü‚·B‚¾‚©‚ç¡‚Ü‚Å‰Â”\‚Å‚ ‚Á‚½‚±‚Æ‚ª•s‰Â”\‚É‚È‚é‚±‚Æ‚Í‚ ‚è‚Ü‚¹‚ñB‚±‚ÌƒAƒv
ƒ[ƒ`‚ÍAŒã‘Ş‚ªŒˆ‚µ‚Ä‹–‚³‚ê‚È‚¢•ª–ì‚É—LŒø‚Å‚·B‚È‚¨AãˆÊŒİŠ·«‚ÌŠm•Û‚Ì‚½‚ß‚ÉA
Perl©g‚Ì”ñŒİŠ·‚ÈŠg’£‚ğæ‚èœ‚­‚±‚Æ‚à‚ ‚è‚Ü‚·B

=head1 ƒXƒNƒŠƒvƒg‚ÌƒGƒXƒP[ƒv

ì¬‚µ‚½ƒXƒNƒŠƒvƒg‚É 'use Sjis;' ‚Æ‘‚­•K—v‚ª‚ ‚è‚Ü‚·B

  ---------------------------------
  ˆÈ‘O        ˆÈŒã
  ---------------------------------
  (‚È‚µ)      use Sjis;
  ---------------------------------

=head1 ƒ}ƒ‹ƒ`ƒoƒCƒg•¶š‚ÌƒGƒXƒP[ƒv

‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚É‚æ‚Á‚ÄAƒ}ƒ‹ƒ`ƒoƒCƒg•¶š‚Ì‘æ2ƒoƒCƒg‚Ì @  [  \  ]  ^  `  {  |  }
‚Ì’¼‘O‚É chr(0x5c) ‚ª‘}“ü‚³‚ê‚Ü‚·B‘ÎÛ‚ÍˆÈ‰º‚Ì‰ÓŠ‚Å‚·B

=over 2

=item * ƒVƒ“ƒOƒ‹ƒNƒH[ƒg’†‚Ì•¶š—ñ ('', q{}, <<'END' and qw{})

=item * ƒ_ƒuƒ‹ƒNƒH[ƒg’†‚Ì•¶š—ñ ("", qq{}, <<END, <<"END", ``, qx{} and <<`END`)

=item * ƒVƒ“ƒOƒ‹ƒNƒH[ƒg’†‚Ì³‹K•\Œ» (m'', s''', split(''), split(m'') and qr'')

=item * ƒ_ƒuƒ‹ƒNƒH[ƒg’†‚Ì³‹K•\Œ» (//, m//, ??, s///, split(//), split(m//) and qr//)

=item * tr/// ‚Ì’†‚Ì•¶š (tr/// and y///)

=back

  —á: ƒJƒ^ƒJƒi‚Ìuƒ\vƒR[ƒh‚Í "\x83\x5C"
  
                  Œ©‚¦•û  ƒ_ƒ“ƒv
  -----------------------------------------
  source script   "`/"    [83 5c]
  -----------------------------------------
 
  ‚±‚±‚Å use Sjis; ‚ğÀs
                          ƒ_ƒ“ƒv
  -----------------------------------------
  escaped script  "`\/"   [83 [5c] 5c]
  -----------------------------------------
                    ^--- Sjis ƒ\ƒtƒgƒEƒFƒA‚ÅƒGƒXƒP[ƒv‚³‚ê‚é
 
  Ql            Œ©‚¦•û  ƒ_ƒ“ƒv
  -----------------------------------------
  your eye's      "`/\"   [83 5c] [5c]
  -----------------------------------------
  perl eye's      "`\/"   [83] \[5c]
  -----------------------------------------
 
                          ƒ_ƒ“ƒv
  -----------------------------------------
  in the perl     "`/"    [83] [5c]
  -----------------------------------------

=head1 ³‹K•\Œ»’†‚Ö‚Ìƒ}ƒ‹ƒ`ƒoƒCƒgƒAƒ“ƒJ[ƒŠƒ“ƒOˆ—‚Ì’Ç‰Á

Sjis.pm ‚Í³‹K•\Œ»‚Ìæ“ª‚Éƒ}ƒ‹ƒ`ƒoƒCƒgƒAƒ“ƒJ[ƒŠƒ“ƒOˆ—‚ğ•t‚¯‘«‚µ‚Ü‚·B

  --------------------------------------------------------------------------------
  ˆ—‘O                  ˆ—Œã
  --------------------------------------------------------------------------------
  m/regexp/               m/${Esjis::anchor}(?:regexp).../
  --------------------------------------------------------------------------------

${Esjis::anchor} ‚Ì‹ï‘Ì“I‚È“à—e‚É‚Â‚¢‚Ä‚Í•Ê“ruSjis ƒ\ƒtƒgƒEƒFƒA‚Ìƒ}ƒ‹ƒ`ƒoƒCƒgƒAƒ“
ƒJ[ƒŠƒ“ƒOˆ—v‚É‹Lq‚µ‚Ä‚ ‚è‚Ü‚·B

=head1 ‘æ2ƒIƒNƒeƒbƒg‚ÌƒGƒXƒP[ƒvˆ—

Sjis.pm ‚Í³‹K•\Œ»’†‚Ìƒ}ƒ‹ƒ`ƒoƒCƒg•¶š‚Ì‘æ2ƒIƒNƒeƒbƒg‚ğƒGƒXƒP[ƒv‚µ‚Ü‚·B

  --------------------------------------------------------------------------------
  ˆ—‘O                  ˆ—Œã
  --------------------------------------------------------------------------------
  m{...`/...}             m{...`/\...}
  --------------------------------------------------------------------------------

=head1 ³‹K•\Œ»’†‚Ìƒ}ƒ‹ƒ`ƒoƒCƒg•¶š‚Ìˆµ‚¢‚É‚Â‚¢‚Ä

Sjis.pm ‚Íƒ}ƒ‹ƒ`ƒoƒCƒg•¶š‚Ö‚Ì—Êw’èqA‚¨‚æ‚Ñƒ}ƒ‹ƒ`ƒoƒCƒg•¶š‚ÌƒJƒXƒ^ƒ€•¶šƒNƒ‰ƒX
‚ğƒNƒ‰ƒXƒ^ƒŠƒ“ƒO‚µ‚Ü‚·B‚Ü‚½ƒNƒ‰ƒbƒVƒbƒN‚È Perl •¶šƒNƒ‰ƒXAPOSIX ƒXƒ^ƒCƒ‹‚Ì•¶š
ƒNƒ‰ƒX‚ğƒ}ƒ‹ƒ`ƒoƒCƒg•¶š‘Î‰”Å‚É‘‚«Š·‚¦‚Ü‚·B

  --------------------------------------------------------------------------------
  ˆ—‘O                  ˆ—Œã
  --------------------------------------------------------------------------------
  m/...MULTIOCT+.../      m/...(?:MULTIOCT)+.../
  m/...[AN-EM].../        m/...(?:A[N-Z]|[B-D][A-Z]|E[A-M]).../
  m/...\D.../             m/...(?:${Esjis::eD}).../
  m/...[[:^digit:]].../   m/...(?:${Esjis::not_digit}).../
  --------------------------------------------------------------------------------

=head1 Esjis::ignorecase() ‚ÌŒÄ‚Ño‚µ

Sjis.pm ‚Í /i Cüq‚Ì‘ã‚í‚è‚É Esjis::ignorecase() ‚ÌŒÄo‚µ‚ğ‘‚«‰Á‚¦‚Ü‚·B

  --------------------------------------------------------------------------------
  ˆ—‘O                  ˆ—Œã
  --------------------------------------------------------------------------------
  m/...$var.../i          m/...@{[Esjis::ignorecase($var)]}.../
  --------------------------------------------------------------------------------

=head1 •¶šwŒü‚Ì³‹K•\Œ»

/b Cüq‚Ì‚È‚¢³‹K•\Œ»‚Í•¶šwŒü‚Ì“­‚«‚ğ‚µ‚Ü‚·B

  --------------------------------------------------------------------------------
  ˆ—‘O                  ˆ—Œã
  --------------------------------------------------------------------------------
  /regexp/                / ã‹LQÆ $Esjis::matched/
  m/regexp/               m/ ã‹LQÆ $Esjis::matched/
  ?regexp?                m? ã‹LQÆ $Esjis::matched?
  m?regexp?               m? ã‹LQÆ $Esjis::matched?
 
  $_ =~                   ($_ =~ m/ ã‹LQÆ $Esjis::matched/) ?
  s/regexp/replacement/   eval{ Esjis::s_matched(); local $^W=0; my $__r=qq/replacement/; $_="${1}$__r$'"; 1 } :
                          undef
 
  $_ !~                   ($_ !~ m/ ã‹LQÆ $Esjis::matched/) ?
  s/regexp/replacement/   1 :
                          eval{ Esjis::s_matched(); local $^W=0; my $__r=qq/replacement/; $_="${1}$__r$'"; undef }
 
  split(/regexp/)         Esjis::split(qr/regexp/)
  split(m/regexp/)        Esjis::split(qr/regexp/)
  split(qr/regexp/)       Esjis::split(qr/regexp/)
  qr/regexp/              qr/ ã‹LQÆ $Esjis::matched/
  --------------------------------------------------------------------------------

=head1 ƒoƒCƒgwŒü‚Ì³‹K•\Œ»

/b Cüq‚ğ•t‰Á‚µ‚½³‹K•\Œ»‚ÍƒoƒCƒgwŒü‚Ì“­‚«‚ğ‚µ‚Ü‚·B

  --------------------------------------------------------------------------------
  ˆ—‘O                  ˆ—Œã
  --------------------------------------------------------------------------------
  /regexp/b               /(?:regexp)$Esjis::matched/
  m/regexp/b              m/(?:regexp)$Esjis::matched/
  ?regexp?b               m?regexp$Esjis::matched?
  m?regexp?b              m?regexp$Esjis::matched?
 
  $_ =~                   ($_ =~ m/(\G[\x00-\xFF]*?)(?:regexp)$Esjis::matched/) ?
  s/regexp/replacement/b  eval{ Esjis::s_matched(); local $^W=0; my $__r=qq/replacement/; $_="${1}$__r$'"; 1 } :
                          undef
 
  $_ !~                   ($_ !~ m/(\G[\x00-\xFF]*?)(?:regexp)$Esjis::matched/) ?
  s/regexp/replacement/b  1 :
                          eval{ Esjis::s_matched(); local $^W=0; my $__r=qq/replacement/; $_="${1}$__r$'"; undef }
 
  split(/regexp/b)        split(qr/regexp/)
  split(m/regexp/b)       split(qr/regexp/)
  split(qr/regexp/b)      split(qr/regexp/)
  qr/regexp/b             qr/(?:regexp)$Esjis::matched/
  --------------------------------------------------------------------------------

=head1 •¶šƒNƒ‰ƒX‚ÌƒGƒXƒP[ƒv

‰ß‹‚Ìperl‚Æ‚ÌŒİŠ·«‚ğ•Û‚Â‚½‚ß‚É•¶šƒNƒ‰ƒX‚ÍˆÈ‰º‚Ì‚æ‚¤‚ÉÄ’è‹`‚³‚ê‚Ä‚¢‚Ü‚·B

  ---------------------------------------------------------------
  escape        class
  ---------------------------------------------------------------
   .            ${Esjis::dot}
                ${Esjis::dot_s}    (/s Cüq‚ ‚è)
  \d            [0-9]
  \s            [\x09\x0A\x0B\x0C\x0D\x20]
  \w            [0-9A-Z_a-z]
  \D            ${Esjis::eD}
  \S            ${Esjis::eS}
  \W            ${Esjis::eW}
  \h            [\x09\x20]
  \v            [\x0A\x0B\x0C\x0D]
  \H            ${Esjis::eH}
  \V            ${Esjis::eV}
  \C            [\x00-\xFF]
  \X            X (‚½‚¾‚Ì‰pšAX ‚Å‚·)
  \R            ${Esjis::eR}
  \N            ${Esjis::eN}
  ---------------------------------------------------------------

“¯—l‚É POSIX ƒXƒ^ƒCƒ‹‚Ì•¶šƒNƒ‰ƒX‚àÄ’è‹`‚³‚ê‚Ä‚¢‚Ü‚·B

  ---------------------------------------------------------------
  escape        class
  ---------------------------------------------------------------
  [:alnum:]     [\x30-\x39\x41-\x5A\x61-\x7A]
  [:alpha:]     [\x41-\x5A\x61-\x7A]
  [:ascii:]     [\x00-\x7F]
  [:blank:]     [\x09\x20]
  [:cntrl:]     [\x00-\x1F\x7F]
  [:digit:]     [\x30-\x39]
  [:graph:]     [\x21-\x7F]
  [:lower:]     [\x61-\x7A]
                [\x41-\x5A\x61-\x7A]     (/i Cüq‚ ‚è)
  [:print:]     [\x20-\x7F]
  [:punct:]     [\x21-\x2F\x3A-\x3F\x40\x5B-\x5F\x60\x7B-\x7E]
  [:space:]     [\s\x0B]
  [:upper:]     [\x41-\x5A]
                [\x41-\x5A\x61-\x7A]     (/i Cüq‚ ‚è)
  [:word:]      [\x30-\x39\x41-\x5A\x5F\x61-\x7A]
  [:xdigit:]    [\x30-\x39\x41-\x46\x61-\x66]
  [:^alnum:]    ${Esjis::not_alnum}
  [:^alpha:]    ${Esjis::not_alpha}
  [:^ascii:]    ${Esjis::not_ascii}
  [:^blank:]    ${Esjis::not_blank}
  [:^cntrl:]    ${Esjis::not_cntrl}
  [:^digit:]    ${Esjis::not_digit}
  [:^graph:]    ${Esjis::not_graph}
  [:^lower:]    ${Esjis::not_lower}
                ${Esjis::not_lower_i}    (/i Cüq‚ ‚è)
  [:^print:]    ${Esjis::not_print}
  [:^punct:]    ${Esjis::not_punct}
  [:^space:]    ${Esjis::not_space}
  [:^upper:]    ${Esjis::not_upper}
                ${Esjis::not_upper_i}    (/i Cüq‚ ‚è)
  [:^word:]     ${Esjis::not_word}
  [:^xdigit:]   ${Esjis::not_xdigit}
  ---------------------------------------------------------------

\b ‚Æ \B ‚à‰ß‹‚Ìperl‚Æ‚ÌŒİŠ·«‚ğ•Û‚Â‚½‚ß‚ÉÄ’è‹`‚³‚ê‚Ä‚¢‚Ü‚·B

  ---------------------------------------------------------------
  escape      class
  ---------------------------------------------------------------
  \b          ${Esjis::eb}
  \B          ${Esjis::eB}
  ---------------------------------------------------------------

ã‹L‚Ì’è‹`‚ÍAƒtƒ@ƒCƒ‹ Esjis.pm ‚Ì’†‚ÅˆÈ‰º‚Ì‚æ‚¤‚É’è‹`‚³‚ê‚Ä‚¢‚Ü‚·B

  ---------------------------------------------------------------------------------------------------------------------------------------------------------
  class                    Definition
  ---------------------------------------------------------------------------------------------------------------------------------------------------------
  ${Esjis::anchor}         qr{\G(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?}
                           32766ƒIƒNƒeƒbƒg‚ğ’´‚¦‚é•¶š—ñ‚ğˆµ‚¦‚é‚æ‚¤‚É‚·‚é‚½‚ßAActivePerl5.6ˆÈ~(5.10.0ŠÜ‚Ş)A‚Ü‚½‚Í‚»‚Ì‘¼‚ÌPerl5.10.1ˆÈ~‚Ìê‡‚ÍˆÈ‰º‚Ì‚æ‚¤‚É‚È‚è‚Ü‚·
                           qr{\G(?(?=.{0,32766}\z)(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?|(?(?=[\x00-\x80\xA0-\xDF\xFD-\xFF]+\z).*?|(?:.*?[\x00-\x80\xA0-\xDF\xFD-\xFF](?:[^\x00-\x80\xA0-\xDF\xFD-\xFF]{2})*?)))}oxms;
  ${Esjis::dot}            qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x0A])}
  ${Esjis::dot_s}          qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])}
  ${Esjis::eD}             qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC0-9])}
  ${Esjis::eS}             qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x09\x0A\x0B\x0C\x0D\x20])}
  ${Esjis::eW}             qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC0-9A-Z_a-z])}
  ${Esjis::eH}             qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x09\x20])}
  ${Esjis::eV}             qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x0A\x0B\x0C\x0D])}
  ${Esjis::eR}             qr{(?:\x0D\x0A|[\x0A\x0D])}
  ${Esjis::eN}             qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x0A])}
  ${Esjis::not_alnum}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x30-\x39\x41-\x5A\x61-\x7A])}
  ${Esjis::not_alpha}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x41-\x5A\x61-\x7A])}
  ${Esjis::not_ascii}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x00-\x7F])}
  ${Esjis::not_blank}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x09\x20])}
  ${Esjis::not_cntrl}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x00-\x1F\x7F])}
  ${Esjis::not_digit}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x30-\x39])}
  ${Esjis::not_graph}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x21-\x7F])}
  ${Esjis::not_lower}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x61-\x7A])}
  ${Esjis::not_lower_i}    qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])}
  ${Esjis::not_print}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x20-\x7F])}
  ${Esjis::not_punct}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x21-\x2F\x3A-\x3F\x40\x5B-\x5F\x60\x7B-\x7E])}
  ${Esjis::not_space}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\s\x0B])}
  ${Esjis::not_upper}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x41-\x5A])}
  ${Esjis::not_upper_i}    qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])}
  ${Esjis::not_word}       qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x30-\x39\x41-\x5A\x5F\x61-\x7A])}
  ${Esjis::not_xdigit}     qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x30-\x39\x41-\x46\x61-\x66])}
  ${Esjis::eb}             qr{(?:\A(?=[0-9A-Z_a-z])|(?<=[\x00-\x2F\x40\x5B-\x5E\x60\x7B-\xFF])(?=[0-9A-Z_a-z])|(?<=[0-9A-Z_a-z])(?=[\x00-\x2F\x40\x5B-\x5E\x60\x7B-\xFF]|\z))}
  ${Esjis::eB}             qr{(?:(?<=[0-9A-Z_a-z])(?=[0-9A-Z_a-z])|(?<=[\x00-\x2F\x40\x5B-\x5E\x60\x7B-\xFF])(?=[\x00-\x2F\x40\x5B-\x5E\x60\x7B-\xFF]))}
  ---------------------------------------------------------------------------------------------------------------------------------------------------------

=head1 \N, \p, \P, \X ‚ÌƒAƒ“ƒGƒXƒP[ƒv

‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚É‚æ‚Á‚Ä‰p”š‚Ì³‹K•\Œ»ƒƒ^ƒVƒ“ƒ{ƒ‹ \N, \p, \P, \X ‚Ìæ“ª‚Ì
'\' ‚ªæ‚èœ‚©‚ê‚Ü‚·B‚±‚Ì•û–@‚Å’ŠÛ‰»‚Ìã©‚ğ”ğ‚¯‚é‚±‚Æ‚ª‚Å‚«‚Ü‚·B

ƒAƒ“ƒGƒXƒP[ƒvŒã‚É "{" ‚ğƒGƒXƒP[ƒv‚·‚é‚æ‚¤‚É‚µ‚½——R‚ÍA
Deprecate literal unescaped "{" in regexes.
http://perl5.git.perl.org/perl.git/commit/2a53d3314d380af5ab5283758219417c6dfa36e9
‚É‚æ‚é‚à‚Ì‚Å‚·B

  ------------------------------------
  ˆ—‘O           ˆ—Œã
  ------------------------------------
  \N{CHARNAME}     N\{CHARNAME}
  \p{L}            p\{L}
  \p{^L}           p\{^L}
  \p{\^L}          p\{\^L}
  \pL              pL
  \P{L}            P\{L}
  \P{^L}           P\{^L}
  \P{\^L}          P\{\^L}
  \PL              PL
  \X               X
  ------------------------------------

=head1 ‘g‚İŠÖ”‚ÌƒGƒXƒP[ƒv

‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚É‚æ‚Á‚ÄŠÖ”–¼‚Ìæ“ª‚É 'Esjis::' ‚ª‘‚«‰Á‚í‚èƒGƒXƒP[ƒv‚³‚ê‚Ü‚·B
Esjis::* ƒTƒuƒ‹[ƒ`ƒ“‚Í Esjis.pm ‚ª’ñ‹Ÿ‚µ‚Ü‚·B

  --------------------------------------------
  ˆ—‘O      ˆ—Œã            “®ì
  --------------------------------------------
  length      length            ƒoƒCƒgwŒü
  substr      substr            ƒoƒCƒgwŒü
  pos         pos               ƒoƒCƒgwŒü
  split       Esjis::split      •¶šwŒü
  tr///       Esjis::tr         •¶šwŒü
  tr///b      tr///             ƒoƒCƒgwŒü
  tr///B      tr///             ƒoƒCƒgwŒü
  y///        Esjis::tr         •¶šwŒü
  y///b       tr///             ƒoƒCƒgwŒü
  y///B       tr///             ƒoƒCƒgwŒü
  chop        Esjis::chop       •¶šwŒü
  index       Esjis::index      •¶šwŒü
  rindex      Esjis::rindex     •¶šwŒü
  lc          Esjis::lc         •¶šwŒü
  lcfirst     Esjis::lcfirst    •¶šwŒü
  uc          Esjis::uc         •¶šwŒü
  ucfirst     Esjis::ucfirst    •¶šwŒü
  fc          Esjis::fc         •¶šwŒü
  chr         Esjis::chr        •¶šwŒü
  glob        Esjis::glob       •¶šwŒü
  lstat       Esjis::lstat      •¶šwŒü
  opendir     Esjis::opendir    •¶šwŒü
  stat        Esjis::stat       •¶šwŒü
  unlink      Esjis::unlink     •¶šwŒü
  chdir       Esjis::chdir      •¶šwŒü
  do          Esjis::do         •¶šwŒü
  require     Esjis::require    •¶šwŒü
  --------------------------------------------

  ------------------------------------------------------------------------------------------------------------------------
  ˆ—‘O                   ˆ—Œã
  ------------------------------------------------------------------------------------------------------------------------
  use Perl::Module;        BEGIN { Esjis::require 'Perl/Module.pm'; Perl::Module->import() if Perl::Module->can('import'); }
  use Perl::Module @list;  BEGIN { Esjis::require 'Perl/Module.pm'; Perl::Module->import(@list) if Perl::Module->can('import'); }
  use Perl::Module ();     BEGIN { Esjis::require 'Perl/Module.pm'; }
  no Perl::Module;         BEGIN { Esjis::require 'Perl/Module.pm'; Perl::Module->unimport() if Perl::Module->can('unimport'); }
  no Perl::Module @list;   BEGIN { Esjis::require 'Perl/Module.pm'; Perl::Module->unimport(@list) if Perl::Module->can('unimport'); }
  no Perl::Module ();      BEGIN { Esjis::require 'Perl/Module.pm'; }
  ------------------------------------------------------------------------------------------------------------------------

=head1 ƒtƒ@ƒCƒ‹ƒeƒXƒg‰‰Zq‚ÌƒGƒXƒP[ƒv

‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚É‚æ‚Á‚Ä‰‰Zq‚Ì '-' ‚Í 'Esjis::' ‚É‘‚«Š·‚í‚è‚Ü‚·B

  MSWin32, MacOS ‚¨‚æ‚Ñ UNIX•—‚ÌƒVƒXƒeƒ€‚Å—˜—p‰Â”\‚È‰‰Zq
  -------------------------------------------------------------------------------
  ˆ—‘O    ˆ—Œã      à–¾
  -------------------------------------------------------------------------------
  -r        Esjis::r    ƒtƒ@ƒCƒ‹‚âƒfƒBƒŒƒNƒgƒŠ‚ª‚±‚Ì(ÀŒø)ƒ†[ƒU‚Ü‚½‚ÍƒOƒ‹[ƒv‚©‚ç“Ç‚İo‚µ‰Â”\
  -w        Esjis::w    ƒtƒ@ƒCƒ‹‚âƒfƒBƒŒƒNƒgƒŠ‚ª‚±‚Ì(ÀŒø)ƒ†[ƒU‚Ü‚½‚ÍƒOƒ‹[ƒv‚©‚ç‘‚«‚İ‰Â”\
  -e        Esjis::e    ƒtƒ@ƒCƒ‹‚âƒfƒBƒŒƒNƒgƒŠ–¼‚ª‘¶İ‚·‚é
  -x        Esjis::x    ƒtƒ@ƒCƒ‹‚âƒfƒBƒŒƒNƒgƒŠ‚ª‚±‚Ì(ÀŒø)ƒ†[ƒU‚Ü‚½‚ÍƒOƒ‹[ƒv‚©‚çÀs‰Â”\
  -z        Esjis::z    ƒtƒ@ƒCƒ‹‚ª‘¶İ‚µ‚Ä‚¢‚Ä‘å‚«‚³‚ª0‚Å‚ ‚é(ƒfƒBƒŒƒNƒgƒŠ‚É‘Î‚µ‚Ä‚Íí‚É‹U‚É‚È‚é)
  -f        Esjis::f    ƒGƒ“ƒgƒŠ‚Í•’Ê‚Ìƒtƒ@ƒCƒ‹‚Å‚ ‚é
  -d        Esjis::d    ƒGƒ“ƒgƒŠ‚ÍƒfƒBƒŒƒNƒgƒŠ‚Å‚ ‚é
  -t        -t          ‚±‚Ìƒtƒ@ƒCƒ‹ƒnƒ“ƒhƒ‹‚ÍTTY‚Å‚ ‚é(isatty()ƒVƒXƒeƒ€ŠÖ”‚ÌŒ‹‰Ê‚Å”»’è‚·‚éB
                        ‚±‚ÌƒeƒXƒg‚Íƒtƒ@ƒCƒ‹–¼‚É‚Í“K—p‚Å‚«‚È‚¢)
  -T        Esjis::T    ‚±‚Ìƒtƒ@ƒCƒ‹‚ÍuƒeƒLƒXƒgvƒtƒ@ƒCƒ‹‚Ì‚æ‚¤‚Å‚ ‚é
  -B        Esjis::B    ‚±‚Ìƒtƒ@ƒCƒ‹‚ÍuƒoƒCƒiƒŠvƒtƒ@ƒCƒ‹‚Ì‚æ‚¤‚Å‚ ‚é
  -M        Esjis::M    ÅŒã‚É•ÏX‚³‚ê‚Ä‚©‚ç‚Ì“ú”
  -A        Esjis::A    ÅŒã‚ÉƒAƒNƒZƒX‚³‚ê‚Ä‚©‚ç‚Ì“ú”
  -C        Esjis::C    ÅŒã‚É iƒm[ƒh(inode) ‚ª•ÏX‚³‚ê‚Ä‚©‚ç‚Ì“ú”
  -s        Esjis::s    ƒtƒ@ƒCƒ‹‚âƒfƒBƒŒƒNƒgƒŠ‚ª‘¶İ‚µ‚Ä‚¢‚Ä‘å‚«‚³‚ª 0 ‚Å‚È‚¢
                        (ƒoƒCƒg’PˆÊ‚Å•\‚í‚µ‚½ƒtƒ@ƒCƒ‹‚Ì‘å‚«‚³‚ª’l‚É‚È‚é)
  -------------------------------------------------------------------------------
  
  MacOS ‚¨‚æ‚Ñ UNIX•—‚ÌƒVƒXƒeƒ€‚Å—˜—p‰Â”\‚È‰‰Zq
  -------------------------------------------------------------------------------
  ˆ—‘O    ˆ—Œã      à–¾
  -------------------------------------------------------------------------------
  -R        Esjis::R    ƒtƒ@ƒCƒ‹‚âƒfƒBƒŒƒNƒgƒŠ‚ª‚±‚ÌÀƒ†[ƒU‚Ü‚½‚ÍƒOƒ‹[ƒv‚©‚ç“Ç‚İo‚µ‰Â”\
  -W        Esjis::W    ƒtƒ@ƒCƒ‹‚âƒfƒBƒŒƒNƒgƒŠ‚ª‚±‚ÌÀƒ†[ƒU‚Ü‚½‚ÍƒOƒ‹[ƒv‚©‚ç‘‚«‚İ‰Â”\
  -X        Esjis::X    ƒtƒ@ƒCƒ‹‚âƒfƒBƒŒƒNƒgƒŠ‚ª‚±‚ÌÀƒ†[ƒU‚Ü‚½‚ÍƒOƒ‹[ƒv‚©‚çÀs‰Â”\
  -l        Esjis::l    ƒGƒ“ƒgƒŠ‚ÍƒVƒ“ƒ{ƒŠƒbƒNƒŠƒ“ƒN‚Å‚ ‚é
  -S        Esjis::S    ƒGƒ“ƒgƒŠ‚Íƒ\ƒPƒbƒg‚Å‚ ‚é
  -------------------------------------------------------------------------------
  
  MSWin32, MacOS ‚Å‚Í—˜—po—ˆ‚È‚¢ƒtƒ@ƒCƒ‹ƒeƒXƒg‰‰Zq
  -------------------------------------------------------------------------------
  ˆ—‘O    ˆ—Œã      à–¾
  -------------------------------------------------------------------------------
  -o        Esjis::o    ƒtƒ@ƒCƒ‹‚âƒfƒBƒŒƒNƒgƒŠ‚ğ‚±‚Ì(ÀŒø)ƒ†[ƒU‚ªŠ—L‚µ‚Ä‚¢‚é
  -O        Esjis::O    ƒtƒ@ƒCƒ‹‚âƒfƒBƒŒƒNƒgƒŠ‚ğ‚±‚ÌÀƒ†[ƒU‚ªŠ—L‚µ‚Ä‚¢‚é
  -p        Esjis::p    ƒGƒ“ƒgƒŠ‚Í–¼‘O•t‚«ƒpƒCƒv(fifo)‚Å‚ ‚é
  -b        Esjis::b    ƒGƒ“ƒgƒŠ‚ÍƒuƒƒbƒN“ÁêƒfƒoƒCƒX‚Å‚ ‚é(—á‚¦‚ÎAƒ}ƒEƒ“ƒg‰Â”\‚ÈƒfƒBƒXƒN)
  -c        Esjis::c    ƒGƒ“ƒgƒŠ‚ÍƒLƒƒƒ‰ƒNƒ^“ÁêƒfƒoƒCƒX‚Å‚ ‚é(—á‚¦‚ÎAI/OƒfƒoƒCƒX)
  -u        Esjis::u    ƒtƒ@ƒCƒ‹‚âƒfƒBƒŒƒNƒgƒŠ‚ª setuid ‚³‚ê‚Ä‚¢‚é
  -g        Esjis::g    ƒtƒ@ƒCƒ‹‚âƒfƒBƒŒƒNƒgƒŠ‚ª setgid ‚³‚ê‚Ä‚¢‚é
  -k        Esjis::k    ƒtƒ@ƒCƒ‹‚âƒfƒBƒŒƒNƒgƒŠ‚Ì sticky ƒrƒbƒg‚ªƒZƒbƒg‚³‚ê‚Ä‚¢‚é
  -------------------------------------------------------------------------------

perl5.00503 ‚ğg—p‚µ‚Ä‚¢‚éê‡‚Å‚àƒtƒ@ƒCƒ‹ƒeƒXƒg‰‰Zq‚ÍuÏ‚İd‚Ë‚év‚±‚Æ‚ª
‚Å‚«‚Ü‚·B

  if ( -w -r $file ) {
      print "The file is both readable and writable!\n";
  }

=head1 ŠÖ”–¼‚ÌƒGƒXƒP[ƒv

‚à‚µ•¶šwŒü‚ÌƒTƒuƒ‹[ƒ`ƒ“‚ğg‚¢‚½‚¢ê‡‚ÍˆÈ‰º‚Ì‚æ‚¤‚É‹Lq‚·‚é•K—v‚ª‚ ‚è‚Ü‚·B
‚»‚ê‚¼‚ê‚Ì‹@”\‚É‚Â‚¢‚Ä‚Íu•¶šwŒü‚ÌƒTƒuƒ‹[ƒ`ƒ“v‚ğQÆ‚µ‚Ä‚­‚¾‚³‚¢B

  ----------------------------------------------------
  ŠÖ”–¼    •¶šwŒü        à–¾
  ----------------------------------------------------
  ord       Sjis::ord
  reverse   Sjis::reverse
  getc      Sjis::getc
  length    Sjis::length
  substr    Sjis::substr
  index     Sjis::index     ˆÈ‰º‚Ì‹Lq‚àQÆ‚Ì‚±‚Æ
  rindex    Sjis::rindex    ˆÈ‰º‚Ì‹Lq‚àQÆ‚Ì‚±‚Æ
  ----------------------------------------------------

  index ‚Ì’‡ŠÔ‚½‚¿
  --------------------------------------------------------------
  ŠÖ”–¼         “®ì         •Ô’l         à–¾
  --------------------------------------------------------------
  index          •¶šwŒü     ƒoƒCƒg’PˆÊ   JPerl‚Æ“¯‚¶“®ì
  Sjis::index    •¶šwŒü     •¶š’PˆÊ     •¶šwŒü‚Ì“®ì
  CORE::index    ƒoƒCƒgwŒü   ƒoƒCƒg’PˆÊ   ƒoƒCƒgwŒü‚Ì“®ì
  --------------------------------------------------------------

  rindex ‚Ì’‡ŠÔ‚½‚¿
  --------------------------------------------------------------
  ŠÖ”–¼         “®ì         •Ô’l         à–¾
  --------------------------------------------------------------
  rindex         •¶šwŒü     ƒoƒCƒg’PˆÊ   JPerl‚Æ“¯‚¶“®ì
  Sjis::rindex   •¶šwŒü     •¶š’PˆÊ     •¶šwŒü‚Ì“®ì
  CORE::rindex   ƒoƒCƒgwŒü   ƒoƒCƒg’PˆÊ   ƒoƒCƒgwŒü‚Ì“®ì
  --------------------------------------------------------------

=head1 •¶šwŒü‚ÌƒTƒuƒ‹[ƒ`ƒ“

=over 2

=item * Sjis::ord

    $ord = Sjis::ord($string);

    Sjis::ord($string) ‚Í $string ‚Ìæ“ª‚Ì•¶š‚Ì ShiftJIS ƒR[ƒh’l‚ğ•Ô‚µ‚Ü‚·
    (Unicode ‚Å‚Í‚ ‚è‚Ü‚¹‚ñ)B$string ‚ªÈ—ª‚³‚ê‚½ê‡‚Í $_ ‚ª‘ÎÛ‚Æ‚È‚è‚Ü‚·B
    ‚±‚ÌƒTƒuƒ‹[ƒ`ƒ“‚Íí‚É•„†‚È‚µ‚Ì’l‚ğ•Ô‚µ‚Ü‚·B

    "use Sjis qw(ord);" ‚É‚æ‚Á‚ÄƒXƒNƒŠƒvƒg’†‚É‹Lq‚µ‚½ ord ‚Í Sjis::ord ‚É‘‚«
    Š·‚í‚é‚æ‚¤‚É‚È‚è‚Ü‚·Bord ‚ª Sjis::ord ‚Ì“®ì‚ğ‚·‚é‚Ì‚Í JPerl ‚Æ”ñŒİŠ·‚È‚Ì
    ‚Å–¾¦“I‚ÉƒCƒ“ƒ|[ƒg‚µ‚½ê‡‚Ì‚İ‘‚«Š·‚í‚è‚Ü‚·B

=item * Sjis::reverse

    @reverse = Sjis::reverse(@list);
    $reverse = Sjis::reverse(@list);

    Sjis::reverse(@list) ‚ÍƒŠƒXƒgƒRƒ“ƒeƒLƒXƒg‚Å‚Í @list ‚Ì—v‘f‚ğ‹t‡‚É•À‚×‚½
    ƒŠƒXƒg’l‚ğ•Ô‚µ‚Ü‚·B

    ƒXƒJƒ‰[ƒRƒ“ƒeƒLƒXƒg‚Å‚Í @list ‚Ì‚·‚×‚Ä‚Ì—v‘f‚ğ˜AŒ‹‚µ‚½ã‚ÅAShiftJIS ‚Ì
    •¶š’PˆÊ‚Å‹t‡‚É‚µ‚½‚à‚Ì‚ğ•Ô‚µ‚Ü‚·B

    "use Sjis qw(reverse);" ‚É‚æ‚Á‚ÄƒXƒNƒŠƒvƒg’†‚É‹Lq‚µ‚½ reverse ‚Í
    Sjis::reverse ‚É‘‚«Š·‚í‚é‚æ‚¤‚É‚È‚è‚Ü‚·Breverse ‚ª Sjis::reverse ‚Ì“®ì‚ğ
    ‚·‚é‚Ì‚Í JPerl ‚Æ”ñŒİŠ·‚È‚Ì‚Å–¾¦“I‚ÉƒCƒ“ƒ|[ƒg‚µ‚½ê‡‚Ì‚İ‘‚«Š·‚í‚è‚Ü‚·B

    ‚à‚µ‚±‚ÌƒTƒuƒ‹[ƒ`ƒ“‚ğ’m‚ç‚È‚­‚Æ‚à–â‘è‚Í‚ ‚è‚Ü‚¹‚ñB‚±‚ê‚Ü‚Å’Ê‚èA‚±‚ÌƒTƒu
    ƒ‹[ƒ`ƒ“‚Í

    $rev = join('', reverse(split(//, $jstring)));

    ‚ÅÀŒ»‚Å‚«‚Ü‚·B

    Ql:
    P.558 JPerl (“ú–{Œê‘Î‰Perl)
    •t˜^C “ú–{Œê”Å‚Ì’Ç‰Á
    ISBN 4-89052-384-7 PerlƒvƒƒOƒ‰ƒ~ƒ“ƒO

=item * Sjis::getc

    $getc = Sjis::getc(FILEHANDLE);
    $getc = Sjis::getc($filehandle);
    $getc = Sjis::getc;

    FILEHANDLE ‚ÉŒ‹‚Ñ‚Â‚¯‚ç‚ê‚½“ü—Íƒtƒ@ƒCƒ‹‚©‚çAŸ‚Ì1•¶š‚ğ“Ç‚ñ‚Å•Ô‚µ‚Ü‚·B
    end-of-file(ƒtƒ@ƒCƒ‹‚ÌI‚í‚è) ‚É‚È‚Á‚½‚©A‚ ‚é‚¢‚Í I/O ƒGƒ‰[‚ª”­¶‚µ‚½ê‡‚É
    ‚ÍAundef ‚ğ•Ô‚µ‚Ü‚·BFILEHANDLE ‚ğÈ—ª‚·‚é‚ÆASTDIN ‚©‚ç“ü—Í‚µ‚Ü‚·B

    ‚±‚ÌƒTƒuƒ‹[ƒ`ƒ“‚Í­‚µ’x‚¢‚à‚Ì‚ÌAƒL[ƒ{[ƒh‚©‚ç1•¶š‚ğ“ü—Í‚·‚éÛ‚É•Ö—˜‚Å‚·
    -- ƒL[ƒ{[ƒh“ü—Í‚ğƒoƒbƒtƒ@ƒŠƒ“ƒO‚È‚µ‚Éİ’è‚Å‚«‚ê‚Î‚Å‚·‚ªB‚±‚ÌƒTƒuƒ‹[ƒ`ƒ“‚ÍA
    •W€I/Oƒ‰ƒCƒuƒ‰ƒŠ‚É‘Î‚µ‚ÄAƒoƒbƒtƒ@ƒŠƒ“ƒO‚È‚µ‚Å“ü—Í‚·‚é‚æ‚¤‚É—v‹‚µ‚Ü‚·Bc”O‚È
    ‚±‚Æ‚ÉA•W€I/Oƒ‰ƒCƒuƒ‰ƒŠ‚ÍAƒIƒyƒŒ[ƒeƒBƒ“ƒOƒVƒXƒeƒ€‚É‘Î‚µ‚Äƒoƒbƒtƒ@ƒŠƒ“ƒO‚È‚µ
    ‚ÅƒL[ƒ{[ƒh“ü—Í‚ğs‚¤‚æ‚¤‚É—v‹‚·‚é‚½‚ß‚ÌAˆÚA«‚Ì‚ ‚éè’i‚ğ—pˆÓ‚·‚é‚Ü‚Å‚É‚ÍA
    •W€‰»‚³‚ê‚Ä‚¢‚Ü‚¹‚ñB‚»‚ê‚É‚ÍA­X’mŒb‚ğ“­‚©‚¹‚ÄAƒIƒyƒŒ[ƒeƒBƒ“ƒOƒVƒXƒeƒ€‚É
    ŒÅ—L‚Ì‚â‚è•û‚ğ‚·‚é•K—v‚ª‚ ‚è‚Ü‚·BUnix ‚Å‚ÍAŸ‚Ì‚æ‚¤‚É‚·‚ê‚Î‚¤‚Ü‚­‚¢‚­‚Å‚µ‚å‚¤B

    if ($BSD_STYLE) {
        system "stty cbreak </dev/tty >/dev/tty 2>&1";
    }
    else {
        system "stty", "-icanon", "eol", "\001";
    }

    $key = Sjis::getc;

    if ($BSD_STYLE) {
        system "stty -cbreak </dev/tty >/dev/tty 2>&1";
    }
    else {
        system "stty", "icanon", "eol", "^@"; # ASCII NUL
    }
    print "\n";

    ‚±‚ÌƒR[ƒh‚ÍA’[––‚©‚çŸ‚Éƒ^ƒCƒv‚³‚ê‚½•¶š‚ğ•Ï” $key ‚É“ü‚ê‚Ü‚·B‚ ‚È‚½‚ÌƒVƒXƒe
    ƒ€‚Ì stty ƒvƒƒOƒ‰ƒ€‚É cbreak ƒIƒvƒVƒ‡ƒ“‚ª‚ ‚é‚È‚çAã‚ÌƒR[ƒh‚Ì‚¤‚¿A$BSD_STYLE
    ‚ª^‚Ìê‡‚ÌƒR[ƒh‚ğg‚¤‚Æ—Ç‚¢‚Å‚µ‚å‚¤B‚»‚¤‚Å‚È‚¯‚ê‚ÎA$BSD_STYLE ‚ª‹U‚Ìê‡‚Ì
    ƒR[ƒh‚ğg‚¦‚Î‚æ‚¢‚Å‚µ‚å‚¤B

    "use Sjis qw(getc);" ‚É‚æ‚Á‚ÄƒXƒNƒŠƒvƒg’†‚É‹Lq‚µ‚½ getc ‚Í Sjis::getc ‚É‘‚«
    Š·‚í‚é‚æ‚¤‚É‚È‚è‚Ü‚·Bgetc ‚ª Sjis::getc ‚Ì“®ì‚ğ‚·‚é‚Ì‚Í JPerl ‚Æ”ñŒİŠ·‚È‚Ì
    ‚Å–¾¦“I‚ÉƒCƒ“ƒ|[ƒg‚µ‚½ê‡‚Ì‚İ‘‚«Š·‚í‚è‚Ü‚·B

=item * Sjis::length

    $length = Sjis::length($string);
    $length = Sjis::length();

    Sjis::length($string) ‚ÍƒXƒJƒ‰[’l $string ‚Ì’·‚³‚ğ ShiftJIS ‚Ì•¶š”(ƒvƒƒO
    ƒ‰ƒ}‚©‚çŒ©‚¦‚é•¶š)‚Å•Ô‚µ‚Ü‚·B$string ‚ğÈ—ª‚µ‚½ê‡‚Í $_ ‚Ì•¶š”‚ğ•Ô‚µ‚Ü
    ‚·B

    ”z—ñ‚â˜A‘z”z—ñ(ƒnƒbƒVƒ…)‚Ì‘å‚«‚³‚ğ’m‚è‚½‚¢ê‡‚É‚ÍASjis::length ‚Íg‚¦‚Ü
    ‚¹‚ñB”z—ñ‚Ì‘å‚«‚³‚ğ’m‚é‚É‚Í scalar @arrayA˜A‘z”z—ñ‚É“ü‚Á‚Ä‚¢‚éƒL[/’l‚Ìƒy
    ƒA‚ÌŒÂ”‚ğ’m‚é‚É‚Í scalar keys %hash ‚Æ‚µ‚Ü‚·B

    •¶š”‚Å‚Í‚È‚­ƒoƒCƒg’PˆÊ‚Å‚Ì’·‚³‚ğ’²‚×‚é‚É‚ÍA‚¢‚Ü‚Ü‚Å’Ê‚è

    $bytes = length($string);

    ‚Ì‚æ‚¤‚É‚µ‚Ü‚·B

    ‚à‚µ‚±‚ÌƒTƒuƒ‹[ƒ`ƒ“‚ğ’m‚ç‚È‚­‚Æ‚à–â‘è‚Í‚ ‚è‚Ü‚¹‚ñB‚±‚ê‚Ü‚Å’Ê‚èA‚±‚ÌƒTƒuƒ‹[
    ƒ`ƒ“‚Í

    $len = split(//, $jstring);

    ‚ÅÀŒ»‚Å‚«‚Ü‚·B

    Ql:
    P.558 JPerl (“ú–{Œê‘Î‰Perl)
    •t˜^C “ú–{Œê”Å‚Ì’Ç‰Á
    ISBN 4-89052-384-7 PerlƒvƒƒOƒ‰ƒ~ƒ“ƒO

=item * Sjis::substr

    $substr = Sjis::substr($string,$offset,$length,$replacement);
    $substr = Sjis::substr($string,$offset,$length);
    $substr = Sjis::substr($string,$offset);

    Sjis::substr ‚ÍAShiftJIS •¶š—ñ $string ‚Åw’è‚³‚ê‚½•¶š—ñ‚©‚ç•”•ª•¶š—ñ‚ğæ‚è
    o‚µ‚Ä•Ô‚µ‚Ü‚·B•”•ª•¶š—ñ‚ÍA•¶š—ñ‚Ìæ“ª‚©‚ç”‚¦‚Ä $offset •¶š–Ú‚©‚çn‚Ü‚éA
    $length •¶š•ª‚Å‚·BÅ‰‚Ì•¶š‚ªƒIƒtƒZƒbƒg 0 ‚Æ‚È‚è‚Ü‚·B$offset ‚É•‰‚Ì’l‚ğİ’è
    ‚·‚é‚ÆA$string ‚ÌI‚í‚è‚©‚ç‚ÌƒIƒtƒZƒbƒg‚Æ‚È‚è‚Ü‚·B
    $length ‚ğÈ—ª‚·‚é‚ÆA$string ‚ÌÅŒã‚Ü‚Å‚·‚×‚Ä‚ª•Ô‚³‚ê‚Ü‚·B$length ‚ª•‰‚Ì’l‚¾
    ‚ÆA•¶š—ñ‚ÌÅŒã‚©‚çw’è‚³‚ê‚½”‚¾‚¯•¶š‚ğæ‚èœ‚«‚Ü‚·B‚»‚¤‚Å‚È‚¯‚ê‚ÎA$length
    ‚ÍA‚ ‚È‚½‚ªŠú‘Ò‚·‚é‚æ‚¤‚ÉAæ‚èo‚·•”•ª•¶š—ñ‚Ì’·‚³‚ğ•\‚µ‚Ä‚¢‚Ü‚·B

    my $s = "The black cat climbed the green tree";
    my $color  = Sjis::substr $s, 4, 5;      # black
    my $middle = Sjis::substr $s, 4, -11;    # black cat climbed the
    my $end    = Sjis::substr $s, 14;        # climbed the green tree
    my $tail   = Sjis::substr $s, -4;        # tree
    my $z      = Sjis::substr $s, -4, 2;     # tr

    ƒo[ƒWƒ‡ƒ“ 5.14 ˆÈ~‚Ì Perl ‚Å‚ ‚ê‚ÎASjis::substr() ‚ğ¶•Ó’l‚Æ‚µ‚Äg—p‚·‚é‚±‚Æ‚à
    ‰Â”\‚Å‚·B‚»‚Ìê‡‚É‚ÍA$string ‚ª©g¶•Ó’l‚Å‚È‚¯‚ê‚Î‚È‚è‚Ü‚¹‚ñB$length ‚æ‚è’Z‚¢
    ‚à‚Ì‚ğ‘ã“ü‚µ‚½‚Æ‚«‚É‚ÍA$string ‚Í’Z‚­‚È‚èA$length ‚æ‚è’·‚¢‚à‚Ì‚ğ‘ã“ü‚µ‚½‚Æ‚«‚É‚ÍA
    $string ‚Í‚»‚ê‚É‡‚í‚¹‚ÄL‚Ñ‚é‚±‚Æ‚É‚È‚è‚Ü‚·B$string ‚Ì’·‚³‚ğˆê’è‚É•Û‚Â‚½‚ß‚É‚ÍA
    sprintf ‚ğg‚Á‚ÄA‘ã“ü‚·‚é’l‚Ì’·‚³‚ğ’²®‚·‚é‚±‚Æ‚ªA•K—v‚É‚È‚é‚©‚à‚µ‚ê‚Ü‚¹‚ñB

    $offset ‚Æ $length ‚Æ‚µ‚Ä•¶š—ñ‚ÌŠO‘¤‚ğŠÜ‚Ş‚æ‚¤‚È•”•ª•¶š—ñ‚ªw’è‚³‚ê‚é‚ÆA•¶š—ñ
    ‚Ì“à‘¤‚Ì•”•ª‚¾‚¯‚ª•Ô‚³‚ê‚Ü‚·B•”•ª•¶š—ñ‚ª•¶š—ñ‚Ì—¼’[‚ÌŠO‘¤‚Ìê‡ASjis::substr()
    ‚Í–¢’è‹`’l‚ğ•Ô‚µAŒx‚ªo—Í‚³‚ê‚Ü‚·B¶•Ó’l‚Æ‚µ‚Äg‚Á‚½ê‡A•¶š—ñ‚ÌŠ®‘S‚ÉŠO‘¤‚ğ
    •”•ª•¶š—ñ‚Æ‚µ‚Äw’è‚·‚é‚Æ—áŠO‚ª”­¶‚µ‚Ü‚·BˆÈ‰º‚Í‹«ŠEğŒ‚ÌU‚é•‘‚¢‚ğ¦‚·—á‚Å‚·:

    my $name = 'fred';
    Sjis::substr($name, 4) = 'dy';         # $name is now 'freddy'
    my $null = Sjis::substr $name, 6, 2;   # returns "" (no warning)
    my $oops = Sjis::substr $name, 7;      # returns undef, with warning
    Sjis::substr($name, 7) = 'gap';        # raises an exception

    Sjis::substr() ‚ğ¶•Ó’l‚Æ‚µ‚Äg‚¤‘ã‚í‚è‚Ì•û–@‚ÍA’u‚«Š·‚¦‚é•¶š—ñ‚ğ 4 ”Ô–Ú‚Ìˆø”‚Æ
    ‚µ‚Äw’è‚·‚é‚±‚Æ‚Å‚·B‚±‚ê‚É‚æ‚èA$string ‚Ìˆê•”‚ğ’u‚«Š·‚¦A’u‚«Š·‚¦‚é‘O‚ª‰½‚Å‚ ‚Á
    ‚½‚©‚ğ•Ô‚·A‚Æ‚¢‚¤‚±‚Æ‚ğ(splice() ‚Æ“¯—l) 1 “®ì‚Ås‚¦‚Ü‚·B

    my $s = "The black cat climbed the green tree";
    my $z = Sjis::substr $s, 14, 7, "jumped from";    # climbed
    # $s is now "The black cat jumped from the green tree"

    3 ˆø”‚Ì Sjis::substr() ‚É‚æ‚Á‚Ä•Ô‚³‚ê‚½¶•Ó’l‚Íu–‚–@‚Ì’eŠÛv‚Ì‚æ‚¤‚ÉU•‘‚¤‚±‚Æ‚É
    ’ˆÓ‚µ‚Ä‚­‚¾‚³‚¢; ‚±‚ê‚ª‘ã“ü‚³‚ê‚é–ˆ‚ÉAŒ³‚Ì•¶š—ñ‚Ì‚Ç‚Ì•”•ª‚ª•ÏX‚³‚ê‚½‚©‚ªv‚¢
    o‚³‚ê‚Ü‚·; —á‚¦‚Î:

    $x = '1234';
    for (Sjis::substr($x,1,2)) {
        $_ = 'a';   print $x,"\n";    # prints 1a4
        $_ = 'xyz'; print $x,"\n";    # prints 1xyz4
        $x = '56789';
        $_ = 'pq';  print $x,"\n";    # prints 5pq9
    }

    •‰”‚ÌƒIƒtƒZƒbƒg‚Ìê‡Aƒ^[ƒQƒbƒg•¶š—ñ‚ªC³‚³‚ê‚½‚Æ‚«‚É•¶š—ñ‚Ì––”ö‚©‚ç‚ÌˆÊ’u
    ‚ğŠo‚¦‚Ü‚·:

    $x = '1234';
    for (Sjis::substr($x, -3, 2)) {
        $_ = 'a';   print $x,"\n";    # prints 1a4, as above
        $x = 'abcdefg';
        print $_,"\n";                # prints f
    }

    ƒo[ƒWƒ‡ƒ“ 5.10 ‚æ‚è‘O‚Ì Perl ‚Å‚ÍA•¡”‰ñ¶•Ó’l‚ğg‚Á‚½ê‡‚ÌŒ‹‰Ê‚Í –¢’è‹`‚Å‚µ‚½B
    5.16 ‚æ‚è‘O‚Å‚ÍA•‰‚ÌƒIƒtƒZƒbƒg‚ÌŒ‹‰Ê‚Í–¢’è‹`‚Å‚·B

=item * Sjis::index

    $index = Sjis::index($string,$substring,$offset);
    $index = Sjis::index($string,$substring);

    Sjis::index ‚ÍAShiftJIS •¶š—ñ $string ‚Ì’†‚ÉŠÜ‚Ü‚ê‚éA‚à‚¤1‚Â‚Ì ShiftJIS •¶
    š—ñ $substring ‚ğ’T‚µ‚Ü‚·B$string ‚Ì’†‚ÅA$substring ‚ªÅ‰‚ÉoŒ»‚·‚éˆÊ’u‚ğ
    •¶š’PˆÊ‚Å”‚¦‚Ä•Ô‚µ‚Ü‚·B$offset ‚ªw’è‚³‚ê‚Ä‚¢‚éê‡A$string ‚Ìæ“ª‚©‚ç $offset
    ŒÂ‚Ì•¶š‚ğƒXƒLƒbƒv‚µ‚½ˆÊ’u‚©‚çA$substring ‚ğ’T‚µn‚ß‚Ü‚·BˆÊ’u‚Í 0 ‚ğƒx[ƒX‚Æ‚µ
    ‚Ä”‚¦‚Ü‚·B$substring ‚ªŒ©‚Â‚©‚ç‚È‚¯‚ê‚ÎASjis::index ƒTƒuƒ‹[ƒ`ƒ“‚Íƒx[ƒX‚æ‚è
    1 ‚¾‚¯¬‚³‚¢’l -1 ‚ğ•Ô‚µ‚Ü‚·BSjis::index ‚ğg‚Á‚ÄA•¶š—ñ‘S‘Ì‚ğ’²‚×‚é‚É‚ÍAŸ‚Ì
    ‚æ‚¤‚É‚µ‚Ü‚·B

    $pos = -1;
    while (($pos = Sjis::index($string, $lookfor, $pos)) > -1) {
        print "Found at $pos\n";
        $pos++;
    }

=item * Sjis::rindex

    $rindex = Sjis::rindex($string,$substring,$offset);
    $rindex = Sjis::rindex($string,$substring);

    Sjis::rindex ‚Í Sjis::index ‚Æ—‚Ä‚¢‚Ü‚·‚ªAShiftJIS •¶š—ñ $string ‚Ì’†‚ÅA
    •”•ª•¶š—ñ $substring ‚ªÅŒã‚ÉoŒ»‚·‚éˆÊ’u‚ğ•¶š’PˆÊ‚Å”‚¦‚Ä•Ô‚µ‚Ü‚·(‚Â‚Ü‚è
    reverse Sjis::index ‚Å‚·)B$substring ‚ªŒ©‚Â‚©‚ç‚È‚¯‚ê‚ÎA-1 ‚ğ•Ô‚µ‚Ü‚·B
    $offset ‚É‚æ‚Á‚ÄA’l‚Æ‚µ‚Ä•Ô‚·‚±‚Æ‚ª‹–‚³‚ê‚éAÅ‚à‰E‚æ‚è‚ÌˆÊ’u‚ğw’è‚·‚é‚±‚Æ
    ‚ª‚Å‚«‚Ü‚·BSjis::rindex ‚ğg‚Á‚ÄA•¶š—ñ‘S‘Ì‚ğ––”ö‚©‚çæ“ª‚ÉŒü‚©‚Á‚Ä’²‚×‚é‚É
    ‚ÍAŸ‚Ì‚æ‚¤‚É‚µ‚Ü‚·B

    $pos = Sjis::length($string);
    while (($pos = Sjis::rindex($string, $lookfor, $pos)) >= 0) {
        print "Found at $pos\n";
        $pos--;
    }

=item * ƒtƒ@ƒCƒ‹–¼ƒOƒƒrƒ“ƒO

    @glob = glob($expr);
    $glob = glob($expr);
    @glob = glob;
    $glob = glob;
    @glob = <*>;
    $glob = <*>;

    ‚±‚Ì‰‰Zq‚Í Esjis::glob ‚É‚æ‚Á‚ÄÀ‘•‚³‚ê‚Ä‚¢‚Ü‚·BEsjis::glob ‚ÌÚ×‚ÍˆÈ‰º‚Ì
    ’Ê‚è‚Å‚·B

    @glob = Esjis::glob($string);
    @glob = Esjis::glob_;

    ‚±‚ÌƒTƒuƒ‹[ƒ`ƒ“‚ÍA$string‚Ì’l‚É‘Î‚µ‚ÄADOS•—ƒVƒFƒ‹‚Æ“¯‚¶‚æ‚¤‚Èƒtƒ@ƒCƒ‹–¼“WŠJ
    ‚ğs‚Á‚Ä“¾‚ç‚ê‚½Œ‹‰Ê‚ğ•Ô‚µ‚Ü‚·B$string ‚ªÈ—ª‚³‚ê‚½‚Æ‚«‚Í‘ã‚í‚è‚É $_ ‚ªg‚í‚ê
    ‚Ü‚·B‚±‚ÌƒTƒuƒ‹[ƒ`ƒ“‚Í Sjisƒ\ƒtƒgƒEƒFƒA“à•”‚Å <*> ‚¨‚æ‚Ñ glob ‰‰Zq‚ğÀ‘•‚µ
    ‚Ä‚¢‚éƒTƒuƒ‹[ƒ`ƒ“‚Å‚·BMSWin32ŠÂ‹«‚É‚Ä $string ‚ª chr(0x5c) ‚ÅI—¹‚µ‚Ä‚¢‚éê‡
    ‚Å‚à“®ì‚µ‚Ü‚·B

    g‚¢‚â‚·‚­‚·‚é‚½‚ß‚É Esjis::glob ‚ÍAUNIX•—‚Å‚Í‚È‚­ADOS•—‚Ì“WŠJ‚ğs‚¤‚æ‚¤‚É‚È‚Á
    ‚Ä‚¢‚Ü‚·BƒAƒXƒ^ƒŠƒXƒN("*")‚ÍA”CˆÓ‚Ì•¶š‚ğ”CˆÓŒÂ(0ŒÂ‚Å‚à‚æ‚¢)•À‚×‚½‚à‚Ì‚Éƒ}ƒbƒ`
    ‚µ‚Ü‚·BƒNƒGƒXƒ`ƒ‡ƒ“‹L†("?")‚ÍA”CˆÓ‚Ì•¶š1ŒÂ‚Ü‚½‚Í0ŒÂ‚Éƒ}ƒbƒ`‚µ‚Ü‚·BƒeƒBƒ‹
    ƒf("~")‚Íƒz[ƒ€ƒfƒBƒŒƒNƒgƒŠ–¼‚É“WŠJ‚³‚ê‚Ü‚·B—á‚¦‚ÎA"~/.*rc" ‚ÍŒ»İ‚Ìƒ†[ƒU‚Ì
    "rc" ƒtƒ@ƒCƒ‹‚·‚×‚Ä‚Éƒ}ƒbƒ`‚·‚é‚µA"~jane/Mail/*" ‚ÍJane‚Ìƒ[ƒ‹ƒtƒ@ƒCƒ‹‚·‚×‚Ä
    ‚Éƒ}ƒbƒ`‚µ‚Ü‚·B

    ASCII‚Ì‰pš‚Ì‘å•¶š‚Æ¬•¶š‚Í‹æ•Ê‚³‚ê‚¸A“¯‚¶‚à‚Ì‚Æ‚µ‚Äˆµ‚í‚ê‚Ü‚·BƒoƒbƒNƒXƒ‰ƒb
    ƒVƒ…‚ÆƒXƒ‰ƒbƒVƒ…‚Í‚Ç‚¿‚ç‚àƒfƒBƒŒƒNƒgƒŠƒZƒpƒŒ[ƒ^‚Æ‚µ‚Äˆµ‚í‚ê‚Ü‚·Bƒ_ƒuƒ‹ƒNƒH[ƒg
    •¶š—ñ‚Ì’†‚ÅƒoƒbƒNƒXƒ‰ƒbƒVƒ…1‚Â(\)‚ğ•\‚í‚·‚½‚ß‚É‚Í2‚Â‚Ì \A(‚Â‚Ü‚è \\ )‚ğ‹Lq‚·
    ‚é•K—v‚ª‚ ‚è‚Ü‚·B

    ‹ó”’•¶š‚ğŠÜ‚Ş‰Â”\«‚Ì‚ ‚éƒtƒ@ƒCƒ‹–¼‚ğƒOƒƒu‚µ‚½‚¢ê‡‚É‚ÍA$string‚ğƒ_ƒuƒ‹
    ƒNƒH[ƒg‚ÅˆÍ‚Ş•K—v‚ª‚ ‚è‚Ü‚·B‚È‚º‚È‚çAEsjis::glob ‚ÍA‹ó”’•¶š‚ğ“Á•Êˆµ‚¢‚µ‚Ä•¡”
    ‚Ìƒpƒ^[ƒ“‚Ì‹æØ‚è(—á‚¦‚Î<*.c *.h>)‚Æ‰ğß‚µ‚Ä‚µ‚Ü‚¤‚©‚ç‚Å‚·B
    —á‚¦‚ÎA"e" ‚ÌŒã‚ë‚É‹ó”’•¶šA‚»‚ÌŒã‚ë‚É "f" ‚ª‘±‚­ƒtƒ@ƒCƒ‹–¼‚ÌƒOƒƒrƒ“ƒO‚ğs‚¤
    ‚É‚ÍˆÈ‰º‚Ì‚æ‚¤‚É‹Lq‚µ‚Ü‚·B

    @spacies = <"*e f*">;
    @spacies = Esjis::glob('"*e f*"');
    @spacies = Esjis::glob(q("*e f*"));

    •Ï”‚ğ—˜—p‚·‚éê‡‚ÍˆÈ‰º‚Ì‚æ‚¤‚É‚µ‚Ü‚·B

    @spacies = Esjis::glob("'*${var}e f*'");
    @spacies = Esjis::glob(qq("*${var}e f*"));

    ƒXƒNƒŠƒvƒg‚ğ¡Œã‚àDOS•—‚ÌOS‚ÅÀs‚·‚é‚Ì‚Å‚ ‚ê‚ÎA

    # ‘Š‘ÎƒpƒX‚Åæ“¾‚·‚éê‡
    @relpath_file = split(/\n/,`dir /b wildcard\\here*.txt 2>NUL`);

    # â‘ÎƒpƒX‚Åæ“¾‚·‚éê‡
    @abspath_file = split(/\n/,`dir /s /b wildcard\\here*.txt 2>NUL`);

    ‚Æ‹Lq‚µ‚Ä‚à‚æ‚¢‚Å‚µ‚å‚¤B

=back

=head1 ƒoƒCƒgwŒü‚ÌŠÖ”

=over 2

=item * CORE::chop

    $byte = CORE::chop($string);
    $byte = CORE::chop(@list);
    $byte = CORE::chop;

    •¶š—ñ•Ï”‚ ‚é‚¢‚ÍƒoƒCƒg—ñ•Ï”‚ÌÅŒã‚ÌƒoƒCƒg‚ğØ‚è—‚Æ‚µA‚»‚ÌƒoƒCƒg‚ğ’l‚Æ‚µ‚Ä
    •Ô‚µ‚Ü‚·BCORE::chop ‰‰Zq‚ÍAå‚É“ü—ÍƒŒƒR[ƒh‚Ì––”ö‚©‚ç‰üs•¶š‚ğæ‚èœ‚­‚Ì‚É
    —p‚¢‚ç‚êA’uŠ·‰‰Zq‚ğg‚¤(s/\n$//)‚æ‚è‚àŒø—¦“I‚Å‚·B‚à‚µ‚â‚è‚½‚¢‚±‚Æ‚ª‚»‚ê‚¾‚¯
    ‚È‚ç‚ÎAchomp ‚ğg‚¤‚Ù‚¤‚ª‚æ‚èˆÀ‘S‚Å‚·B‚È‚º‚È‚çACORE::chop ‚Í––”ö‚É‚ ‚éƒoƒCƒg
    ‚ğ–³ğŒ‚Åæ‚èœ‚­‚Ì‚É‘Î‚µ‚ÄAchomp ‚Íæ‚èœ‚­‚à‚Ì‚ğ‘I‚ñ‚Åæ‚èœ‚­‚©‚ç‚Å‚·B

    ƒŠƒeƒ‰ƒ‹‚ğ CORE::chop ‚·‚é‚±‚Æ‚Í‚Å‚«‚Ü‚¹‚ñ --- CORE::chop ‚Å‚«‚é‚Ì‚Í•Ï”‚¾‚¯‚Å
    ‚·B

    ˆø”‚Æ‚µ‚Ä•Ï”‚ÌƒŠƒXƒg @list ‚ğ—^‚¦‚é‚ÆAƒŠƒXƒg‚ÌŠe•¶š—ñ‚ÌÅŒã‚ÌƒoƒCƒg‚ªØ‚è
    —‚Æ‚³‚ê‚Ü‚·:

    @lines = `cat myfile`;
    CORE::chop @lines;

    ‘ã“ü®‚ğŠÜ‚ßA¶•Ó’l‚È‚ç‚Î‚Ç‚ñ‚È‚à‚Ì‚Å‚à CORE::chop ‚·‚é‚±‚Æ‚ª‚Å‚«‚Ü‚·:

    CORE::chop($cwd = `pwd`);
    CORE::chop($answer = <STDIN>);

    ã‚Ì2s‚ÍAŸ‚Ì—á‚Æ‚Íˆá‚Á‚½“®ì‚ğ‚µ‚Ü‚·:

    $answer = CORE::chop($tmp = <STDIN>); # Œë‚è

    ‚±‚ÌƒR[ƒh‚Å‚ÍACORE::chop ‚ÍA($tmp‚É“ü‚Á‚Ä‚¢‚é)c‚³‚ê‚½•¶š—ñ‚Å‚Í‚È‚­AØ‚è
    —‚Æ‚µ‚½ƒoƒCƒg‚ğ•Ô‚·‚Ì‚ÅA$answer ‚É‚Í‰üs•¶š‚ªƒZƒbƒg‚³‚ê‚Ä‚µ‚Ü‚¢‚Ü‚·BˆÓ}‚µ
    ‚½Œ‹‰Ê‚ğ“¾‚é‚½‚ß‚Ì•û–@‚Ì1‚Â‚ÍAsubstr ‚ğg‚¤‚±‚Æ‚Å‚·:

    $answer = substr <STDIN>, 0, -1;

    ‚µ‚©‚µAŸ‚Ì‚æ‚¤‚É‘‚­‚Ì‚ª•’Ê‚Å‚·:

    CORE::chop($answer = <STDIN>);

    Å‚àˆê”Ê“I‚ÈƒP[ƒX‚Å‚ÍAsubstr ‚ğg‚Á‚ÄACORE::chop ‚ğ‘‚«Š·‚¦‚é‚±‚Æ‚ª‚Å‚«‚Ü‚·:

    $last_byte = CORE::chop($var);
    $last_byte = substr($var, -1, 1, ""); # “¯‚¶‚±‚Æ

    ‚±‚ê‚ç‚ª“™‰¿‚Å‚ ‚é‚±‚Æ‚ğ—‰ğ‚µ‚Ä‚µ‚Ü‚¦‚ÎA‚Ü‚Æ‚ß‚Ä CORE::chop ‚ğs‚¤‚±‚Æ‚ª‚Å‚«
    ‚Ü‚·B2ŒÂˆÈã‚ÌƒoƒCƒg‚ğ‚Ü‚Æ‚ß‚ÄØ‚è—‚Æ‚·‚É‚ÍAsubstr ‚ğ¶•Ó’l‚Æ‚µ‚Äg‚¢A‚»‚ê‚É
    ‹ó•¶š—ñ‚ğ‘ã“ü‚µ‚Ü‚·BŸ‚ÌƒR[ƒh‚Í $caravan ‚ÌÅŒã‚Ì5ƒoƒCƒg‚ğæ‚èœ‚«‚Ü‚·:

    substr($caravan, -5) = "";

    ‚±‚±‚Å‚Í substr ‚É•‰‚Ì’l‚ğ—^‚¦‚é‚±‚Æ‚É‚æ‚Á‚ÄA(æ“ª‚©‚ç‚Å‚Í‚È‚­)––”ö‚©‚ç‚ÌƒI
    ƒtƒZƒbƒg‚ğw’è‚µ‚Ä‚¢‚Ü‚·Bíœ‚µ‚½ƒoƒCƒg‚ğ•Û‘¶‚µ‚½‚¯‚ê‚ÎA4ˆø”‚Ì substr ‚ğg‚Á
    ‚Ä5ƒoƒCƒg‚ğ CORE::chop ‚µ‚Ü‚·:

    $tail = substr($caravan, -5, 5, "");

    ˆø”‚ğÈ—ª‚·‚é‚ÆA•Ï” $_ ‚ª‘ÎÛ‚Æ‚È‚è‚Ü‚·B

=item * CORE::ord

    $ord = CORE::ord($expr);

    CORE::ord($expr) ‚Í "use Sjis qw(ord);" ‚Ì‹Lq‚Ì—L–³‚ÉŠÖ‚í‚ç‚¸Aí‚É $expr
    ‚Ìæ“ª‚ÌƒoƒCƒg’l‚ğ•Ô‚µ‚Ü‚·B$expr ‚ªÈ—ª‚³‚ê‚½ê‡‚Í $_ ‚ª‘ÎÛ‚Æ‚È‚è‚Ü‚·B
    ‚±‚ÌŠÖ”‚Íí‚É•„†‚È‚µ‚Ì’l‚ğ•Ô‚µ‚Ü‚·B

    •„†•t‚«‚Ì’l‚ª•K—v‚Å‚ ‚ê‚ÎAunpack('c',$expr) ‚ğg‚¢‚Ü‚·B‚Ü‚½‘S‚Ä‚ÌƒoƒCƒg’l
    ‚ğƒŠƒXƒg‚Æ‚µ‚Ä•K—v‚Å‚ ‚ê‚Î unpack('C*',$expr) ‚ğ‘ã‚í‚è‚Ég‚¢‚Ü‚·B

=item * CORE::reverse

    @reverse = CORE::reverse(@list);
    $reverse = CORE::reverse(@list);

    CORE::reverse(@list) ‚ÍƒŠƒXƒgƒRƒ“ƒeƒLƒXƒg‚Å‚Í @list ‚Ì—v‘f‚ğ‹t‡‚É•À‚×‚½
    ƒŠƒXƒg’l‚ğ•Ô‚µ‚Ü‚·B

    ƒXƒJƒ‰[ƒRƒ“ƒeƒLƒXƒg‚Å‚Í "use Sjis qw(ord);" ‚Ì‹Lq‚Ì—L–³‚ÉŠÖ‚í‚ç‚¸A @list
    ‚Ì‚·‚×‚Ä‚Ì—v‘f‚ğ˜AŒ‹‚µ‚½ã‚ÅAƒoƒCƒg’PˆÊ‚Å‹t‡‚É‚µ‚½‚à‚Ì‚ğ•Ô‚µ‚Ü‚·B

=item * CORE::getc

    $getc = CORE::getc(FILEHANDLE);
    $getc = CORE::getc($filehandle);
    $getc = CORE::getc;

    FILEHANDLE ‚ÉŒ‹‚Ñ‚Â‚¯‚ç‚ê‚½“ü—Íƒtƒ@ƒCƒ‹‚©‚çAŸ‚Ì1ƒoƒCƒg‚ğ“Ç‚ñ‚Å•Ô‚µ‚Ü‚·B
    end-of-file(ƒtƒ@ƒCƒ‹‚ÌI‚í‚è) ‚É‚È‚Á‚½‚©A‚ ‚é‚¢‚Í I/O ƒGƒ‰[‚ª”­¶‚µ‚½ê‡‚É
    ‚ÍAundef ‚ğ•Ô‚µ‚Ü‚·BFILEHANDLE ‚ğÈ—ª‚·‚é‚ÆASTDIN ‚©‚ç“ü—Í‚µ‚Ü‚·B

    ‚±‚ÌŠÖ”‚Í­‚µ’x‚¢‚à‚Ì‚ÌAƒL[ƒ{[ƒh‚©‚ç1ƒoƒCƒg‚ğ“ü—Í‚·‚éÛ‚É•Ö—˜‚Å‚· -- ƒL[
    ƒ{[ƒh“ü—Í‚ğƒoƒbƒtƒ@ƒŠƒ“ƒO‚È‚µ‚Éİ’è‚Å‚«‚ê‚Î‚Å‚·‚ªB‚±‚ÌŠÖ”‚ÍA•W€I/Oƒ‰ƒCƒu
    ƒ‰ƒŠ‚É‘Î‚µ‚ÄAƒoƒbƒtƒ@ƒŠƒ“ƒO‚È‚µ‚Å“ü—Í‚·‚é‚æ‚¤‚É—v‹‚µ‚Ü‚·Bc”O‚È‚±‚Æ‚ÉA•W€
    I/Oƒ‰ƒCƒuƒ‰ƒŠ‚ÍAƒIƒyƒŒ[ƒeƒBƒ“ƒOƒVƒXƒeƒ€‚É‘Î‚µ‚Äƒoƒbƒtƒ@ƒŠƒ“ƒO‚È‚µ‚ÅƒL[ƒ{[ƒh
    “ü—Í‚ğs‚¤‚æ‚¤‚É—v‹‚·‚é‚½‚ß‚ÌAˆÚA«‚Ì‚ ‚éè’i‚ğ—pˆÓ‚·‚é‚Ü‚Å‚É‚ÍA•W€‰»‚³‚ê
    ‚Ä‚¢‚Ü‚¹‚ñB‚»‚ê‚É‚ÍA­X’mŒb‚ğ“­‚©‚¹‚ÄAƒIƒyƒŒ[ƒeƒBƒ“ƒOƒVƒXƒeƒ€‚ÉŒÅ—L‚Ì‚â‚è
    •û‚ğ‚·‚é•K—v‚ª‚ ‚è‚Ü‚·BUnix ‚Å‚ÍAŸ‚Ì‚æ‚¤‚É‚·‚ê‚Î‚¤‚Ü‚­‚¢‚­‚Å‚µ‚å‚¤B

    if ($BSD_STYLE) {
        system "stty cbreak </dev/tty >/dev/tty 2>&1";
    }
    else {
        system "stty", "-icanon", "eol", "\001";
    }

    $key = CORE::getc;

    if ($BSD_STYLE) {
        system "stty -cbreak </dev/tty >/dev/tty 2>&1";
    }
    else {
        system "stty", "icanon", "eol", "^@"; # ASCII NUL
    }
    print "\n";

    ‚±‚ÌƒR[ƒh‚ÍA’[––‚©‚çŸ‚Éƒ^ƒCƒv‚³‚ê‚½1ƒoƒCƒg‚ğ•Ï” $key ‚É“ü‚ê‚Ü‚·B‚ ‚È‚½‚Ì
    ƒVƒXƒeƒ€‚Ì stty ƒvƒƒOƒ‰ƒ€‚É cbreak ƒIƒvƒVƒ‡ƒ“‚ª‚ ‚é‚È‚çAã‚ÌƒR[ƒh‚Ì‚¤‚¿A
    $BSD_STYLE ‚ª^‚Ìê‡‚ÌƒR[ƒh‚ğg‚¤‚Æ—Ç‚¢‚Å‚µ‚å‚¤B‚»‚¤‚Å‚È‚¯‚ê‚ÎA$BSD_STYLE
    ‚ª‹U‚Ìê‡‚ÌƒR[ƒh‚ğg‚¦‚Î‚æ‚¢‚Å‚µ‚å‚¤B

=item * CORE::index

    $index = CORE::index($string,$substring,$offset);
    $index = CORE::index($string,$substring);

    CORE::index ‚ÍAƒoƒCƒg—ñ $string ‚Ì’†‚ÉŠÜ‚Ü‚ê‚éA‚à‚¤1‚Â‚ÌƒoƒCƒg—ñ $substring
    ‚ğ’T‚µ‚Ü‚·B$string ‚Ì’†‚ÅA$substring ‚ªÅ‰‚ÉoŒ»‚·‚éˆÊ’u‚ğƒoƒCƒg’PˆÊ‚Å”‚¦‚Ä
    •Ô‚µ‚Ü‚·B$offset ‚ªw’è‚³‚ê‚Ä‚¢‚éê‡A$string ‚Ìæ“ª‚©‚ç $offset ƒoƒCƒg•ªƒXƒLƒb
    ƒv‚µ‚½ˆÊ’u‚©‚çA$substring ‚ğ’T‚µn‚ß‚Ü‚·BˆÊ’u‚Í 0 ‚ğƒx[ƒX‚É‚µ‚Ä”‚¦‚Ü‚·B
    $substring ‚ªŒ©‚Â‚©‚ç‚È‚¯‚ê‚ÎACORE::index ŠÖ”‚Íƒx[ƒX‚æ‚è 1 ‚¾‚¯¬‚³‚¢’l -1
    ‚ğ•Ô‚µ‚Ü‚·BCORE::index ‚ğg‚Á‚ÄAƒoƒCƒg—ñ‘S‘Ì‚ğ’²‚×‚é‚É‚ÍAŸ‚Ì‚æ‚¤‚É‚µ‚Ü‚·B

    $pos = -1;
    while (($pos = CORE::index($string, $lookfor, $pos)) > -1) {
        print "Found at $pos\n";
        $pos++;
    }

=item * CORE::rindex

    $rindex = CORE::rindex($string,$substring,$offset);
    $rindex = CORE::rindex($string,$substring);

    CORE::rindex ‚Í CORE::index ‚Æ—‚Ä‚¢‚Ü‚·‚ªAƒoƒCƒg—ñ $string ‚Ì’†‚ÅA•”•ªƒoƒCƒg
    —ñ $substring ‚ªÅŒã‚ÉoŒ»‚·‚éˆÊ’u‚ğƒoƒCƒg’PˆÊ‚Å”‚¦‚Ä•Ô‚µ‚Ü‚·(‚Â‚Ü‚è
    reverse CORE::index ‚Å‚·)B$substring ‚ªŒ©‚Â‚©‚ç‚È‚¯‚ê‚ÎA-1 ‚ğ•Ô‚µ‚Ü‚·B
    $offset ‚É‚æ‚Á‚ÄA’l‚Æ‚µ‚Ä•Ô‚·‚±‚Æ‚ª‹–‚³‚ê‚éAÅ‚à‰E‚æ‚è‚ÌˆÊ’u‚ğw’è‚·‚é‚±‚Æ
    ‚ª‚Å‚«‚Ü‚·BCORE::rindex ‚ğg‚Á‚ÄAƒoƒCƒg—ñ‘S‘Ì‚ğ––”ö‚©‚çæ“ª‚ÉŒü‚©‚Á‚Ä’²‚×‚é
    ‚É‚ÍAŸ‚Ì‚æ‚¤‚É‚µ‚Ü‚·B

    $pos = CORE::length($string);
    while (($pos = CORE::rindex($string, $lookfor, $pos)) >= 0) {
        print "Found at $pos\n";
        $pos--;
    }

=back

=head1 bytes::* ƒTƒuƒ‹[ƒ`ƒ“‚ÌƒAƒ“ƒGƒXƒP[ƒv

‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚É‚æ‚Á‚Ä bytes::* ƒTƒuƒ‹[ƒ`ƒ“‚Ìæ“ª‚Ì 'bytes::' ‚ªæ‚èœ‚©‚ê‚Ü‚·B

  -----------------------------------------
  ˆ—‘O           ˆ—Œã    “®ì
  -----------------------------------------
  bytes::chr       chr       ƒoƒCƒgwŒü
  bytes::index     index     ƒoƒCƒgwŒü
  bytes::length    length    ƒoƒCƒgwŒü
  bytes::ord       ord       ƒoƒCƒgwŒü
  bytes::rindex    rindex    ƒoƒCƒgwŒü
  bytes::substr    substr    ƒoƒCƒgwŒü
  -----------------------------------------

=head1 •W€ƒ‚ƒWƒ…[ƒ‹‚Ì“à—e‚ÌƒGƒXƒP[ƒv

•W€ƒ‚ƒWƒ…[ƒ‹‚Ìƒtƒ@ƒCƒ‹‚ğ /Perl/site/lib/Sjis ‚ÉƒRƒs[‚µ‚Ä 'use utf8;' ‚ğ
'use Sjis;' ‚É‘‚«Š·‚¦‚Ü‚·B•K—v‚É‰‚¶‚Ä‚»‚Ì‘¼‚Ì‘Š·‚¦‚ğs‚Á‚Ä‚­‚¾‚³‚¢B

=head1 –³‹‚·‚éƒvƒ‰ƒOƒ}‚¨‚æ‚Ñƒ‚ƒWƒ…[ƒ‹

  -----------------------------------------------------------
  ˆ—‘O                    ˆ—Œã
  -----------------------------------------------------------
  use strict;               use strict; no strict qw(refs);
  use 5.12.0;               use 5.12.0; no strict qw(refs);
  require utf8;             # require utf8;
  require bytes;            # require bytes;
  require charnames;        # require charnames;
  require I18N::Japanese;   # require I18N::Japanese;
  require I18N::Collate;    # require I18N::Collate;
  require I18N::JExt;       # require I18N::JExt;
  require File::DosGlob;    # require File::DosGlob;
  require Wild;             # require Wild;
  require Wildcard;         # require Wildcard;
  require Japanese;         # require Japanese;
  use utf8;                 # use utf8;
  use bytes;                # use bytes;
  use charnames;            # use charnames;
  use I18N::Japanese;       # use I18N::Japanese;
  use I18N::Collate;        # use I18N::Collate;
  use I18N::JExt;           # use I18N::JExt;
  use File::DosGlob;        # use File::DosGlob;
  use Wild;                 # use Wild;
  use Wildcard;             # use Wildcard;
  use Japanese;             # use Japanese;
  no utf8;                  # no utf8;
  no bytes;                 # no bytes;
  no charnames;             # no charnames;
  no I18N::Japanese;        # no I18N::Japanese;
  no I18N::Collate;         # no I18N::Collate;
  no I18N::JExt;            # no I18N::JExt;
  no File::DosGlob;         # no File::DosGlob;
  no Wild;                  # no Wild;
  no Wildcard;              # no Wildcard;
  no Japanese;              # no Japanese;
  -----------------------------------------------------------

  utf8 ƒvƒ‰ƒOƒ}Abytes ƒvƒ‰ƒOƒ}‚ÍƒRƒƒ“ƒgƒAƒEƒg‚³‚ê‚Ü‚·B“¯ƒtƒ@ƒCƒ‹‚Å’ñ‹Ÿ‚³‚ê‚Ä
  ‚¢‚éƒTƒuƒ‹[ƒ`ƒ“‚Ì‘ã‚í‚è‚Æ‚µ‚Ä Esjis.pm ‚ªƒ_ƒ~[ƒTƒuƒ‹[ƒ`ƒ“‚ğ’ñ‹Ÿ‚µ‚Ü‚·B

=over 2

=item * ƒ_ƒ~[‚ÌƒTƒuƒ‹[ƒ`ƒ“ utf8::upgrade

  $num_octets = utf8::upgrade($string);

  $string ‚ÌƒIƒNƒeƒbƒg”‚ğ•Ô‚µ‚Ü‚·B

=item * ƒ_ƒ~[‚ÌƒTƒuƒ‹[ƒ`ƒ“ utf8::downgrade

  $success = utf8::downgrade($string[, FAIL_OK]);

  ‚±‚ÌƒTƒuƒ‹[ƒ`ƒ“‚Íí‚É^‚Ì’l‚ğ•Ô‚µ‚Ü‚·B

=item * ƒ_ƒ~[‚ÌƒTƒuƒ‹[ƒ`ƒ“ utf8::encode

  utf8::encode($string);

  ‚±‚ÌƒTƒuƒ‹[ƒ`ƒ“‚Í‰½‚à•Ô‚µ‚Ü‚¹‚ñB

=item * ƒ_ƒ~[‚ÌƒTƒuƒ‹[ƒ`ƒ“ utf8::decode

  $success = utf8::decode($string);

  ‚±‚ÌƒTƒuƒ‹[ƒ`ƒ“‚Íí‚É^‚Ì’l‚ğ•Ô‚µ‚Ü‚·B

=item * ƒ_ƒ~[‚ÌƒTƒuƒ‹[ƒ`ƒ“ utf8::is_utf8

  $flag = utf8::is_utf8(STRING);

  ‚±‚ÌƒTƒuƒ‹[ƒ`ƒ“‚Íí‚É‹U‚Ì’l‚ğ•Ô‚µ‚Ü‚·B

=item * ƒ_ƒ~[‚ÌƒTƒuƒ‹[ƒ`ƒ“ utf8::valid

  $flag = utf8::valid(STRING);

  ‚±‚ÌƒTƒuƒ‹[ƒ`ƒ“‚Íí‚É^‚Ì’l‚ğ•Ô‚µ‚Ü‚·B

=item * ƒ_ƒ~[‚ÌƒTƒuƒ‹[ƒ`ƒ“ bytes::chr

  ƒoƒCƒgwŒü‚ÌƒTƒuƒ‹[ƒ`ƒ“ chr ‚Æ‚µ‚ÄÀ‘•‚³‚ê‚Ä‚¢‚Ü‚·B

=item * ƒ_ƒ~[‚ÌƒTƒuƒ‹[ƒ`ƒ“ bytes::index

  ƒoƒCƒgwŒü‚ÌƒTƒuƒ‹[ƒ`ƒ“ index ‚Æ‚µ‚ÄÀ‘•‚³‚ê‚Ä‚¢‚Ü‚·B

=item * ƒ_ƒ~[‚ÌƒTƒuƒ‹[ƒ`ƒ“ bytes::length

  ƒoƒCƒgwŒü‚ÌƒTƒuƒ‹[ƒ`ƒ“ length ‚Æ‚µ‚ÄÀ‘•‚³‚ê‚Ä‚¢‚Ü‚·B

=item * ƒ_ƒ~[‚ÌƒTƒuƒ‹[ƒ`ƒ“ bytes::ord

  ƒoƒCƒgwŒü‚ÌƒTƒuƒ‹[ƒ`ƒ“ ord ‚Æ‚µ‚ÄÀ‘•‚³‚ê‚Ä‚¢‚Ü‚·B

=item * ƒ_ƒ~[‚ÌƒTƒuƒ‹[ƒ`ƒ“ bytes::rindex

  ƒoƒCƒgwŒü‚ÌƒTƒuƒ‹[ƒ`ƒ“ rindex ‚Æ‚µ‚ÄÀ‘•‚³‚ê‚Ä‚¢‚Ü‚·B

=item * ƒ_ƒ~[‚ÌƒTƒuƒ‹[ƒ`ƒ“ bytes::substr

  ƒoƒCƒgwŒü‚ÌƒTƒuƒ‹[ƒ`ƒ“ substr ‚Æ‚µ‚ÄÀ‘•‚³‚ê‚Ä‚¢‚Ü‚·B

=back

=head1 Sjis ƒ\ƒtƒgƒEƒFƒA‚Ìƒ}ƒ‹ƒ`ƒoƒCƒgƒAƒ“ƒJ[ƒŠƒ“ƒOˆ—

=over 2

=item * ƒoƒCƒgˆ—‚Æ•¶šˆ—(CJKV“ú’†ŠØ‰zî•ñˆ—‚æ‚è)

ƒVƒtƒgJIS‚Ì‚æ‚¤‚Èƒ}ƒ‹ƒ`ƒoƒCƒg•¶š‚ğˆ—‚·‚é‚Æ‚«‚Éu•¶š‚Ìíœvu•¶š‚Ì‘}“üvu•¶š‚Ì
ŒŸõv‚ğ“KØ‚És‚¤‚½‚ß‚É‚ÍA1•¶š‚ª1ƒoƒCƒg‚Å•\‚³‚ê‚é‚Æ‚¢‚¤ŒÅ’èŠÏ”O‚ğ”j‚ç‚È‚¯‚ê‚Î‚È‚è
‚Ü‚¹‚ñB

‚±‚Ì‚±‚Æ‚É‚Â‚¢‚Ä

  CJKV“ú’†ŠØ‰zî•ñˆ—(ISBN 4-87311-108-0)
  http://www.oreilly.co.jp/books/4873111080/
  
  P.439 9.6 ƒoƒCƒgˆ—‚Æ•¶šˆ—
    9.6.1 •¶š‚Ìíœ
    9.6.2 •¶š‚Ì‘}“ü
    9.6.3 •¶š‚ÌŒŸõ

‚ÉÚ‚µ‚­‘‚©‚ê‚Ä‚¢‚Ü‚·B
‚Ü‚½‚±‚ê‚ğ Perl ƒvƒƒOƒ‰ƒ~ƒ“ƒO‚Å‰ğŒˆ‚·‚é‚½‚ß‚Ì•û–@‚ª“¯‘‚Ì

  •t˜^W Perl‚ÌƒvƒƒOƒ‰ƒ€—á
    W.8 CJKV•„†‰»‚Ìƒeƒ“ƒvƒŒ[ƒg
      W.8.5 ƒVƒtƒgJIS •„†‰»
    W.9 ƒ}ƒ‹ƒ`ƒoƒCƒgƒAƒ“ƒJ[ƒŠƒ“ƒO
    W.10 ƒ}ƒ‹ƒ`ƒoƒCƒgˆ—

‚ÉŒfÚ‚³‚ê‚Ä‚¢‚Ü‚·B

=item * ‘Oi‚É‚æ‚éV‚½‚È‰Û‘è

ã‹L‚Ìƒ}ƒ‹ƒ`ƒoƒCƒgƒAƒ“ƒJ[ƒŠƒ“ƒO‚Ìƒeƒ“ƒvƒŒ[ƒg‚ğ‰—p‚·‚é‚ÆAƒVƒtƒgJIS‚Ì•¶š—ñ‚ğ³‹K•\Œ»
‚Åˆ—‚Å‚«‚é‚æ‚¤‚É‚È‚è‚Ü‚·‚ªA‚±‚Ì‘Oi‚É‚æ‚Á‚ÄV‚½‚È•Ç‚É“Ë‚«“–‚½‚è‚Ü‚·B

  wcs_abe‚³‚ñ‚Ì•ñ
  Perl ƒtƒ@ƒCƒ‹ˆê‹C“Ç‚İŒã‚Ì³‹K•\Œ»‚É‚Â‚¢‚Ä
  http://okwave.jp/qa/q6674287.html
  
  Perl‚ÅˆÈ‰º‚Ì’Ê‚èAhtmlƒtƒ@ƒCƒ‹‚ğ‘S‚Ä“Ç‚İ‚ñ‚¾Œã‚É³‹K•\Œ»‚ğ“–‚Ä‚½‚¢‚Ì‚Å‚·‚ªA‚¤‚Ü‚­
  ‚¢‚«‚Ü‚¹‚ñB‹°k‚Å‚·‚ªAŒ´ˆö‚ğ‚²‘¶’m‚Ì•û‚¢‚ç‚Á‚µ‚á‚¢‚Ü‚µ‚½‚ç‹³‚¦‚Ä’¸‚¯‚Ü‚¹‚ñ‚Å‚µ‚å‚¤
  ‚©B‚Ü‚½A‘¼‚É—Ç‚¢‰ğŒˆ•û–@‚ª‚ ‚è‚Ü‚µ‚½‚ç‹³‚¦‚Ä’¸‚¯‚é‚ÆK‚¢‚Å‚·B
  ¦PCŠÂ‹«‚Íwindows7, perl5.12‚Å‚·Bî•ñ‚É•s‘«‚ª‚²‚´‚¢‚Ü‚µ‚½‚ç‚²w“E‰º‚³‚¢B
  
  -----
  #--test.html(¶‘¤‚Ì”š‚Ís”)
  000001 <dl>
  000002 <dt>aaa</dt>
  000003 <dd>12345</dd>
  000004 </dl>
  
  i’†—ªj
  
  120001 <dl>
  120002 <dt>bbb</dt>
  120003 <dd>6789</dd>
  120004 </dl>
  
  #--test.pl
  open IN , "test.html";
  local $/ = undef;
  $data = <IN>;
  close IN;
  
  $data =~ s|<dt>bbb</dt>|<dt>ccc</dt>|;
  print "$data\n";
  -----
  
  ƒtƒ@ƒCƒ‹‚Ìn‚ß‚Ì•û‚¾‚Æ“–‚½‚é‚Ì‚ÉAŒã”¼‚Å‚Í“–‚½‚è‚Ü‚¹‚ñB
  ³‹K•\Œ»‚Ì‘ÎÛ‚Æ‚µ‚Ä‘å‚«‚·‚¬‚é‚ñ‚Å‚µ‚å‚¤‚©EEEB
  
  $data =~ s|<dt>aaa</dt>|<dt>ccc</dt>|;
  ‚ÍA“–‚½‚è‚Ü‚·‚ª
  
  $data =~ s|<dt>bbb</dt>|<dt>ccc</dt>|;
  ‚¾‚Æ“–‚½‚è‚Ü‚¹‚ñB
  
  ‚Ç‚¤‚¼‚æ‚ë‚µ‚­‚¨Šè‚¢‚¢‚½‚µ‚Ü‚·B
  
  •â‘«
  ã‹L‚Ì¿–â‚Å‚ÍAŠÖ˜A‚Í”–‚¢‚Æv‚¢‚ ‚¦‚Ä‹LÚ‚µ‚È‚©‚Á‚½‚ñ‚Å‚·‚ªA‚±‚Ìhtmlƒtƒ@ƒCƒ‹‚Í
  SjisƒeƒLƒXƒg‚ÅA‚»‚ê‚ğSjis.pm‚ğg‚Á‚Äˆ—‚ğs‚¨‚¤‚Æ‚µ‚Ä‚¢‚Ü‚·B

‚±‚ÌÇó‚ğÄŒ»‚·‚éÅ¬‚ÌƒR[ƒh‚ğ‘‚­‚Æ

  # ƒXƒNƒŠƒvƒg test2.pl
  for my $n (32767, 32768) {
      $_ = ('A' x $n) . 'B';
      if (/(\G(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?)B/) {
          print "ok - ('A' x $n).'B' =~ /B/\n";
      }
      else {
          print "not ok - ('A' x $n).'B' =~ /B/\n";
      }
  }
  __END__

‚Ì‚æ‚¤‚É‚È‚èAÀsŒ‹‰Ê‚Í

  ok - ('A' x 32767).'B' =~ /B/
  not ok - ('A' x 32768).'B' =~ /B/

‚Æ‚È‚è‚Ü‚·B'A' ‚ª 32,767ŒÂ‘±‚¢‚½Œã‚Ì 'B' ‚ÍŒŸõ‚µ‚ÄŒ©‚Â‚©‚é‚Ì‚ÉA32,768ŒÂ‘±‚¢‚½Œã‚Ì
'B' ‚ÍŒŸõ‚µ‚Ä‚àŒ©‚Â‚©‚ç‚È‚¢‚Ì‚Å‚·B

=item * Perl‚Ì³‹K•\Œ»‚Ì—Êw’èq‚ÌŒÀŠE

‚±‚ÌŒ´ˆö‚Í perl ƒCƒ“ƒ^ƒvƒŠƒ^‚É‚ ‚è‚Ü‚·B

  —Êw’èq
  http://perldoc.jp/docs/perl/5.14.1/perlre.pod
  
  ˆÈ‰º‚Ì•W€“I‚È—Êw’èq‚ğg‚¦‚Ü‚·:
    *           Match 0 or more times
    +           Match 1 or more times
    ?           Match 1 or 0 times
    {n}         Match exactly n times
    {n,}        Match at least n times
    {n,m}       Match at least n but not more than m times
  
  (‘O—ª) "*" —Êw’èq‚Í {0,} ‚ÆA"+" —Êw’èq‚Í {1,} ‚ÆA "?" —Êw’èq‚Í {0,1} ‚Æ“™‰¿
  ‚Å‚·B n ‹y‚Ñ m ‚Í perl ‚ğƒrƒ‹ƒh‚µ‚½‚Æ‚«‚É’è‹`‚µ‚½Šù’è‚Ì§ŒÀ‚æ‚è¬‚³‚È”ñ•‰®”‰ñ‚É
  §ŒÀ‚³‚ê‚Ü‚·B ‚±‚ê‚Í‘å’ï‚Ìƒvƒ‰ƒbƒgƒtƒH[ƒ€‚Å‚Í 32766 ‰ñ‚É‚È‚Á‚Ä‚¢‚Ü‚·B ÀÛ‚Ì§ŒÀ
  ‚ÍŸ‚Ì‚æ‚¤‚ÈƒR[ƒh‚ğÀs‚·‚é‚Æ¶¬‚³‚ê‚éƒGƒ‰[ƒƒbƒZ[ƒW‚Å Œ©‚é‚±‚Æ‚ª‚Å‚«‚Ü‚·:
  
    $_ **= $_ , / {$_} / for 2 .. 42;

=item * •Ç‚ğæ‚è‰z‚¦‚é‚É‚Í

‚±‚ÌŒÀŠE‚ğ‰ñ”ğ‚·‚é•û–@‚Æ‚µ‚ÄA’åœA’ms‚³‚ñ‚ªlˆÄ‚µ‚½ˆÈ‰º‚Ì•û–@‚ª‚ ‚è‚Ü‚·B

  2002-01-17: ’·‚¢•¶š—ñ‚É‘Î‚·‚é³‹K•\Œ»ŒŸõ
  http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm#long
  
  # ˆê‰ñ‚¾‚¯ƒ}ƒbƒ`
  my $Apad = '(?:(?:\A|[\x00-\x80\xA0-\xDF])(?:[\x81-\x9F\xE0-\xFC]{2})*?)';
  my $str1 = ('‚ ' x 100000) . 'ƒAƒCABC';
  $str1 =~ /$Apad([A-Z]+)/o;
  print "$1\n"; # "ABC" ‚Æ•\¦‚³‚ê‚éB
  
  # ƒOƒ[ƒoƒ‹ƒ}ƒbƒ`
  my $Gpad = '(?:(?:\G|[\x00-\x80\xA0-\xDF])(?:[\x81-\x9F\xE0-\xFC]{2})*?)';
  my $str2 = '‚ ' x 100000 . 'ƒAƒCABC'. '‚¨' x 100000 . 'XYZ';
  my @array = $str2 =~ /$Gpad([A-Z]+)/go;
  print "@array\n"; # "ABC XYZ" ‚Æ•\¦‚³‚ê‚éB

\A ‚Æ \G ‚ªg‚¢•ª‚¯‚ç‚ê‚Ä‚¢‚é‚Ì‚Å‚·‚ªA\G ‚ÍÅ‰‚Ég‚í‚ê‚é‚Æ‚«‚Í \A ‚Æ“¯‚¶‚æ‚¤‚É‹@”\
‚·‚é‚Ì‚ÅAÀÛ‚É‚Í \G ‚Ì•û–@‚Ğ‚Æ‚Â‚¾‚¯‚Å‚æ‚¢‚Å‚µ‚å‚¤B

  ³‹K•\Œ»‚ÌƒNƒH[ƒg•—‚Ì‰‰Zq
  http://perldoc.jp/docs/perl/5.16.1/perlop.pod#Regexp32Quote-Like32Operators
  
  \G assertion (\G ƒAƒT[ƒg)
  
  (‘O—ª)ˆÈ‘O‚É /g ƒ}ƒbƒ`‚ğ“K—p‚µ‚Ä‚¢‚È‚¢ƒ^[ƒQƒbƒg•¶š—ñ‚É‘Î‚µ‚Ä /g ‚È‚µ‚Å \G ‚ğg‚¤‚ÆA
  •¶š—ñ‚Ìæ“ª‚Éƒ}ƒbƒ`‚·‚é \A ƒAƒT[ƒg‚ğg‚¤‚Ì‚Æ “¯‚¶‚±‚Æ‚É‚È‚è‚Ü‚·B(Œã—ª)

=item * ‚ ‚Æ­‚µc‚Á‚Ä‚¢‚é–â‘è‚Ö‚Ì‘Î‰

ã‹L‚Ìƒy[ƒW‚É‚Í

  ˆêƒoƒCƒg•¶š‚©A“ñƒoƒCƒg•¶š‚Ì‚¤‚¿‘æ“ñƒoƒCƒg‚ª [\x40-\x7E\x80\xA0-\xDF] ‚ÅI‚í‚é‚à‚Ì
  ‚ªA­‚È‚­‚Æ‚à“K“–‚ÈŠÔŠu‚ÅiãŒÀ‚É’B‚µ‚È‚¢‚¤‚¿‚ÉjoŒ»‚·‚ê‚ÎAƒGƒ‰[‚É‚È‚ç‚¸‚Éˆ—‚·
  ‚é‚±‚Æ‚ª‚Å‚«‚Ü‚·BiŠm—¦“I‚È–â‘è‚Å‚·‚Ì‚ÅAŠ®‘S‚Å‚Í‚ ‚è‚Ü‚¹‚ñBj

‚Æ‚ ‚èA‘SƒoƒCƒg‚ª US-ASCII ‚Å\¬‚³‚ê‚Ä‚¢‚éƒf[ƒ^‚Ìê‡‚Í‚¤‚Ü‚­‚¢‚«‚Ü‚¹‚ñB
‚»‚Ì‚æ‚¤‚Èê‡‚ÍƒAƒ“ƒJ[ƒŠƒ“ƒO‚ğ

  qr{\G.*?}s

‚É‚·‚é‚±‚Æ‚Å‘Î‰‚µ‚Ü‚·B

=item * ‚Ü‚Æ‚ß‚é‚Æ

ˆÈã‚Ì‘S‚Ä‚ğl—¶‚µ‚ÄAÄ‚Ñƒ}ƒ‹ƒ`ƒoƒCƒgƒAƒ“ƒJ[ƒŠƒ“ƒO‚ğl‚¦‚é‚ÆˆÈ‰º‚Ì‚æ‚¤‚É‚È‚è‚Ü‚·B

  qr{\G(?(?=.{0,32766}\z)(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?|(?(?=[\x00-\x80\xA0-\xDF\xFD-\xFF]+\z).*?|(?:.*?[\x00-\x80\xA0-\xDF\xFD-\xFF](?:[^\x00-\x80\xA0-\xDF\xFD-\xFF]{2})*?)))}oxms
  
  ‰ğà
  
  qr{\G  # \G ƒAƒT[ƒg‚Æ \A ƒAƒT[ƒg‚ğŒ“‚Ë‚é
       (?(?=.{0,32766}\z)  # ‘ÎÛ•¶š—ñ‚ª 32,766 ƒIƒNƒeƒbƒgˆÈ‰º‚Å‚ ‚ê‚Î
                         (?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?  # ‚±‚ê‚ªƒ}ƒ‹ƒ`ƒoƒCƒgƒAƒ“ƒJ[ƒŠƒ“ƒO‚Ég‚í‚ê‚é
                                                                                    |  # 32,767 ƒIƒNƒeƒbƒgˆÈã‚ÅA‚È‚¨‚©‚Â
                                                                                     (?(?=[\x00-\x80\xA0-\xDF\xFD-\xFF]+\z)  # ‘SƒoƒCƒg‚ªƒVƒ“ƒOƒ‹ƒoƒCƒgƒR[ƒhƒZƒbƒg‚Å\¬‚³‚ê‚Ä‚¢‚é‚È‚ç‚Î
                                                                                                                           .*?  # ‚±‚ê‚ªƒAƒ“ƒJ[ƒŠƒ“ƒO‚Ég‚í‚ê‚é
                                                                                                                              |  # ‚»‚êˆÈŠO‚Ìê‡‚Í
                                                                                                                               (?:.*?[\x00-\x80\xA0-\xDF\xFD-\xFF](?:[^\x00-\x80\xA0-\xDF\xFD-\xFF]{2})*?)  # ‚±‚ê‚ªƒ}ƒ‹ƒ`ƒoƒCƒgƒAƒ“ƒJ[ƒŠƒ“ƒO‚Ég‚í‚ê‚é
                                                                                                                                                                                                          ))}oxms

MSWin32 ŠÂ‹«‚Ì ActivePerl ‚Ìƒo[ƒWƒ‡ƒ“ 5.6 ˆÈ~(Perl5.10.0‚àŠÜ‚İ‚Ü‚·)A‚ ‚é‚¢‚Í‚»‚Ì‘¼
‚Ì Perl ‚Ìƒo[ƒWƒ‡ƒ“ 5.10.1 ˆÈ~‚Ìê‡‚É‚±‚Ìƒ}ƒ‹ƒ`ƒoƒCƒgƒAƒ“ƒJ[ƒŠƒ“ƒO‚ªg‚í‚ê‚Ü‚·B
‚»‚êˆÈŠO‚Ìê‡‚ÍA‚±‚ê‚Ü‚Å‚Ç‚¨‚è

  qr{\G(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?}oxms

‚ªg‚í‚ê‚Ü‚·B

=back

=head1 ŠÂ‹«•Ï”

 ‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚Í”r‘¼§Œä‚É flock ŠÖ”‚ğg—p‚µ‚Ü‚·Bƒtƒ@ƒCƒ‹‚ª“Çæ‚è‰Â”\‚É‚È‚é‚Ü‚Å
 ‚ ‚é‚¢‚Í‘‚İ‰Â”\‚É‚È‚é‚Ü‚ÅƒvƒƒOƒ‰ƒ€‚ÌÀs‚ÍƒuƒƒbƒN‚³‚ê‚Ü‚·B
 ‚±‚ê‚ğŠÂ‹«•Ï” SJIS_NONBLOCK ‚ğ’è‹`‚·‚é‚±‚Æ‚ÅƒuƒƒbƒN‚³‚¹‚È‚¢‚æ‚¤‚É‚·‚é‚±‚Æ‚ª‚Å‚«‚Ü
 ‚·B

 —á:

   SET SJIS_NONBLOCK=1

 (’l '1' ‚ÍˆÓ–¡‚ğ‚½‚È‚¢‚Ì‚Å‰½‚Å‚à\‚¢‚Ü‚¹‚ñ)

=head1 MacJPerl ‚Ì‹@”\

 }‘‚Æ Web ã‚Ìî•ñ‚ğQl‚É‚µ‚Ä MacOS ‚É‘Î‰‚µ‚Ä‚İ‚Ü‚µ‚½BÀ‹@‚ª‚È‚¢‚½‚ß‚ÉƒeƒXƒg‚ª
 ‚Å‚«‚Ä‚¢‚Ü‚¹‚ñB“®ì•ñAƒoƒO•ñ“™’¸‚¯‚é‚Æ‚Æ‚Ä‚à‚ ‚è‚ª‚½‚¢‚Å‚·B
 
 Às‚É‚ÍˆÈ‰º‚Ìƒ\ƒtƒgƒEƒFƒA‚ª•K—v‚Å‚·B
 1. MacPerl ƒ‚ƒWƒ…[ƒ‹
 2. Mac::Files ƒ‚ƒWƒ…[ƒ‹
 3. ToolServer
 4. MPW(Macintosh Programmer's Workshop)

=head1 ƒoƒO‚Æ§ŒÀ–€‚ÆŒİŠ·«

‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚ÍA„‚Ì”\—Í‚ğs‚­‚µ‚ÄAƒeƒXƒg‚µ‚ÄÆ‡‚µ‚Ü‚µ‚½B‚»‚¤‚Å‚ ‚Á‚Ä‚àA‘½‚­
‚Ì³‹K•\Œ»‚ğŠÜ‚Şƒ\ƒtƒgƒEƒFƒA‚ÍA‚ ‚é’ö“x‚ÌƒoƒO‚ğ”‚¤‚±‚Æ‚ğ‚Ü‚Ê‚ª‚ê‚é‚±‚Æ‚ª‚Å‚«‚Ü‚¹‚ñB
‚æ‚Á‚ÄA‚à‚µ‚ ‚È‚½‚ÌƒXƒNƒŠƒvƒg‚Å‚Í‚È‚­‚ÄASjisƒ\ƒtƒgƒEƒFƒA‚ÌƒoƒO‚ğŒ©‚Â‚¯‚½‚Ì‚È‚çA
Å¬ŒÀ‚ÌƒeƒXƒgƒR[ƒh‚ÉØ‚è‹l‚ß‚½ã‚ÅAìÒ‚Ü‚Å•ñ‚µ‚Ä’¸‚¯‚é‚Æ•‚©‚è‚Ü‚·B

‚ ‚é‚¢‚Í‚à‚Á‚Æ—L—p‚Èƒc[ƒ‹‚É‚·‚é‚½‚ß‚Ì‚æ‚¢ƒAƒCƒfƒBƒA‚ª‚ ‚Á‚½‚È‚çAŠF‚Æ‹¤—L‚µ‚Ä’¸‚¯‚é
‚Æ‚ ‚è‚ª‚½‚¢‚Å‚·B

=over 2

=item * format

    ƒIƒŠƒWƒiƒ‹‚Ì Perl ‚Æ‹@”\‚ª“¯‚¶‚Å‚·(ShiftJIS ‚É‘Î‰‚µ‚Ä‚¢‚Ü‚¹‚ñ)B

=item * ³‹K•\Œ»‚ÌƒNƒƒCƒXƒ^

    ³‹K•\Œ»‚ÌƒNƒƒCƒXƒ^ (?s) ‚Æ (?i) ‚Í“––ÊAÀ‘•‚³‚ê‚È‚¢‚Å‚µ‚å‚¤B
    ƒNƒƒCƒXƒ^ (?s) ‚Í /s Cüq‚Æ .(ƒhƒbƒg) ‚Æ \N ‚Å‘ã—p‚Å‚«‚Ü‚·B
    ƒNƒƒCƒXƒ^ (?i) ‚Í \F ` \E ‚ÅH•v‚µ‚Ä‹Lq‚µ‚È‚¢‚Æ‚¢‚¯‚Ü‚¹‚ñB

=item * chdir

    perl5.005 ‚Å‚ ‚ê‚Îí‚É chdir() ‚ğ³í‚ÉÀs‚Å‚«‚Ü‚·B

    DOS•—‚ÌƒVƒXƒeƒ€($^O ‚Ì’l‚ª MSWin32, NetWare, symbian, dos ‚Ì‚¢‚¸‚ê‚©‚Ì
    ê‡)‚ÍAˆÈ‰º‚Ì§ŒÀ–€‚ª‚ ‚è‚Ü‚·B

    perl5.006 ‚Ü‚½‚Í perl5.00800 ‚Ìê‡‚Å•¶šƒR[ƒh(0x5C)‚ÅI‚í‚éƒfƒBƒŒƒNƒgƒŠ
    ‚ğw’è‚µ‚ÄÀs‚·‚é‚É‚Í jacode.pl ƒ‰ƒCƒuƒ‰ƒŠ‚ª•K—v‚Å‚·B

    perl5.008001ˆÈ~, perl5.010, perl5.012, perl5.014, perl5.016, perl5.018 ‚É‚Ä
    •¶šƒR[ƒh(0x5C)‚ÅI‚í‚éƒfƒBƒŒƒNƒgƒŠ‚ğw’è‚µ‚ÄÀs‚·‚é‚Æ‚«ACOMMAND.COM ‚ ‚é
    ‚¢‚Í cmd.exe ‚É‚æ‚Á‚Ä 8dot3name Œ`®‚Ì’Z‚¢–¼‘O‚ğæ“¾‚Å‚«‚½ê‡‚Í chdir() ‚ª
    ¬Œ÷‚µ‚Ü‚·B‚½‚¾‚µAchdir() Œã‚ÌƒJƒŒƒ“ƒgƒfƒBƒŒƒNƒgƒŠ‚ÌÅI‚ÌƒTƒuƒfƒBƒŒƒNƒgƒŠ
    ‚Í 8dot3name Œ`®‚Ì’Z‚¢–¼‘O‚É‚È‚è‚Ü‚·B

    QlƒŠƒ“ƒN
    Bug #81839
    chdir does not work with chr(0x5C) at end of path
    http://bugs.activestate.com/show_bug.cgi?id=81839

=item * ¶•Ó’l‚Æ‚µ‚Ä‚Ì Sjis::substr

    ƒo[ƒWƒ‡ƒ“ 5.14 –¢–‚Ì Perl ‚Ìê‡ASjis::substr ‚Í CORE::substr ‚Æ‚ÍˆÙ‚È‚èA
    ¶•Ó’l‚Æ‚µ‚Äˆµ‚¤‚±‚Æ‚ª‚Å‚«‚Ü‚¹‚ñB•¶š—ñ‚Ìˆê•”•ª‚ğ•ÏX‚µ‚½‚¢ê‡‚ÍASjis::substr
    ‚Ì4”Ô–Ú‚Ìˆø”‚Æ‚µ‚Ä’uŠ·‚¦Œã‚Ì•¶š—ñ‚ğw’è‚µ‚Ü‚·B
    
    Sjis::substr($string, 13, 4, "JPerl");

=item * “Áê•Ï” $` ‚Æ $& ‚ğg‚¤‚Æ‚«‚Í /( ³‹K•\Œ»‘S‘Ì‚ğƒLƒƒƒvƒ`ƒƒ )/ ‚·‚é•K—v‚ª‚ ‚è‚Ü‚·

    ‚È‚º‚È‚ç‚ÎAˆÈ‰º‚Ì‚æ‚¤‚É•ÏŠ·‚³‚êA$1 ‚ğ—˜—p‚·‚é‚½‚ß‚Å‚·B
 
    -------------------------------------------------------------------------------------------
    ˆ—‘O          ˆ—Œã               Às‚³‚ê‚é“à—e
    -------------------------------------------------------------------------------------------
    $`              Esjis::PREMATCH()    CORE::substr($&,0,CORE::length($&)-CORE::length($1))
    ${`}            Esjis::PREMATCH()    CORE::substr($&,0,CORE::length($&)-CORE::length($1))
    $PREMATCH       Esjis::PREMATCH()    CORE::substr($&,0,CORE::length($&)-CORE::length($1))
    ${^PREMATCH}    Esjis::PREMATCH()    CORE::substr($&,0,CORE::length($&)-CORE::length($1))
    $&              Esjis::MATCH()       $1
    ${&}            Esjis::MATCH()       $1
    $MATCH          Esjis::MATCH()       $1
    ${^MATCH}       Esjis::MATCH()       $1
    $'              $'                   $'
    ${'}            ${'}                 $'
    $POSTMATCH      Esjis::POSTMATCH()   $'
    ${^POSTMATCH}   Esjis::POSTMATCH()   $'
    -------------------------------------------------------------------------------------------

=item * ³‹K•\Œ»‚ğ“K—p‚·‚é•¶š—ñ‚Ì’·‚³‚ÌãŒÀ

    ‘Oq‚Ì‚Æ‚¨‚èAƒGƒXƒP[ƒvŒã‚Ì³‹K•\Œ»‚É‚Íƒ}ƒ‹ƒ`ƒoƒCƒgƒAƒ“ƒJ[ƒŠƒ“ƒOˆ—‚Ì‚½
    ‚ß‚Ì‹Lq ${Esjis::anchor} ‚ª’Ç‰Á‚³‚ê‚Ü‚·‚ªA‚»‚Ì’†‚ÉŠÜ‚Ü‚ê‚é \G ‚Ì§–ñ‚ğó
    ‚¯‚Ü‚·BMSWin32”Å‚ÌActivePerl5.6ˆÈ~(5.10.0‚àŠÜ‚İ‚Ü‚·)A‚ ‚é‚¢‚Í‘¼‚ÌPerl‚Ì
    ê‡‚Í5.10.1ˆÈ~‚Å‚È‚¯‚ê‚ÎA•¶š—ñ‚Ì32,767ƒoƒCƒg‚ğ’´‚¦‚éˆÊ’u‚Åƒ}ƒbƒ`‚³‚¹‚é
    ‚±‚Æ‚ª‚Å‚«‚Ü‚¹‚ñB
 
    QlƒŠƒ“ƒN
    
    In 5.10.0, the * quantifier in patterns was sometimes treated as {0,32767}
    http://perldoc.perl.org/perl5101delta.html
    
    [perl #116379] \G can't treat over 32767 octet
    http://www.nntp.perl.org/group/perl.perl5.porters/2013/01/msg197320.html
    
    perlre - Perl regular expressions
    http://perldoc.perl.org/perlre.html
    
    perlre length limit
    http://stackoverflow.com/questions/4592467/perlre-length-limit

=item * “WŠJ‚·‚é‚Æ‹ó‚É‚È‚é³‹K•\Œ»’†‚Ì•Ï”

    ‹ó‚ÌƒŠƒeƒ‰ƒ‹•¶š—ñ‚Æ‚ÍˆÙ‚È‚èA³‹K•\Œ»’†‚É“WŠJ‚³‚ê‚½•Ï”‚Ì’l‚ª‹ó•¶š—ñ‚Å‚ ‚Á
    ‚Ä‚àA’¼‘O‚É¬Œ÷‚µ‚½³‹K•\Œ»‚Íg‚í‚ê‚Ü‚¹‚ñB

=item * ??, m?? “à‚Ì§ŒÀ

    ?? ‚Ü‚½‚Í m?? ‚Ì“à•”‚Åƒ}ƒ‹ƒ`ƒoƒCƒg•¶š‚É‘Î‚µ‚Ä {n,m} {n,} {n} * + ‚È‚Ç‚Ì—Êw
    ’èq‚ğ•t‚¯‚½‚¢ê‡‚ÍA‚»‚Ì•¶š‚ğ ( ) ‚ÅˆÍ‚ñ‚Å‹Lq‚·‚é•K—v‚ª‚ ‚è‚Ü‚·B‚»‚ÌŒ‹‰ÊA
    $1,$2,$3,... ‚Í‚¸‚ê‚Ä‚µ‚Ü‚¤‚½‚ßA‚»‚Ì‹Lq‚ğC³‚·‚é•K—v‚ª‚ ‚è‚Ü‚·B
    ‚È‚¨ ?? ‚Ü‚½‚Í m?? ‚ÍƒfƒŠƒ~ƒ^‚ª ? ‚È‚Ì‚ÅA(?: ) ‚â—Êw’èq‚Ì ? {n,m}? {n,}?
    {n}? ‚Í‹Lq‚·‚é‚±‚Æ‚ª‚Å‚«‚Ü‚¹‚ñB

=item * Œã“Ç‚İŒ¾–¾

    Œã“Ç‚İŒ¾–¾(—á‚¦‚Î (?<=[A-Z]))‚ª’¼‘O‚Ì“ñƒoƒCƒg•¶š‚Ì‘æ“ñƒoƒCƒg‚ÉŒë‚Á‚Äƒ}ƒbƒ`
    ‚·‚é‚±‚Æ‚É‚Í‘Îˆ‚³‚ê‚Ä‚¢‚Ü‚¹‚ñB
    —á‚¦‚ÎA'ƒAƒCƒE' =~ /(?<=[A-Z])([ƒAƒCƒE])/ ‚ğÀs‚·‚é‚Æƒ}ƒbƒ`‚µ‚Ä $1 ‚Í 'ƒC'
    ‚É‚È‚è‚Ü‚·‚ªA‚±‚ê‚Í³‚µ‚­‚ ‚è‚Ü‚¹‚ñB

=item * ³‹K•\Œ»‚ÌCüq /a /d /l /u

    ‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚ÌƒRƒ“ƒZƒvƒg‚Í•¡”‚Ì•„†‰»•û®‚ğ“¯‚É—˜—p‚µ‚È‚¢‚æ‚¤‚É‚·‚é
    ‚±‚Æ‚Å‚·B]‚Á‚ÄCüq /a /d /l /u ‚ğƒTƒ|[ƒg‚µ‚Ü‚¹‚ñB
    \d ‚ÍÌ‚à¡‚à [0-9] ‚ğˆÓ–¡‚µ‚Ü‚·B

=item * –¼‘O•t‚«•¶š

    —á‚¦‚ÎA\N{GREEK SMALL LETTER EPSILON}A\N{greek:epsilon}A\N{epsilon} ‚Ì‚æ‚¤
    ‚È–¼‘O•t‚«•¶š‚Í—˜—p‚Å‚«‚Ü‚¹‚ñB

=item * ³‹K•\Œ»‚ÌUnicode‘®«

    ³‹K•\Œ»‚ÌUnicode‘®«‚Í—˜—p‚·‚é‚±‚Æ‚ª‚Å‚«‚Ü‚¹‚ñBPerl5.18‚Å’Ç‰Á‚³‚ê‚½ (?[])
    \•¶‚à—˜—p‚Å‚«‚Ü‚¹‚ñB‚¢‚Ü‚Ì‚Æ‚±‚ë‚»‚ê‚ç‚ğƒTƒ|[ƒg‚·‚é—\’è‚Í‚ ‚è‚Ü‚¹‚ñB

=item * –³‹‚³‚ê‚é ${^WIN32_SLOPPY_STAT} ‚Ì’l

    Microsoft Windows ã‚Å chr(0x5c) ‚ÅI‚í‚éƒpƒX‚ğw’è‚µ‚Äƒtƒ@ƒCƒ‹ƒeƒXƒg(‰‰Zq)A
    ‚ ‚é‚¢‚Í lstat()Astat() ‚ğÀs‚·‚é‚ÆA${^WIN32_SLOPPY_STAT} ‚É^‚Ì’l‚ªİ’è‚³‚ê
    ‚Ä‚¢‚éê‡‚Å‚à‚»‚Ìƒtƒ@ƒCƒ‹‚ğƒI[ƒvƒ“‚µ‚Ä’²‚×‚Ü‚·B

=item * eval "string"

    eval ‚Ì "string" ‚ğƒGƒXƒP[ƒv‚·‚é‹@”\‚Í‚Ü‚¾À‘•‚³‚ê‚Ä‚¢‚Ü‚¹‚ñB¡Œã‚Ìƒo[ƒWƒ‡ƒ“
    ‚ÅƒTƒ|[ƒg‚³‚ê‚é‚Å‚µ‚å‚¤B

=back

=head1 ìÒ

‚±‚ÌƒvƒƒWƒFƒNƒg‚Í ˆî—t € ina@cpan.org ‚É‚æ‚Á‚Än‚Ü‚è‚Ü‚µ‚½B

=head1 ’˜ìŒ 

‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚ÍƒtƒŠ[ƒ\ƒtƒgƒEƒFƒA‚Å‚·B‚ ‚È‚½‚Í Perl ‚Æ“¯‚¶ƒ‰ƒCƒZƒ“ƒX
‚ÌŒ³‚ÅÄ”z•z‹y‚Ñ•ÏX‚ğs‚¤‚±‚Æ‚ªo—ˆ‚Ü‚·BÚ‚µ‚­‚Í perlartistic ‚ğQÆ‚µ‚Ä
‚­‚¾‚³‚¢B

‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚Í—L—p‚Å‚ ‚é‚±‚Æ‚ğŠè‚Á‚Ä”Ğ•z‚³‚ê‚Ü‚·‚ªA*‘S‚­‚Ì–³•ÛØ* 
‚Å‚·B¤‹Æ‰Â”\«‚Ì•ÛØ‚â“Á’è‚Ì–Ú“I‚Ö‚Ì“K‡«‚ÍAŒ¾ŠO‚É¦‚³‚ê‚½‚à‚Ì‚àŠÜ
‚ß‘S‚­‘¶İ‚µ‚Ü‚¹‚ñB

=head1 ƒVƒtƒgJISƒR[ƒh‚Æ‚Í(“ú–{Œêî•ñˆ—‚æ‚è)

ƒVƒtƒgJIS•„†‰»‚ÍAƒ}ƒCƒNƒƒ\ƒtƒgĞ‚É‚æ‚èŠJ”­‚³‚ê‚½A“ú–{‚ÌƒRƒ“ƒsƒ…[ƒ^‚ÅÅ‚à‚æ‚­
—p‚¢‚ç‚ê‚é•„†‰»•û®‚Å‚·BƒVƒtƒgJIS‚ÍuMSŠ¿š(MicrosoftŠ¿š)vA‚Ü‚½‚ÍuSJIS
(ShiftJIS‚Ì—ªÌ)v‚Æ‚àŒÄ‚Î‚ê‚Ä‚¢‚Ü‚·B

‚©‚Â‚Ä“ú–{‚ÌƒRƒ“ƒsƒ…[ƒ^ƒ†[ƒU‚Í”¼Šp•Ğ‰¼–¼‚µ‚©g‚¦‚È‚©‚Á‚½‚½‚ßA]—ˆ•û®‚Æ‚ÌŒİŠ·«
‚ğˆÛ‚·‚é–Ú“I‚ÅƒVƒtƒgJIS‚ªŠJ”­‚³‚ê‚Ü‚µ‚½B

ƒVƒtƒgJIS‚É‚¨‚¢‚Ä‚ÍA16i”‚Å 0x81`0x9F ‚Ü‚½‚Í 0xE0`0xEF ‚Ì”ÍˆÍ‚ğ‚ÂƒIƒNƒeƒbƒg
‚É‚æ‚Á‚Ä1•¶š2ƒIƒNƒeƒbƒgƒ‚[ƒh‚ªŠJn‚µ‚Ü‚·B‚»‚µ‚Ä‚±‚ÌƒIƒNƒeƒbƒg‚ÍA‚»‚±‚©‚çn‚Ü‚é
2ƒIƒNƒeƒbƒg•¶š‚Ì‘æ1ƒIƒNƒeƒbƒg‚Æ‚µ‚Äˆ—‚³‚ê‚Ü‚·B‘±‚­(‘æ2)ƒIƒNƒeƒbƒg‚ÍA16i”‚Å
0x40`0x7E ‚Ü‚½‚Í 0x80`0xFC ‚Ì”ÍˆÍ‚ğ‚Â’l‚Å‚È‚¯‚ê‚Î‚È‚è‚Ü‚¹‚ñB‘æ1ƒIƒNƒeƒbƒg‚Ì
”ÍˆÍ‚ÍŠg’£ASCII•¶šƒZƒbƒgA‚Â‚Ü‚èÅãˆÊƒrƒbƒg‚ªƒIƒ“‚É‚È‚Á‚½8ƒrƒbƒg•¶šƒZƒbƒg‚Ì”ÍˆÍ
‚ÉŠ®‘S‚Éû‚Ü‚Á‚Ä‚¢‚é‚±‚Æ‚É’–Ú‚µ‚Ä‚­‚¾‚³‚¢B‚Ü‚½ƒVƒtƒgJIS‚ÍA”¼Šp•Ğ‰¼–¼‚ÆASCII/JIS
ƒ[ƒ}š‚àƒTƒ|[ƒg‚µ‚Ä‚¢‚Ü‚·B

ˆê•”‚ÌƒVƒtƒgJISd—l(“Á‚Éƒ[ƒJd—l)‚Å‚ÍAƒ†[ƒU’è‹`•¶š‚ÌƒR[ƒh—Ìˆæ‚âAê‡‚É‚æ‚Á‚Ä
‚Í”¼Šp•Ğ‰¼–¼‹ó”’•¶š‚ÌƒR[ƒhˆÊ’u‚à’è‹`‚³‚ê‚Ä‚¢‚Ü‚·B‚à‚µ–{Ši“I‚Èî•ñŒğŠ·‚ğ–]‚Ş‚Ì‚Å
‚ ‚ê‚ÎA‚±‚Ì‚æ‚¤‚ÈƒR[ƒh—Ìˆæ‚âƒR[ƒhˆÊ’u‚Í•s“s‡‚Å‚·B‚Æ‚¢‚¤‚Ì‚àA‚±‚Ì‚æ‚¤‚È•¶š‚ÍA
•Ê‚Ì“ú–{Œê•„†‰»•û®(‚Â‚Ü‚èJIS‚ÆEUC)‚ÌƒR[ƒhˆÊ’u‚É•ÏŠ·‚Å‚«‚È‚¢‚æ‚¤‚É•„†‰»‚³‚ê‚Ä‚µ
‚Ü‚¤‚©‚ç‚Å‚·B

=head1 ƒEƒBƒLƒyƒfƒBƒA‚É‚æ‚éuShift_JISv‚Ì’è‹`

Shift_JIS (2011.10.27 00:00:00 JST). In Wikipedia: The Free Encyclopedia.
Retrieved from
http://ja.wikipedia.org/wiki/Shift_JIS

o“T: ƒtƒŠ[•S‰È–“TwƒEƒBƒLƒyƒfƒBƒA(Wikipedia)x

Shift_JISiƒVƒtƒgƒWƒXj‚ÍAŒ»İ‘½‚­‚Ìƒpƒ\ƒRƒ“ã‚Ìƒtƒ@ƒCƒ‹“à‚Å“ú–{Œê‚ğ•\‚·‚½‚ß
‚Ég‚í‚ê‚Ä‚¢‚é•¶šƒR[ƒh‚Å‚ ‚éB‚©‚Â‚Ä‚Íƒxƒ“ƒ_[‚É‚æ‚é“Æ©Šg’£‚ğŠÜ‚Ş•¶šƒR[ƒh
ŒQ‚É‘Î‚·‚éB–†‚È–¼Ì‚Å‚ ‚Á‚½‚ªAŒ»İ‚Í•W€‰»•¶‘JIS X 0208‚Ì•‘®‘1‚Å‹K’è‚³‚ê
‚Ä‚¢‚éBuShift_JISv‚ÍIANA‚É‚¨‚¯‚é“o˜^–¼‚Å‚ ‚éB

Shift_JIS‚Ì’a¶

1980”N‘ãAƒpƒ\ƒRƒ“—p16ƒrƒbƒgCPU‚Ì•‹y‚à‚ ‚¢‚Ü‚Á‚ÄAŠ¿š‚â‰¼–¼‚ğ•\¦‰Â”\‚Èƒn[
ƒhƒEƒFƒA‚ğ”õ‚¦‚½ƒpƒ\ƒRƒ“‚ª‘±X‚Æ”­”„‚³‚ê‚½B‚»‚Ì‚½‚ßA“ú–{Œê‚ğ•\Œ»‚Å‚«‚é•¶š
•„†‰»•û®‚ª–Íõ‚³‚ê‚Ä‚¢‚½iShift_JIS‚ğuƒVƒtƒgJISƒR[ƒhv‚ÆŒÄ‚ñ‚Å•„†‰»•¶š
W‡i•¶šƒR[ƒhj‚Ì–Ê‚Ì‚İ‚ğl‚¦‚é‹c˜_‚ª‚ ‚é‚ªA‚±‚±‚Å‚Í•¶š•„†‰»•û®‚Ì–Ê‚É
Å“_‚ğ“–‚Ä‚éjB

•¶š•„†‰»•û®Shift_JIS‚ÌİŒvÒ‚ç‚ÍAæs‚µ‚Ä‚æ‚­—˜—p‚³‚ê‚Ä‚¢‚½JIS C 6220
iŒ»İ‚ÌJIS X 0201j‚Ì8ƒrƒbƒg•„†iˆÈ‰ºu‰p”šE”¼ŠpƒJƒivj‚ÆAJIS C 6226
iŒ»İ‚ÌJIS X 0208AˆÈ‰ºuŠ¿švj‚Ì—¼•¶šW‡‚ğ•\Œ»‚µ‚æ‚¤‚Æ‚µ‚½B‚Ü‚½Aƒtƒ@
ƒCƒ‹‚Ì‘å‚«‚³‚âˆ—ŠÔ‚Ì’Zk‚ğ}‚é‚½‚ßAƒGƒXƒP[ƒvƒV[ƒPƒ“ƒX‚È‚µ‚Å¬İ‰Â”\‚É
‚·‚é‚±‚Æ‚ğŠé}‚µ‚½B

JIS C 6220‚ÆJIS C 6226‚Ì2‚Â‚Í‚Æ‚à‚ÉAISO 2022‚Å•¶šW‡‚ğØ‚è‘Ö‚¦‚Ä—˜—p‚·‚é
İŒv‚ª‚ ‚Á‚½BISO 2022‚ÉŠî‚Ã‚­•¶š•„†‰»•û®‚Å‚ÍA‰p”šA”¼ŠpƒJƒiAŠ¿š‚Í‚»‚ê
‚¼‚êA8ƒrƒbƒg•„†‹óŠÔ‚Ì’†‚ÌGL/GR‚Æ‚¢‚¤—Ìˆæ‚Ì1‚Â‚ği‚½‚¾‚µŠ¿š‚Í2‰ñjg‚¤‚±‚Æ‚Å
•\Œ»‚Å‚«‚éB‚à‚µ‰p”š‚ÆŠ¿š‚Ì2‚Â‚ğƒGƒXƒP[ƒvƒV[ƒPƒ“ƒX‚È‚µ‚Å¬İ‚µ‚½‚¢‚È‚çA
‰p”š‚ğGLAŠ¿š‚ğGR‚ÉŠ„‚è“–‚Ä‚é•û–@‚ª‚ ‚éBEUC-JP‚ÍA‚¨‚¨‚æ‚»‚»‚Ì‚æ‚¤‚ÉÀ‘•
‚³‚ê‚Ä‚¢‚éB

‚µ‚©‚µAƒpƒ\ƒRƒ“‚Å‚Í‚·‚Å‚ÉAJIS X 0201‚Ì8ƒrƒbƒg•„†A‚Â‚Ü‚èGL‚É‰p”šAGR‚É1ƒo
ƒCƒgƒJƒ^ƒJƒii”¼ŠpƒJƒ^ƒJƒij‚ğŠ„‚è“–‚Ä‚½•„†‚ª•‹y‚µ‚Ä‚¢‚½B‰p”š‚Æ1ƒoƒCƒgƒJ
ƒ^ƒJƒi‚Ì2‚Â‚ğ“®‚©‚·‚±‚Æ‚ÍA•¶š‰»‚¯‚ÌŒ´ˆö‚É‚È‚é‚½‚ß”ğ‚¯‚é•K—v‚ª‚ ‚Á‚½B‚»‚Ì
‚½‚ßAISO 2022‚Ì˜g“à‚Ì—Ìˆæ‚ÉŠ¿š‚ğ¬İ‚³‚¹‚é‚±‚Æ‚Í¢“ï‚¾‚Á‚½B

1982”NAŠ¿š‚Ì•„†ˆÊ’u‚ğ•¡G‚ÉˆÚ“®iƒVƒtƒgj‚µA•„†‹óŠÔ‚ÌŒ„ŠÔ‚É‰Ÿ‚µ‚Ş
Shift JIS‚ª’a¶‚µ‚½B‚±‚ê‚ğÀŒ»‚·‚é‚½‚ß‚É‚ÍAŠ¿š‚Ì1ƒoƒCƒg–Ú‚Æ‚µ‚ÄAISO 2022
‚É‚¨‚¯‚éGRiA1(16)-FE(16)j—Ìˆæ‚É3•ª‚Ì1c‚µ‚Ä‚¢‚½–¢g—p—Ìˆæ‚É‰Á‚¦AISO 2022‚É
‚¨‚¢‚Ä”ñg—p‚ÌCRi80(16)-9F(16)j—Ìˆæ‚ğg—p‚·‚é‚±‚Æ‚Æ‚µ‚½B‚½‚¾‚µAGLi21(16)
-7E(16)j—Ìˆæ‚É‚¨‚¢‚Ä‚ÍAJIS X 0201‚Ì‹L†‚É“–‚½‚é•”•ª‚Í‹É—Í”ğ‚¯‚½B‚³‚ç‚É2ƒoƒC
ƒg–Ú‚É‚ÍAISO 2022‚Æ‚ÍˆÙ‚È‚èA‰p”šE”¼ŠpƒJƒi‚Ég—pÏ‚İ‚Ì—Ìˆæ‚ğ‚àŠÜ‚ŞAGLA
CRAGR‚É‚ ‚½‚éŠe—Ìˆæ‚Ì‚Ù‚Ú‘S‚Ä‚ğg‚¤•K—v‚ª‚ ‚Á‚½B

ƒ}ƒCƒNƒƒ\ƒtƒgi“ú–{–@ljŒ³‰ï’·‚ÌŒÃì‹‚É‚æ‚é‚ÆAShift_JIS‚Ì§’è‚É‚ÍAƒAƒX
ƒL[Aƒ}ƒCƒNƒƒ\ƒtƒgi•ÄjAO•H“d‹@Aƒ}ƒCƒNƒƒ\ƒtƒgƒEƒFƒAEƒAƒ\ƒVƒGƒCƒcAƒf
ƒWƒ^ƒ‹ƒŠƒT[ƒ`i•Äj‚ªŠÖ‚í‚èA“Á‚ÉƒAƒXƒL[‚ÌR‰º—Ç‘ ‚ª’†S‚Æ‚È‚Á‚Äì¬‚µ‚½
‚à‚Ì‚¾‚Æ‚¢‚¤B‚±‚ê‚É‘Î‚·‚éˆÙà‚Æ‚µ‚ÄA‹“s‘åŠw•‹³ö‚ÌˆÀ‰ªFˆê‚ÍAƒ}ƒCƒNƒƒ\
ƒtƒgƒEƒFƒAEƒAƒ\ƒVƒGƒCƒc‚ÆO•H“d‹@‚Ì‚İ‚Ì‹¤“¯ŠJ”­‚¾‚Æå’£‚µ‚Ä‚¢‚½‚ªAR‰º–{l
‚Ì”­Œ¾‚É‚æ‚èˆÀ‰ª‚Í©à‚ğ“P‰ñ‚·‚é”­Œ¾‚ğ‚µ‚Ä‚¢‚éB‚Ü‚½ŒÃ‚­‚ÍLife with UNIX‚Ì
–ó‘iISBN 4-7561-0783-4j‚ÌuUNIXl–¼–“Tv–|–ó”Å‰Á•M•”•ªip. 45j‚ÅA[£
O‹±‚ÉuMSŠ¿šƒR[ƒh‚ÌìÒ‚Ìˆêlv‚Æ‚¢‚¤Ğ‰î•¶‚ª‘‚©‚ê‚Ä‚¢‚½B

Shift_JIS‚Ì•W€‰»

Shift_JIS‚ÍA•„†‰»•¶šW‡‚Æ‚»‚Ì•¶š•„†‰»•û®‚Ì—¼•û‚ğŠÜ‚ŞŒ»À‚Ì–â‘è‚ğ‰ğŒˆ‚·
‚é‚½‚ß‚Ì‹Zp‚Å‚ ‚éB‚»‚ê‚ä‚¦AJIS X 0208‚Ì•¶šW‡‚ğ—˜—p‚µ‚Ä‚Í‚¢‚é‚à‚Ì‚ÌA
ISO 2022‚Ì•„†‰»‚Ì•ûj‚Ì”ÍˆÍ‚ÌŠO‚É‚ ‚éB

‚µ‚©‚µŒ»İ‚Å‚ÍAJIS X 0208:1997‚Ì•‘®‘1‚ÉAuƒVƒtƒg•„†‰»•\Œ»v‚Æ‚¢‚¤–¼‘O‚Å
d—l‚ª’è‹`‚³‚ê‚Ä‚¢‚éB‚±‚ê‚ÍAƒfƒtƒ@ƒNƒgƒXƒ^ƒ“ƒ_[ƒh‚Æ‚È‚Á‚Ä‚¢‚é‹Zp‚É‚Â‚¢‚Ä
‚Ío©‚ğ–â‘è‚Æ‚¹‚¸A‚Æ‚à‚©‚­•W€‰»‚µ‚Ä‚µ‚Ü‚¨‚¤‚Æ‚¢‚¤ˆÓ}‚ª“ú–{H‹Æ•W€’²¸‰ï
 (JISC) ‚É‚ ‚Á‚Ä‚Ì‚±‚Æ‚Å‚ ‚éB

JIS X 0208‚ÌŠg’£‹KŠi‚Å‚ ‚éJIS X 0213‚Å‚ÍA2000”N§’è‚Ì‰”Å‚Å•‘®‘1‚Æ‚µ‚Ä
Shift_JISX0213‚ª’è‚ß‚ç‚ê‚½B2004”N‰ü³‚Ì10•¶š’Ç‰Á‚É”º‚Á‚ÄAShift_JIS-2004
‚Æ–¼Ì‚ª•ÏX‚³‚ê‚½B

IANA‚Å‚àuShift_JISv‚Æ‚¢‚¤–¼‘O‚ªŠ„‚è“–‚Ä‚ç‚ê‚Ä‚¢‚éB

—˜“_‚ÆŒ‡“_

—˜“_
1. ‘SŠp•¶š‚ÆAJIS X 0201‚Å’è‹`‚µ‚½‚¢‚í‚ä‚é”¼ŠpƒJƒi•¶š‚ğ“¯ˆê‚ÌƒR[ƒh‘ÌŒn‚Å
   •\Œ»‚Å‚«‚éB
2. “ú–{ŒêŠÂ‹«‚É‚¨‚¢‚Ä‚ÍAMS-DOS‚Å“ú–{Œê—p•¶šƒR[ƒh‚Æ‚µ‚ÄÌ—p‚³‚ê‚ÄˆÈ—ˆAƒpƒ\
   ƒRƒ“‚É‚¨‚¢‚Äˆ³“|“I‚È•‹y“x‚ª‚ ‚èA‚»‚Ì‘¼‚Ì•¶š•„†‰»•û®‚É”ä‚×‚Äƒf[ƒ^ŒğŠ·
   ‰Â”\«‚ª‚‚¢B

Œ‡“_
1. ”¼ŠpƒJƒi‚Ì‚½‚ß‚Ì—Ìˆæ‚ğŠm•Û‚µ‚½ŠÖŒWãAƒR[ƒhƒV[ƒNƒGƒ“ƒX‚ª‹æ“_”Ô†‚Ìu‹æv
   ‚Ì‹æØ‚è‚Å‚Í‚È‚¢‰ÓŠ‚Å•ª’f‚µ‚Ä‚¢‚éB‚±‚Ì‚½‚ßAƒR[ƒh”Ô†‚ğ‰‰Z‚Å‹‚ß‚éÛ‚Í
   ”ÏG‚Èˆ—‚ª•K—v‚Å‚ ‚éB
2. 2ƒoƒCƒg–Ú‚É80(16)–¢–(ASCII‚ÌƒR[ƒh—Ìˆæ)‚ªŒ»‚ê‚éB‚±‚Ì‚½‚ßA•¶š‚Ì‹æØ‚è‚Ì
   ”»’è‚ÉèŠÔ‚ª‚©‚©‚éBƒtƒ@ƒCƒ‹‚â“d•¶‚Ìæ“ª‚©‚ç•¶šƒR[ƒh‚Ì”»’è‚ğ‚·‚éê‡‚Í‚æ‚¢
   ‚ªAŒã‚ë‚©‚ç”»’è‚ğ‚µ‚æ‚¤‚Æ‚·‚é‚ÆAÅˆ«‚Ìê‡Aæ“ª‚Ü‚Å‚½‚Ç‚ç‚È‚¢‚Æ‚¢‚¯‚È‚¢
   ‚±‚Æ‚ª‚ ‚é‚½‚ßAƒvƒƒOƒ‰ƒ€‚Ìì‚è•û‚ÉH•v‚ª•K—v‚É‚È‚éB‚Ü‚½A‚±‚Ì—Ìˆæ‚ÉŠÜ‚Ü
   ‚ê‚éˆê•”‚Ì•¶š‚Ìˆµ‚¢‚Ì‚½‚ßAƒ}ƒ‹ƒ`ƒoƒCƒg‚ÌEUC-JPAUTF-8‚È‚Ç‚É”ä‚×AƒvƒƒO
   ƒ‰ƒ~ƒ“ƒOã‚Ìˆµ‚¢‚ª“ï‚µ‚¢iŸ€‚ğQÆjB
3. JIS•â•Š¿š‚ª•\Œ»‚Å‚«‚È‚¢B•â•Š¿š‚Ì•¶š”‚ÍShift_JIS‚ÌƒR[ƒh–¢“o˜^•”•ª‚É
   û‚Ü‚ç‚È‚¢B
4. •¶šW‡‚É‚Â‚¢‚Ä‚ÍÀ‘•ƒxƒ“ƒ_‚ªJIS X 0208‚Å‹K’è‚³‚ê‚Ä‚¢‚È‚¢‹@íˆË‘¶‚ÌŠg’£‚ğ
   {‚µ‚Ä‚¢‚é‚±‚Æ‚ª‘½‚­A‚±‚¤‚¢‚Á‚½Šg’£•”•ª‚ÉŠÖ‚µ‚Ä‚Íƒf[ƒ^ŒğŠ·‰Â”\«‚ª’á‚¢B

2ƒoƒCƒg–Ú‚ª5C“™‚É‚È‚è‚¤‚é‚±‚Æ‚É‚æ‚é–â‘è

Shift_JIS‚Å‚ÍAuƒ\vu‰\v‚È‚Çˆê•”‚Ìš‚Ì2ƒoƒCƒg–Ú‚ÉA5C(16)iShift_JIS‚Å‚Í
‹L†AASCII‚È‚Ç‚Å‚ÍƒoƒbƒNƒXƒ‰ƒbƒVƒ…j‚ğg—p‚µ‚Ä‚¢‚éB‘½‚­‚ÌƒvƒƒOƒ‰ƒ~ƒ“ƒOŒ¾Œê
 (CAPerlABourne Shell‚È‚Ç‘½”) ‚Å‚ÍA‚±‚Ì5C(16)‚ğƒGƒXƒP[ƒv•¶š‚Æ‚µ‚Ä‚¢‚éB
‚µ‚½‚ª‚Á‚ÄAƒ\[ƒXƒR[ƒh‚â•¶šƒf[ƒ^‚Ìˆ—‚É‚¨‚¢‚ÄShift_JIS‚ğ‘z’è‚µ‚Ä‚¢‚È‚¢ƒv
ƒƒOƒ‰ƒ~ƒ“ƒOŠÂ‹«‚Å‚Í–â‘è‚ª‹N‚±‚éB‚±‚Ì–â‘è‚ÍA“¯‚¶‚æ‚¤‚É2ƒoƒCƒg–Ú‚Ì”ÍˆÍ‚É5C(16)
‚ğŠÜ‚ŞBig5‚âAGBK‚È‚Ç‚Ì•¶šƒR[ƒh‚Å‚à”­¶‚µ‚¤‚éB

‚Ü‚½A5C(16)ˆÈŠO‚É‚Â‚¢‚Ä‚à—Ş—‚Ì–â‘è‚ª”­¶‚·‚é‚±‚Æ‚ª‚ ‚éB‚½‚Æ‚¦‚ÎAUnix‚â
MS-DOS‚È‚Ç‚ÌƒVƒFƒ‹ã‚Å7C(16) (Shift_JIS‚âASCII‚Å‚Íƒo[ƒeƒBƒJƒ‹ƒo[) ‚ğŠÜ‚Ş•¶š
i|Aƒ|A„|A‰|AŠ|A‹|AŒ|Accj‚ğƒtƒ@ƒCƒ‹–¼‚Ég—p‚µ‚æ‚¤‚Æ‚·‚é‚ÆAƒpƒCƒv
‹L†‚Æ”F¯‚³‚êA³í‚Éƒtƒ@ƒCƒ‹‚ªì¬‚³‚ê‚È‚©‚Á‚½‚èA“Ç‚İ‚İ‚ª•s—Ç‚É‚È‚Á‚½‚è
‚·‚é‚±‚Æ‚ª‚ ‚éB

Œ»İ‚Å‚àAƒVƒ“ƒOƒ‹ƒoƒCƒg•¶šƒR[ƒh‘Î‰‚Ìƒ\ƒtƒgƒEƒFƒA‚ğShift_JISŠÂ‹«‚Åg—p‚·‚é
‚ÆA‰üs‚È‚Ç‚Ì“®ì‚âƒtƒ@ƒCƒ‹–¼‚Ìˆ—‚È‚Ç‚É‚µ‚Î‚µ‚Î‚±‚Ì–â‘è‚ª‚Â‚«‚Ü‚Æ‚¤B‚±‚Ì
•s‹ï‡‚ğµ‚­A2ƒoƒCƒg–Ú‚É5C(16)‚ğ‚Â•¶š‚Í‘­‚Éu‚¾‚ß•¶šv‚ÆŒÄ‚Î‚êA‚±‚Ì’†‚É
‚Íuƒ\vu\vu”\vu•\v‚È‚Çˆê”Ê‚Ég—p•p“x‚Ì‚‚¢•¶š‚àŠÜ‚Ü‚ê‚éB

‚±‚Ì–â‘è‚ğ‰ñ”ğ‚·‚é“`““I‚È•û–@‚Æ‚µ‚ÄAƒ\[ƒXƒR[ƒh‘S‘Ì‚ğEUCƒR[ƒh‚âUTF-8‚È‚Ç‚É
•ÏŠ·‚µ‚Ä‚©‚çƒRƒ“ƒpƒCƒ‹‚µ‚½‚èÀs‚µ‚½‚è‚·‚é•û–@‚ª‚ ‚éi—áFPerl ‚Ìencodingƒvƒ‰
ƒOƒ}jB‚ ‚é‚¢‚Íuƒ\v¨uƒ\\v‚Ì‚æ‚¤‚ÉA2ƒoƒCƒg–Ú‚Ì’¼‘O(u’¼Œãv‚Æ‘‚©‚ê‚Ä‚¢‚é
î•ñ‚ÍŒë‚è‚ÅA³‚µ‚­‚Íu’¼‘OvB‚»‚¤‚Å‚È‚¯‚ê‚ÎA‚¾‚ß•¶š‚ğƒGƒXƒP[ƒv‚·‚é‚±‚Æ‚ª
‚Å‚«‚È‚¢B)‚ÉƒGƒXƒP[ƒv•¶š‚Ì5C(16)‚ğ‹Lq‚µAu‚¾‚ß•¶šv‚ğ•¶š‚Æ‚µ‚Ä³‚µ‚­”F¯
‚³‚¹‚é•û–@‚à‚ ‚éi—áFPerl‚ÌSjisƒ\ƒtƒgƒEƒFƒAjB‚ ‚é‚¢‚Í•¶š‚Ü‚½‚Í•¶š—ñ‚Æ‚µ‚Ä
ˆµ‚í‚¸‘ÎÛ•¶š‚¨‚æ‚Ñ“à•”•\Œ»Œ`®‚ğ”’l‚Ì”z—ñ‚Æ‚µ‚Ä•ÏŠ·‚ğs‚¢Aæ‚èˆµ‚¤Û‚É•¶š
‚É•œ†‚µ‚Äˆµ‚¤•û–@‚à‚ ‚éi—áFPerl ‚ÌEncodeƒ‚ƒWƒ…[ƒ‹jB

—á

u\‚í‚È‚¢v‚Æ‚¢‚¤•¶š—ñ‚ª‚¢‚­‚Â‚©‚ÌŒf¦”Âƒ\ƒtƒg‚Åu‚úÈ‚¢v‚Æ•¶š‰»‚¯‚·‚é—á
‚ª•p”É‚ÉŒ©‚ç‚ê‚éB

   \   ‚í   ‚È   ‚¢
  8d5c 82ed 82c8 82a2
  ƒoƒbƒNƒXƒ‰ƒbƒVƒ…‚É‚ ‚½‚é5c‚ª”²‚¯‚é‚ÆA
  8d   82ed 82c8 82a2
    ‚    ï¢¯  È   ‚¢

u‚¢v‚Æ‚¢‚¤•¶š‚Ì‚Æ‚±‚ë‚ÅƒfƒR[ƒh‚ªÄ“¯Šú‚³‚êŒã‚Ì•¶š—ñ‚Í³í‚É–ß‚éB‚Ü‚½“¯—l
‚ÉuŒ|”\ŠEv‚ªuŒ|”ŠEv‚É‰»‚¯‚é—á‚à‚ ‚éB 

   Œ|    ”\   ŠE
  8c7c 945c 8a45
  ƒoƒbƒNƒXƒ‰ƒbƒVƒ…‚É‚ ‚½‚é5c‚ª”²‚¯‚é‚ÆA
  8c7c 94   8a45
   Œ|    ”Š   E

  •\ 2ƒoƒCƒg–Ú‚É5C(16)‚ğ‚Â•¶šˆê—— •¶š •„†(16i) “Ç‚İEˆÓ–¡ 

  \   815C ƒ_ƒbƒVƒ…
  ƒ\   835C •Ğ‰¼–¼‚Ìu‚»v
  „\   845C ƒLƒŠƒ‹•¶š‚ÌƒEƒB
  ‡\/? 875C WindowsŠÂ‹«‚Å‚Íƒ[ƒ}”š‚Ì9
            MacŠÂ‹«‚Å‚ÍGB(ƒMƒKƒoƒCƒg)
  ‰\   895C ‚¤‚í‚³B
  Š\   8A5C ŠC—¢
  ‹\   8B5C ‚ ‚´‚Ş‚­B¼‹\
  Œ\   8C5C ‚¯‚¢Bl–¼B
  \   8D5C ‚©‚Ü‚¦‚éB\‘¢
  \   8E5C ƒJƒCƒRB—{\
  \   8F5C Š¿”š‚Ì10B
  \   905C ‚à‚¤‚·A‚µ‚ñB\¿
  ‘\   915C ‚»A‚ĞBu‘]v‚Ìˆóü•W€š‘Ìi³š‘ÌjB‘\‘·
  ’\   925C ‚½‚ñB’\y
  “\   935C ‚Í‚éB“\•t
  ”\   945C ‚Ì‚¤B”\—Í
  •\   955C ‚ ‚ç‚í‚·A‚Ğ‚å‚¤B•\Œ»
  –\   965C ‚ ‚Î‚ê‚éA‚Ú‚¤B–\—Í
  —\   975C ‚ ‚ç‚©‚¶‚ßA‚æB—\”õ
  ˜\   985C ‚ë‚­B•î˜\
  ™\   995C ‚ÆA‚¤‚³‚¬Bu“ev‚ÌˆÙ‘Ìš
  š\   9A5C ‚©‚­Bš\ŒŒ
  ›\   9B5C ‚±‚¤B›\˜a(u˜a‚Ì”ñ‘Š·‚¦)
  œ\   9C5C ‚âB–í¶‚Ìu–ív‚Ì³š‘Ì
  \   9D5C ‚¾B\•ß
  \   9E5C “È‚Ì•Ê‘Ì
  Ÿ\   9F5C ‚·‚·‚éA‚»‚¤A‚µ‚å‚¤B
  à\   E05C ‚³‚ç‚¤A‚µ‚ã‚ñB
  á\   E15C ‚Ó‚²A‚Ù‚ñB
  â\   E25C ‚Æ‚éA‚Ö‚¢B
  ã\   E35C ‚ ‚âA‚³‚¢B
  ä\   E45C ‚Å‚ñA‚µ‚èBä\•”
  å\   E55C ‚ ‚¢B˜a‹Cå\X
  æ\   E65C G‚Ì‹Œš‘Ì
  ç\   E75C ‘Ì‚ÌŒÃš
  è\   E85C ‚Â‚ÎB“‚Ìè\(’Õ)B
  é\   E95C ‚Ü‚ñBé\“ª
  ê\   EA5C ƒoƒ“B’¹‚Ì–¼B
  úx   ED5C ‚µ‚ã‚ñB
  ûx   EE5C ‚¬‚å‚­B
  ú\   FA5C ‚í‚½A‚±‚¤B
  û\   FB5C ‚¬‚ñB

ƒR[ƒh‹óŠÔ‚É‚¨‚¯‚é•¶š”§ŒÀ

Shift_JIS‚Ì2ƒoƒCƒgƒR[ƒh‚Ì‹óŠÔ‚ÍA‘æ1ƒoƒCƒg‚ª81(16)-9F(16)‚È‚ç‚Ñ‚ÉE0(16)-
FC(16)A‘æ2ƒoƒCƒg‚ª40(16)-7E(16)‚È‚ç‚Ñ‚É80(16)-FC(16)‚Å‚ ‚éB‚µ‚½‚ª‚Á‚ÄA
60~188=11280•¶šA‚³‚ç‚É1ƒoƒCƒgƒR[ƒh‚ª158•¶šiƒXƒy[ƒX‚ğŠÜ‚İADEL‚Í”‚¦‚¸j
‚Å‚ ‚é‚½‚ßAŒv11438•¶š‚Æ‚È‚éB

‚È‚¨AShift_JIS-2004‚Å‚ÍA2ƒoƒCƒg•¶š‚ª11233•¶šA1ƒoƒCƒg•¶š‚ª158•¶š‚Ì‚½‚ßA
‡Œv11391•¶š‚ğg—p‚µ‚Ä‚¢‚éB

Shift_JIS‚É‚¨‚¯‚éuƒVƒtƒgv‚Æ‚Í

Shift JIS‚ÌuƒVƒtƒgv‚Æ‚ÍA256~256‚Ì•½–Ê‚Ì’†‚Å•¶š‚ğ•¡G‚É"‚¸‚ç‚·"‚Æ‚¢‚¤ˆÓ–¡
‚ÌuƒVƒtƒgv‚Å‚ ‚éB

ISO-2022-JP‚Íw¦ƒV[ƒPƒ“ƒX‚ÅŠ¿š‚ÆƒAƒ‹ƒtƒ@ƒxƒbƒg‚ğØ‚è‘Ö‚¦‚é•„†‰»•û®‚Å‚ ‚éB
‚Ü‚½AEUC-JP‚Í•â•Š¿š‚Æ”¼ŠpƒJƒ^ƒJƒi‚ğƒVƒ“ƒOƒ‹ƒVƒtƒg‚Åˆê“I‚ÉØ‚è‘Ö‚¦‚Äg‚¤
•„†‰»•û®‚Å‚ ‚éB‚±‚ê‚ç‚Ì•„†‰»•û®‚Ås‚í‚ê‚Ä‚¢‚éAŠe•¶šW‡‚Ì–Ê‚ğƒVƒtƒgƒR[
ƒh‚É‚æ‚Á‚ÄØ‚è‘Ö‚¦‚é‘€ì‚àuƒVƒtƒgv‚ÆŒÄ‚Î‚ê‚é‚ªAShift_JIS‚ÌuƒVƒtƒgv‚Í‚±‚ê
‚ç‚Æ‚ÍˆÙ‚È‚éˆÓ–¡‚Å‚ ‚éB‚Ü‚½ƒrƒbƒg‚ğ‚¸‚ç‚·‘€ìiƒrƒbƒgƒVƒtƒgj‚Æ‚àˆÙ‚È‚éB

Shift_JIS‚Æ‹æ“_”Ô†

Shift_JIS‚ª•„†‰»‚Ì‘ÎÛ‚É‚·‚é•¶šW‡‚ÍAJIS X 0208‚Å‚ ‚éB‚±‚Ì•„†‰»•¶šW‡
‚É‚ÍA‹æ“_”Ô†‚Æ‚¢‚¤ŠT”O‚ª‘¶İ‚·‚éB‚±‚ê‚ÍA94~94‚Ì•¶š•\‚Ìs‚Æ—ñ‚Ì”Ô†‚Ì‘g
‚Å‚ ‚éB

Shift_JIS‚Å‚ÍA8140(16)-FCFC(16)‚Æ‚¢‚¤‚æ‚¤‚ÉAJIS X 0208‚Æ‚Í‚Ü‚Á‚½‚­ˆá‚Á‚½ƒR[
ƒh‘ÌŒn‚Å‚ ‚é‚ªAJIS X 0208‚ğŒvZ‚É‚æ‚è•ÏŒ`‚µ‚½‚à‚Ì‚Å‚ ‚é‚½‚ßA‹æ“_”Ô†‚ğ—p‚¢‚Ä
•¶š‚ÌƒR[ƒhƒ|ƒCƒ“ƒg‚ğw‚µ¦‚·‚±‚Æ‚ª‘½‚¢B“à—e‚É‚Â‚¢‚Ä‚ÍAJIS X 0208‚Ì1`94‹æ
‚Æ“¯‚¶‚Å‚ ‚éB‚½‚¾‚µA‹@íˆË‘¶•¶š‚Å‚ÍAƒVƒtƒgJIS‚Ì•„†‹óŠÔ‚©‚ç‹t¬‚µA94‹æ‚Ì
‰º•û‚É‚ ‚½‚©‚à120‹æ‚Ü‚Å‚ªŠg’£‚µ‚Ä‚¢‚é‚©‚Ì‚æ‚¤‚Éˆµ‚¤‚±‚Æ‚ª‚ ‚éB95‹æˆÈã‚ÍA
ISO/IEC 2022‚É‘¥‚Á‚½JIS X 0208‚Ì\‘¢‚Å‚Í‘¶İ‚µ“¾‚È‚¢‚Ì‚ÅA–{—ˆ‚Í‚¨‚©‚µ‚¢B
ƒxƒ“ƒ_“Æ©‚Ì”ñŒö®‚ÈŠT”O‚Å‚ ‚éB‚È‚¨AJIS X 0213‚Ì‹KŠi‚Ìˆê•”‚Å‚ ‚é
Shift_JISX0213•„†‰»•\Œ»‚É‚¨‚¢‚Ä‚ÍA‘æ1ƒoƒCƒgF0(16)ˆÈ~‚ğ2–Ê‚Ì•¶š‚ÉŠ„‚è“–‚Ä‚Ä
‚¨‚èA•S‰½‹æ‚Æ‚¢‚¤‚æ‚¤‚È‘¶İ‚µ‚È‚¢‹æ”Ô†‚Í“oê‚µ‚È‚¢B

ux-sjisv‚ÆuMS_Kanjiv

ux-sjisv‚ÆuMS_Kanjiv‚Í‚Æ‚à‚ÉAHTMLƒhƒLƒ…ƒƒ“ƒg‚Ìucharsetv‚Ìw’è‚É
uShift_JISv‚Ì•Ê–¼‚Æ‚µ‚Äg‚¤‚±‚Æ‚ªo—ˆ‚éB

ux-sjisv‚ÍIANA‚ÉuShift_JISv‚Æ‚¢‚¤–¼‘O‚ğ“o˜^‚·‚é‘O‚ÉANetscape Navigator
2.0‚É‚¨‚¢‚Äg‚Á‚Ä‚¢‚½ƒGƒ“ƒR[ƒfƒBƒ“ƒO‚Ìw’èq–¼‚Å‚ ‚éBˆê•”‚ÌHTML¶¬ƒ\ƒtƒg‚ª
©“®‚Å‚±‚Ìw’èq‚ğ‘g‚İ‚ñ‚Åg‚Á‚Ä‚¢‚éB‚»‚Ì‚½‚ß”F¯‰Â”\‚Èƒuƒ‰ƒEƒU‚ª‚ ‚é‚ªA
uShift_JISv‚É‘‚«Š·‚¦‚é‚±‚Æ‚ğ„§‚µ‚Ä‚¢‚éB

uMS_Kanjiv‚ÍIANA‚É‚æ‚èuShift_JISv‚Ì•Ê–¼‚Æ‚µ‚ÄŠ„‚è“–‚Ä‚ç‚ê‚Ä‚¢‚éB


=head1 ‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚Å‚Ì "ShiftJIS"

‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚Å‚¢‚¤ "ShiftJIS" ‚Íã‹L‚ÌuƒR[ƒh‹óŠÔ‚É‚¨‚¯‚é•¶š”§ŒÀv‚Ì
11438•¶š‚·‚×‚Ä‚ğˆµ‚¦‚é‚±‚Æ‚ğ–Úw‚µ‚Ä‚¢‚Ü‚·B‚»‚Ì‚½‚ß‚ÉƒAƒ‹ƒSƒŠƒYƒ€‚Í2‚Âg‚í
‚ê‚Ä‚¢‚Ü‚·B

* ƒAƒ‹ƒSƒŠƒYƒ€ 1

    ƒIƒNƒeƒbƒg‚Ì•À‚Ñ‚©‚ç•¶š‚ğæ‚èo‚·‚Æ‚«A1ƒIƒNƒeƒbƒgƒR[ƒh‚Æ2ƒIƒNƒeƒbƒgƒR[ƒh
    ‚Ì‹æ•Ê‚Í‘æ1ƒIƒNƒeƒbƒgƒR[ƒh‚Ì‚İ‚Ås‚í‚ê‚Ü‚·B‘æ2ƒIƒNƒeƒbƒg‚Íl—¶‚³‚ê‚Ü‚¹‚ñB

    1ƒIƒNƒeƒbƒgƒR[ƒh:
      0x00-0x80, 0xA0-0xDF, 0xFD-0xFF

    2ƒIƒNƒeƒbƒgƒR[ƒh:
      ‘æ1ƒIƒNƒeƒbƒg  0x81-0x9F, 0xE0-0xEF, 0xF0-0xFC
      ‘æ2ƒIƒNƒeƒbƒg  0x00-0xFF (‚·‚×‚Ä)

    •s³‚È1ƒIƒNƒeƒbƒgƒR[ƒh:
      0x81-0x9F, 0xE0-0xFC
      * •¶š—ñ‚ÌÅIƒIƒNƒeƒbƒg‚ª2ƒIƒNƒeƒbƒgƒR[ƒh‚Ì‘æ1ƒIƒNƒeƒbƒg‚Æ“¯‚¶ê‡

ˆÈ‰º‚ÉƒR[ƒh•\‚ğŒfÚ‚µ‚Ü‚·B

        1ƒIƒNƒeƒbƒgƒR[ƒh•\

   0 1 2 3 4 5 6 7 8 9 A B C D E F 
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 0|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*| 0x00-0x80
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 1|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 2|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 3|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 4|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 5|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 6|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 7|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8|*| | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 9| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 A|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*| 0xA0-0xDF
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 B|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 C|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 D|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 E| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 F| | | | | | | | | | | | | |*|*|*| 0xFD-0xFF
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

                                 2ƒIƒNƒeƒbƒgƒR[ƒh•\
            ‘æ1ƒIƒNƒeƒbƒg                                    ‘æ2ƒIƒNƒeƒbƒg


   0 1 2 3 4 5 6 7 8 9 A B C D E F                 0 1 2 3 4 5 6 7 8 9 A B C D E F 
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 0| | | | | | | | | | | | | | | | |              0|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*| 0x00-0xFF
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 1| | | | | | | | | | | | | | | | |              1|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 2| | | | | | | | | | | | | | | | |              2|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 3| | | | | | | | | | | | | | | | |              3|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 4| | | | | | | | | | | | | | | | |              4|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 5| | | | | | | | | | | | | | | | |              5|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 6| | | | | | | | | | | | | | | | |              6|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 7| | | | | | | | | | | | | | | | |              7|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8| |*|*|*|*|*|*|*|*|*|*|*|*|*|*|*| 0x81-0x9F    8|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 9|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|              9|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 A| | | | | | | | | | | | | | | | |              A|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 B| | | | | | | | | | | | | | | | |              B|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 C| | | | | | | | | | | | | | | | |              C|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 D| | | | | | | | | | | | | | | | |              D|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 E|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*| 0xE0-0xFC    E|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 F|*|*|*|*|*|*|*|*|*|*|*|*|*| | | |              F|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+


•¶š—ñ‚ÌÅIƒIƒNƒeƒbƒg‚ª2ƒIƒNƒeƒbƒgƒR[ƒh‚Ì‘æ1ƒIƒNƒeƒbƒg‚Æ“¯‚¶ê‡

•s³‚Å‚ ‚Á‚Ä‚à–³‹‚³‚ê‚½‚èA©“®“I‚Éíœ‚³‚ê‚é‚±‚Æ‚Í‚ ‚è‚Ü‚¹‚ñB
—á‚¦‚ÎAEsjis::chop ‚Í‚±‚ÌƒIƒNƒeƒbƒg‚ğ•Ô‚µ‚Ü‚·B

    *•s³‚È* 1ƒIƒNƒeƒbƒgƒR[ƒh

   0 1 2 3 4 5 6 7 8 9 A B C D E F 
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 0| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 1| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 2| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 3| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 4| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 5| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 6| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 7| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8| |M|M|M|M|M|M|M|M|M|M|M|M|M|M|M| 0x81-0x9F
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 9|M|M|M|M|M|M|M|M|M|M|M|M|M|M|M|M|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 A| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 B| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 C| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 D| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 E|M|M|M|M|M|M|M|M|M|M|M|M|M|M|M|M|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 F|M|M|M|M|M|M|M|M|M|M|M|M|M| | | |  0xE0-0xFC
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+


=head1 ƒxƒ“ƒ_•Ê SJIS ƒR[ƒhˆê——

http://home.m05.itscom.net/numa/cde/sjis-euc/sjis.html

 DEC PC                         0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 DEC WS                         0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 Fujitsu TrueType font (PC)     0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 Fujitsu FontCity font (PC)     0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 Hitachi PC                     0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 Hitachi WS                     0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 IBM                            0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 NEC Windows (PC)               0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 NEC DOS (PC)                   0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 SONY NEWS-OS                   0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 Sun Wabi                       0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 Unisys PC                      0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 HP Japan Japanese HP-15        0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 AT&T Japan                     0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 Mitsubishi Electric FONTRUNNER 0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 Concurrent Japan               0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 Informix ASCII INFORMIX V6 ALS 0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC), (0xFD)(0xA1-0xFE)(0xA1-0xFE)
 Oracle Oracle7 (Release 7.1.3) 0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x00-0xFF)
 Sybase SQL Server, Open Server 0x00-0x7F, 0xA1-0xDF, (0x81-0x9F, 0xE0-0xFC)(0x40-0x7E, 0x80-0xFC)
 
 “ú–{Œêî•ñˆ—(ISBN 4-89052-708-7)‚æ‚è
 
 Hewlett-Packard HP-15          0x00-0x7F, 0xA1-0xDF, (0x80-0xA0, 0xE0-0xFE)(0x21-0x7E, 0x80-0xFF)


* ƒAƒ‹ƒSƒŠƒYƒ€ 2

    ƒAƒ‹ƒSƒŠƒYƒ€ 1 ‚É‚àŠÖ‚í‚ç‚¸Atr/// ‚É‚æ‚è•¶š‚Ì”ÍˆÍ‚ğw’è‚³‚ê‚½ê‡‚ÍˆÈ‰º‚Ì•¶š
    ‚Ì‚İ‚ª—LŒø‚Æ‚È‚è‚Ü‚·B

    1ƒIƒNƒeƒbƒgƒR[ƒh:
      0x00-0x80, 0xA0-0xDF, 0xFD-0xFF

    2ƒIƒNƒeƒbƒgƒR[ƒh:
      ‘æ1ƒIƒNƒeƒbƒg  0x81-0x9F, 0xE0-0xEF, 0xF0-0xFC
      ‘æ2ƒIƒNƒeƒbƒg  0x40-0x7E, 0x80-0xFC

—á‚¦‚ÎA[\x81\x00-\x82\xFF] ‚Æ‘‚©‚ê‚½ê‡‚Í [\x81\x82][\x40-\x7E\x80-\xFC] ‚ğ
ˆÓ–¡‚µ‚Ü‚·B

ˆÈ‰º‚ÉƒR[ƒh•\‚ğŒfÚ‚µ‚Ü‚·B

        1ƒIƒNƒeƒbƒgƒR[ƒh•\

   0 1 2 3 4 5 6 7 8 9 A B C D E F 
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 0|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*| 0x00-0x80
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 1|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 2|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 3|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 4|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 5|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 6|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 7|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8|*| | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 9| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 A|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*| 0xA0-0xDF
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 B|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 C|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 D|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 E| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 F| | | | | | | | | | | | | |*|*|*| 0xFD-0xFF
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+


                                 2ƒIƒNƒeƒbƒgƒR[ƒh•\
            ‘æ1ƒIƒNƒeƒbƒg                                    ‘æ2ƒIƒNƒeƒbƒg

   0 1 2 3 4 5 6 7 8 9 A B C D E F                 0 1 2 3 4 5 6 7 8 9 A B C D E F 
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 0| | | | | | | | | | | | | | | | |              0| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 1| | | | | | | | | | | | | | | | |              1| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 2| | | | | | | | | | | | | | | | |              2| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 3| | | | | | | | | | | | | | | | |              3| | | | | | | | | | | | | | | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 4| | | | | | | | | | | | | | | | |              4|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*| 0x40-0x7E
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 5| | | | | | | | | | | | | | | | |              5|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 6| | | | | | | | | | | | | | | | |              6|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 7| | | | | | | | | | | | | | | | |              7|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*| |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8| |*|*|*|*|*|*|*|*|*|*|*|*|*|*|*| 0x81-0x9F    8|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*| 0x80-0xFC
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 9|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|              9|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 A| | | | | | | | | | | | | | | | |              A|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 B| | | | | | | | | | | | | | | | |              B|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 C| | | | | | | | | | | | | | | | |              C|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 D| | | | | | | | | | | | | | | | |              D|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 E|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*| 0xE0-0xFC    E|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 F|*|*|*|*|*|*|*|*|*|*|*|*|*| | | |              F|*|*|*|*|*|*|*|*|*|*|*|*|*| | | |
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+               +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+


=head1 –Ú•W‚Æ‚µ‚Ä‚¢‚é‚à‚Ì

ƒvƒƒOƒ‰ƒ~ƒ“ƒO Perl ‘æ3”Å VOLUME 1 (ISBN 4-87311-096-3)
15Í Unicode QÆ

Unicode ƒTƒ|[ƒg‚ª perl ‚É“±“ü‚³‚ê‚éˆÈ‘O‚ÍAeq ‰‰Zq‚ÍA2‚Â‚ÌƒXƒJƒ‰[•Ï”‚É‚æ‚Á
‚Ä•\‚³‚ê‚½ƒoƒCƒg—ñ‚ğ‚½‚¾”ä‚×‚Ä‚¢‚Ü‚µ‚½Bperl5.8 ˆÈ~Aeq ‚ÍA2‚Â‚ÌƒoƒCƒg—ñ‚ğ”ä‚×‚é
‚Æ“¯‚É UTF8 ƒtƒ‰ƒO‚ğl—¶‚µ‚Ü‚·B

  perl5.8 ˆÈ~‚Ìî•ñˆ—ƒ‚ƒfƒ‹
 
    +----------------------+---------------------+
    |     Text strings     |                     |
    +----------+-----------|    Binary strings   |
    |   UTF8   |  Latin-1  |                     |
    +----------+-----------+---------------------+
    | UTF8     |            Not UTF8             |
    | Flagged  |            Flagged              |
    +--------------------------------------------+
    http://perl-users.jp/articles/advent-calendar/2010/casual/4
 
    ‚±‚Ì}‚ğŠo‚¦‚È‚¢‚ÆƒvƒƒOƒ‰ƒ€‚ğ‘‚¯‚Ü‚¹‚ñB
 
    (‚Ç‚¤‚µ‚Ä Latin-1 ‚¾‚¯“Á•Êˆµ‚¢‚·‚é‚Ì‚Å‚µ‚å‚¤‚©H)

Œ‹‰Ê“I‚É‚±‚Ì•ÏX‚ÍA‰ß‹‚ÌƒXƒNƒŠƒvƒg‚ÆV‚µ‚¢ƒXƒNƒŠƒvƒg‚ÌŠÔ‚É‘å‚«‚Èa‚ğì‚è‚Ü‚µ‚½B
‚à‚Í‚â—¼Ò‚ÌƒXƒNƒŠƒvƒg‚ÍƒR[ƒh‚ğŒİ‚¢‚ÉÄ—˜—p‚·‚é‚±‚Æ‚ª‚Å‚«‚Ü‚¹‚ñB‚Ü‚½V‚µ‚¢•û–@‚Í
ƒvƒƒOƒ‰ƒ}‚É•‰’S‚ğ‚©‚¯‚é‚½‚ßAŒ»‘¶‚·‚éƒXƒNƒŠƒvƒg‚ª‚·‚×‚Ä’u‚«Š·‚í‚é‚Ì‚Í‚Ü‚¾‚Ü‚¾ŠÔ
‚ª‚©‚©‚é‚Æv‚í‚ê‚Ü‚·B

V‚µ‚¢•û–@‚Å–â‘è‚Æ‚È‚Á‚Ä‚¢‚é‚±‚Æ‚Í UTF8 ƒtƒ‰ƒO‚ÍÀÛ‚Ì•¶š—ñ‚Ì•„†‰»‚Æˆê’v‚µ‚È‚¢‚±‚Æ
‚Å‚·B©•ª‚Åì‚Á‚½ƒXƒNƒŠƒvƒg‚Í‚»‚ÌƒfƒoƒbƒO‚Ì‘O‚É“®“I‚É‚Ó‚é‚Ü‚¤ UTF8 ƒtƒ‰ƒO‚É‚Â‚¢‚Ä
ƒfƒoƒbƒO‚µ‚È‚¯‚ê‚Î‚È‚è‚Ü‚¹‚ñB

  perl3 ˆÈ~A‚ ‚é‚¢‚Í‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚É‚æ‚éî•ñˆ—ƒ‚ƒfƒ‹
 
    +--------------------------------------------+
    |       Text strings as Binary strings       |
    |       Binary strings as Text strings       |
    +--------------------------------------------+
    |              Not UTF8 Flagged              |
    +--------------------------------------------+

‚»‚±‚ÅA‚±‚Ì•û–@‚É–ß‚·‚±‚Æ‚É‚æ‚Á‚Ä‚Ç‚Ì‚æ‚¤‚É‰ğŒˆ‚³‚ê‚é‚Ì‚©A‚Ù‚±‚è‚É‚Ü‚İ‚ê‚½ŒÃ‚¢
Programming Perl, 3rd ed. (–M–ó ƒvƒƒOƒ‰ƒ~ƒ“ƒOPerl ‘æ3”Å) ‚Ì402ƒy[ƒW‚ğ‚à‚¤ˆê“x
‚Ğ‚à‚Æ‚¢‚Ä‚İ‚Ü‚µ‚å‚¤EEEB

—‘z“I‚É‚ÍAˆÈ‰º‚Ì5‚Â‚ÌƒS[ƒ‹‚ğÀŒ»‚µ‚æ‚¤‚Æl‚¦‚Ä‚¢‚Ü‚·B

=over 2

=item * ƒS[ƒ‹1

    Šù‘¶‚ÌƒoƒCƒgwŒü‚ÌƒXƒNƒŠƒvƒg‚ÍAˆÈ‘Oˆµ‚Á‚Ä‚¢‚½Šù‘¶‚ÌƒoƒCƒgwŒü‚Ìƒf[ƒ^‚É‘Î‚µ
    ‚ÄAˆÈ‘O‚Æ“¯—l‚É“®ì‚·‚×‚«‚Å‚ ‚éB

    ‚±‚Ì–Ú•W‚Í‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚ªAutf8 ƒvƒ‰ƒOƒ}‚Ì‚æ‚¤‚É perl ‚É‘Î‚·‚é’Ç‰Á‹@”\‚Å
    ‚ ‚é‚±‚Æ‚É‚æ‚Á‚Ä’B¬‚³‚ê‚Ä‚¢‚Ü‚·B‰½‚à•t‚¯‰Á‚¦‚È‚¢ perl ‚Í‚±‚ê‚Ü‚Å’Ê‚è‚Ì“®ì
    ‚ğ‚·‚é‚Í‚¸‚Å‚·B

=item * ƒS[ƒ‹2

    Šù‘¶‚ÌƒoƒCƒgwŒü‚ÌƒXƒNƒŠƒvƒg‚ÍA‰½‚àè‚ğ‰Á‚¦‚¸‚ÉA(‚»‚¤‚·‚é‚±‚Æ‚ª“KØ‚Å‚ ‚ê‚Î)
    V‚µ‚¢•¶šwŒü‚Ìƒf[ƒ^‚É‘Î‚µ‚Ä‚à“®ì‚·‚é‚æ‚¤‚É‚È‚é‚×‚«‚Å‚ ‚éB

    ‘g‚İŠÖ” length, substr, index, rindex, pos ‚È‚Ç‚Ì•¶š—ñ‚Ì’·‚³‚âˆÊ’u‚ğˆµ‚¤
    ‚à‚Ì‚Í¡‚Ü‚Å‚Ç‚¨‚è‚É1ƒIƒNƒeƒbƒg‚ğ 1 ‚Æ”‚¦‚Ü‚·B‚±‚Ì•”•ª‚É‚Â‚¢‚Ä‰½‚àè‚Í‰Á
    ‚í‚è‚Ü‚¹‚ñB2ƒIƒNƒeƒbƒgƒR[ƒh1•¶š‚Ì length ‚Í 2 ‚É‚È‚è‚Ü‚·B

    ˆê•ûAƒXƒNƒŠƒvƒg’†‚Ì³‹K•\Œ»‚ÍAƒ}ƒ‹ƒ`ƒoƒCƒg•¶š‚Ì‚½‚ß‚ÌƒAƒ“ƒJ[ƒŠƒ“ƒOˆ—‚ğ
    ‹Lq‚·‚é•K—v‚ª‚ ‚è‚Ü‚·‚ªA‚»‚ê‚ğ‚ ‚È‚½‚É‘ã‚í‚Á‚Ä‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚ªs‚¢‚Ü‚·B

    ƒS[ƒ‹1‚ÆƒS[ƒ‹2‚Ì“à—e‚ğ}¦‚µ‚Ü‚·B

                                   GOAL#1  GOAL#2
                            (a)     (b)     (c)     (d)     (e)
          +--------------+-------+-------+-------+-------+-------+
          | data         |  Old  |  Old  |  New  |  Old  |  New  |
          +--------------+-------+-------+-------+-------+-------+
          | script       |  Old  |      Old      |      New      |
          +--------------+-------+---------------+---------------+
          | interpreter  |  Old  |              New              |
          +--------------+-------+-------------------------------+
          Old --- Šù‘¶‚ÌƒoƒCƒgwŒü
          New --- V‚µ‚¢•¶šwŒü

    ƒf[ƒ^AƒXƒNƒŠƒvƒgAƒCƒ“ƒ^ƒvƒŠƒ^‚ÌVE‹Œ‚ÉŠÖ‚µ‚ÄAã‚Ì (a) ‚©‚ç (e) ‚Ü‚Å‚Ì
    ‘g‡‚¹‚ª‚ ‚è‚Ü‚·B‚±‚Ì•¶‘‚ª‘‚©‚ê‚½“–‚É‘¶İ‚µ‚È‚©‚Á‚½ Encode ƒ‚ƒWƒ…[ƒ‹‚Æ
    ‚±‚Ìƒ\ƒtƒgƒEƒFƒAA‚¨‚æ‚Ñ‘¶İ‚µ‚Ä‚¢‚½ JPerl ‚ğ‘‚«‘«‚µ‚Ä‚İ‚Ü‚µ‚å‚¤B

                            (a)     (b)     (c)     (d)     (e)
                                          JPerl,japerl    Encode,Sjis
          +--------------+-------+-------+-------+-------+-------+
          | data         |  Old  |  Old  |  New  |  Old  |  New  |
          +--------------+-------+-------+-------+-------+-------+
          | script       |  Old  |      Old      |      New      |
          +--------------+-------+---------------+---------------+
          | interpreter  |  Old  |              New              |
          +--------------+-------+-------------------------------+
          Old --- Šù‘¶‚ÌƒoƒCƒgwŒü
          New --- V‚µ‚¢•¶šwŒü

    JPerl ‚ª‚Æ‚Ä‚à—D‚ê‚Ä‚¢‚é——R‚Í (c) ‚ÌˆÊ’u‚É‚ ‚é‚©‚ç‚Å‚·B‚·‚È‚í‚¿“ú–{Œêˆ—
    ‚ğs‚¤‚½‚ß‚ÉƒXƒNƒŠƒvƒg‚É“Á•Ê‚È‹Lq‚ğs‚¤•K—v‚ª‚ ‚è‚Ü‚¹‚ñB

=item * ƒS[ƒ‹3

    ƒXƒNƒŠƒvƒg‚ÍAV‚µ‚¢•¶šwŒüƒ‚[ƒh‚Å‚àAˆÈ‘O‚ÌƒoƒCƒgwŒüƒ‚[ƒh‚Æ“¯‚¶ƒXƒs[
    ƒh‚Å“®ì‚·‚×‚«‚Å‚ ‚éB

    ‚»‚ê‚Í–³—B‚¾‚Á‚ÄAˆÈ‰º‚ÌŠÔ‚ª•K—v‚¾‚à‚ÌB

    (1) ƒXƒNƒŠƒvƒg‚ğƒGƒXƒP[ƒv‚µ‚ÄAƒoƒCƒgwŒü Perl ‚Åˆµ‚¦‚é‚æ‚¤‚Éˆ—‚·‚é‚½‚ß‚Ì
     ŠÔB‚½‚¾‚µAˆ—‚³‚ê‚½ƒXƒNƒŠƒvƒg‚Í•Û‘¶‚Å‚«‚é‚½‚ßAŸ‰ñ‚©‚ç‚Í‚±‚ÌŠÔ‚ğ‚È‚­
     ‚·‚±‚Æ‚à‰Â”\‚Å‚·B

    (2) ƒGƒXƒP[ƒv‚³‚ê‚½ƒXƒNƒŠƒvƒg‚ªƒ}ƒ‹ƒ`ƒoƒCƒgƒAƒ“ƒJ[ƒŠƒ“ƒOˆ—‚ğs‚¢‚È‚ª‚çA
     ³‹K•\Œ»‚ğÀs‚·‚éŠÔB

    ‚·‚Å‚É‘¶İ‚·‚é ASCII ƒf[ƒ^‚Í1•¶š‚ª1ƒIƒNƒeƒbƒg‚ÉƒpƒbƒN‚³‚ê‚Ä‚¢‚Ü‚·B‚»‚Ì
    ƒf[ƒ^‚ÆŒİŠ·«‚ğ•Û‚¿‚È‚ª‚ç•¶ší‚ğ‘‚â‚»‚¤‚Æ‚·‚é‚ÆAISO-2022 ‚Ì‚æ‚¤‚ÉƒGƒXƒP[
    ƒvƒV[ƒPƒ“ƒX‚ª•K—v‚Å‚ ‚Á‚½‚èAShiftJIS ‚â UTF-8 ‚Ì‚æ‚¤‚É "ƒGƒXƒP[ƒvƒrƒbƒg"
    ‚ª•K—v‚É‚È‚Á‚½‚è‚µ‚Ü‚·B‚±‚ê‚ç‚ÌƒGƒXƒP[ƒvˆ—‚ª‰Á‚í‚é‚½‚ßAˆÈ‘O‚Æ“¯‚¶ƒXƒs[
    ƒh‚Å“®ì‚·‚×‚«‚Å‚ ‚é‚Æ‚¢‚¤‚Ì‚Í–³—‚È–Ú•W‚¾‚Æv‚¢‚Ü‚·B

    ‚¢‚Â‚Ì“ú‚© Larry Wall ‚³‚ñ‚É‚±‚ÌƒS[ƒ‹‚Ì‚±‚Æ‚ğu‚Ë‚Ä‚İ‚½‚¢‚Å‚·(ƒGƒŒƒx[ƒ^[‚Ì
    ’†‚Å)B

=item * ƒS[ƒ‹4

    Perl ‚ÍAƒoƒCƒgwŒü‚Ì Perl ‚Æ•¶šwŒü‚Ì Perl ‚É}•ª‚©‚ê‚¹‚¸‚ÉA1‚Â‚ÌŒ¾Œê‚Å
    ‚ ‚è‘±‚¯‚é‚×‚«‚Å‚ ‚éB

    JPerl ‚Í Perl Œ¾Œê‚ğ•ªŠò‚³‚¹‚È‚¢‚æ‚¤‚É‚·‚é‚½‚ß‚ÉAƒCƒ“ƒ^ƒvƒŠƒ^‚ğ•ªŠò‚³‚¹‚Ü‚µ‚½B
    ‚Å‚à Perl ƒRƒAƒ`[ƒ€‚ÍƒCƒ“ƒ^ƒvƒŠƒ^‚Ì•ªŠò‚ğ–]‚ñ‚Å‚¢‚È‚¢‚Ì‚Å‚µ‚å‚¤BŒ‹‰Ê“I‚ÉƒS[
    ƒ‹4‚Æ‚Í‚¤‚ç‚Í‚ç‚ÉPerlŒ¾Œê‚ª•ªŠò‚·‚é‚±‚Æ‚É‚È‚èAPerlƒRƒ~ƒ…ƒjƒeƒB‚Ík¬‚µ‚Ü‚µ‚½B

    ƒoƒCƒgwŒü‚Ì perl ‚Í‚·‚Å‚ÉƒoƒCƒiƒŠƒf[ƒ^‚ğˆµ‚¤‚±‚Æ‚ª‚Å‚«‚é‚½‚ßA•¶šwŒü‚Ì
    perl ‚ğ•Ê—§‚Ä‚Åì¬‚·‚é•K—v‚Í‚ ‚è‚Ü‚¹‚ñB‚Ü‚½‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚ÍA’P‚È‚éƒAƒvƒŠ
    ƒP[ƒVƒ‡ƒ“ƒvƒƒOƒ‰ƒ€‚È‚Ì‚ÅAPerl ƒRƒAƒ`[ƒ€‚©‚çáÉ‚Ü‚ê‚é‚±‚Æ‚à‚È‚¢‚Å‚µ‚å‚¤‚µA
    —U‚í‚ê‚éS”z‚à‚ ‚è‚Ü‚¹‚ñB

    ‚»‚ê‚É–â‘è‚ğ Perl ƒXƒNƒŠƒvƒg‚Å‰ğŒˆ‚µ‚æ‚¤‚Æ‚·‚é‚È‚çAPerl ƒRƒ~ƒ…ƒjƒeƒB‚ÌƒTƒ|[ƒg
    ‚ğ“¾‚ç‚ê‚é‚Å‚µ‚å‚¤B

    Sjisƒ\ƒtƒgƒEƒFƒA‚ÍA1‚Â‚ÌŒ¾ŒêE1‚Â‚ÌƒCƒ“ƒ^ƒvƒŠƒ^‚ğÀŒ»‚µ‚Ü‚·B

=item * ƒS[ƒ‹5

    JPerl ƒ†[ƒU‚ª Perl ‚Å JPerl ‚ğ•Ûç‚Å‚«‚é‚æ‚¤‚É‚È‚éB

    JPerl ‚ª‚¢‚Â‚à‚ ‚È‚½‚Ì‚»‚Î‚É‚ ‚è‚Ü‚·‚æ‚¤‚É ...

=back

Programming Perl, 3rd ed. ‚ª‘‚©‚ê‚½ ‚É‚ÍAUTF8 ƒtƒ‰ƒO‚Í¶‚Ü‚ê‚Ä‚¨‚ç‚¸APerl ‚Í
ŠÈ’P‚Èd–‚ğŠÈ’P‚É‚Å‚«‚é‚æ‚¤‚ÉİŒv‚³‚ê‚Ä‚¢‚Ü‚µ‚½B‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚Í“–‚Ì‚æ‚¤‚È
ƒvƒƒOƒ‰ƒ~ƒ“ƒOŠÂ‹«‚ğ’ñ‹Ÿ‚µ‚Ü‚·B

=head1 Perl‚Ìå’£

  ƒRƒ“ƒsƒ…[ƒ^‰ÈŠwÒ‚Ì’†‚É‚Í(“Á‚ÉŠÒŒ³å‹`Ò‚½‚¿‚Í)”Û’è‚·‚éÒ‚à‚¢‚é‚Ì‚¾‚ªA
 lŠÔ‚Æ‚¢‚¤‚à‚Ì‚Í•Ï‚í‚Á‚½Œ`‚ÌS‚ğ‚Á‚Ä‚¢‚é‚à‚Ì‚È‚Ì‚¾BS‚ÌŒ`‚Í•½’R‚Å‚Í‚È‚¢
 ‚Ì‚ÅA‚Ğ‚Ç‚­˜c‚ß‚é‚±‚Æ‚È‚µ‚É‚Í•½‚ç‚È–Ê‚ÉÊ‘œ‚·‚é‚±‚Æ‚Í‚Å‚«‚È‚¢B‚µ‚©‚µ‰ß‹
 20”NˆÈã‚É‚í‚½‚Á‚ÄAƒRƒ“ƒsƒ…[ƒ^ŠÒŒ³å‹`Ò‚½‚¿‚Í’¼Œğ«‚Ì_“a‚Éæì‚«AŸ‚¢‚Å
 —§‚¿ã‚ª‚é‚ÆA”Ş‚ç‚ÌM•ò‚·‚é‹Ö—~“I‚È´—õ‚³‚ğ’N‚©‚ê‚Æ‚È‚­à‚¢‚Ä‰ñ‚Á‚½B

  ”Ş‚ç‚Ì”M—ó‚¾‚ªŒ©“–ˆá‚¢‚ÌŠè–]‚ÍAŒN‚½‚¿‚ÌS‚ğ”Ş‚ç‚Ìvl—l®‚É‡‚¤‚æ‚¤‚Éì‚è
 •Ï‚¦‚ÄAŒN‚½‚¿‚Ìvlƒpƒ^[ƒ“‚ğ‚ ‚éí‚Ì’´‰zŸŒ³‚Ì•½Œ´‚É‰Ÿ‚µ‚ß‚é‚±‚Æ‚¾‚Á‚½B
 •½–Ê‚É‰Ÿ‚µ‚Ü‚ê‚é‚Æ‚¢‚¤‚±‚Æ‚ÍA‚Ü‚Á‚½‚­Šì‚Ñ‚Ì‚È‚¢‘¶İ‚É‚È‚Á‚Ä‚µ‚Ü‚¤‚±‚Æ‚É
 “™‚µ‚¢B

 --- ‰‚ß‚Ä‚ÌPerl xviii

  ‚à‚µ‚±‚ê‚ğ“ª’É‚Ìí‚¾‚Æv‚¤‚È‚çA‚»‚Ì’Ê‚è‚Å‚·B’N‚à‚±‚Ì‚æ‚¤‚Èó‹µ‚ğD‚ñ‚Å
 ‚¢‚é‚í‚¯‚Å‚Í‚ ‚è‚Ü‚¹‚ñB‚Å‚àAPerl‚Í“ü—Í‚ÆƒGƒ“ƒR[ƒfƒBƒ“ƒO‚Ìˆµ‚¢‚ÉŠÖ‚µ‚ÄA
 ƒxƒXƒg‚ğs‚­‚µ‚Ä‚­‚ê‚Ü‚·B‚à‚µ—ğj‚ğƒŠƒZƒbƒg‚µ‚Ä‚â‚è’¼‚¹‚é‚Ì‚È‚çA‚»‚Ì‚É‚Í
 ‚±‚ñ‚È‚É‘½‚­‚ÌŒë‚è‚ğ”Æ‚³‚È‚¢‚Ì‚Å‚·‚ªB

 --- ‰‚ß‚Ä‚ÌPerl ‘æ6”Å

 ‚Æ‚Í‚¢‚¦Perl‚ÅUnicodeƒf[ƒ^‚ğˆ—‚·‚éÛ‚ÉŠo‚¦‚Ä‚¨‚©‚È‚¯‚ê‚Î‚È‚ç‚È‚¢Å‚àd—v‚È
 ‚±‚Æ‚ÍAUnicodeƒf[ƒ^‚ğg—p‚µ‚È‚¢ê‡(‚Ç‚Ìƒtƒ@ƒCƒ‹‚àUTF-8‚Æ‚µ‚Äƒ}[ƒN‚³‚ê‚Ä
 ‚¨‚ç‚¸A‚©‚ÂUTF-8ƒƒP[ƒ‹‚ğg—p‚µ‚Ä‚¢‚È‚¢ê‡)AK‚¢Perl5.005_3ƒ‰ƒ“ƒh‚É‚¢
 ‚é‚Ó‚è‚ğ‚Å‚«‚é‚Æ‚¢‚¤‚±‚Æ‚Å‚·BUnicode‹@”\‚ğ–¾¦“I‚Ég—p‚µ‚Ä‚¢‚È‚¢ŒÀ‚èA
 Unicode‹@”\‚ª‚ ‚È‚½‚ÌƒR[ƒh‚ğ–W‚°‚é‚±‚Æ‚Í‚ ‚è‚Ü‚¹‚ñBUnicode‚ğæ‚è“ü‚ê‚È‚ª‚ç
 ‹Œ®‚ÌƒoƒCƒg‘Î‰ƒXƒNƒŠƒvƒg‚ğ–WŠQ‚µ‚È‚¢‚Æ‚¢‚¤‚±‚Ì2‚Â‚Ì–Ú•W‚ª‘Ã‹¦ˆÄ‚Æ¬—‚ğ‚à‚½
 ‚ç‚·‚±‚Æ‚à‚ ‚è‚Ü‚·‚ªA³‚µ‚¢‚±‚Æ‚ğ–Ù‚Á‚Äs‚¤A‚»‚ê‚ªPerl‚Ì•û®‚Å‚ ‚èAPerl‚Ì•û
 j‚Å‚à‚ ‚è‚Ü‚·B

 --- À—pPerlƒvƒƒOƒ‰ƒ~ƒ“ƒO ‘æ2”Å

=head1 Sjis ƒ\ƒtƒgƒEƒFƒA’a¶‚Ì‚Í‚È‚µ

 Perl3 ˆÈ~‚Ì Perl ‚ÍƒoƒCƒiƒŠƒf[ƒ^‚ğˆ—‚·‚éƒXƒNƒŠƒvƒg‚ğ‹Lq‚Å‚«‚Ü‚·B
 ‚»‚ê‚ÍŠÈ’P‚ÉŒ¾‚¦‚ÎA‚Ç‚ñ‚Èƒf[ƒ^‚Å‚àˆ—‚Å‚«‚é‚Æ‚¢‚¤‚±‚Æ‚Å‚·B
 
 ƒf[ƒ^‚Æ‚¢‚¤‚ÆA“ú–{‘“à‚Å‚Í(‚à‚Æ‚à‚Æ1981”N‚ÉCP/M-86‚Ì“à•”ˆ——p‚Æ‚µ‚ÄlˆÄ
 ‚³‚ê‚½)ƒVƒtƒgJIS•„†‰»•û®‚ªAî•ñŒğŠ·—pA‚³‚ç‚É‚Íî•ñ’~Ï—p‚Æ‚µ‚ÄL‚­g‚í
 ‚ê‚Ä‚¢‚Ü‚·B‚¾‚©‚çA‚»‚Ìƒf[ƒ^‚ğˆ—‚·‚éƒXƒNƒŠƒvƒg‚ğƒVƒtƒgJIS‚Åì¬‚·‚é‚Ì
 ‚Í‚²‚­©‘R‚È‘I‘ğ‚Å‚·B
 
 ‚Å‚àAc”O‚È‚±‚Æ‚É perl ƒCƒ“ƒ^ƒvƒŠƒ^‚ÍƒVƒtƒgJIS‚ÌPerlƒXƒNƒŠƒvƒg‚ğ‚»‚Ì‚Ü‚Ü
 ‚Å‚ÍÀs‚·‚é‚±‚Æ‚ª‚Å‚«‚È‚¢‚Ì‚Å‚·B
 
 ‚µ‚©‚µ‚È‚ª‚ç(‚ ‚È‚½‚Ì‘‚¢‚½) Perl ƒXƒNƒŠƒvƒg‚Íƒf[ƒ^‚Å‚ ‚é‚±‚Æ‚ÍŠÔˆá‚¢‚È‚¢
 ‚Ì‚ÅA(•Ê‚É—pˆÓ‚µ‚½) Perl ƒXƒNƒŠƒvƒg‚Å‚»‚ê‚ğˆ—‚µAperl ƒCƒ“ƒ^ƒvƒŠƒ^‚ÅÀs
 ‚Å‚«‚éƒXƒNƒŠƒvƒg‚É•ÏŠ·‚·‚é‚±‚Æ‚È‚çA‚Å‚«‚é‚Ì‚Å‚Í‚È‚¢‚Å‚µ‚å‚¤‚©H
 
 Œ¾ŒêAƒCƒ“ƒ^ƒvƒŠƒ^AƒXƒNƒŠƒvƒgA‚»‚ê‚¼‚ê‚ÌƒeƒLƒXƒgAƒoƒCƒiƒŠ‚Ìˆµ‚¢‚Ì‰Â”Û‚ğ
 ‚à‚¤ˆê“x‚Ü‚Æ‚ß‚Ä‚İ‚Ü‚µ‚å‚¤B‚±‚±‚Å‚ÍƒVƒtƒgJIS‚ğƒoƒCƒiƒŠ‚É•ª—Ş‚µ‚Ä‚¢‚Ü‚·B
 
 ---------------------------------------------------
                   ‘ÎÛ        ƒeƒLƒXƒg  ƒoƒCƒiƒŠ
 ---------------------------------------------------
 PerlŒ¾Œê          ƒXƒNƒŠƒvƒg  ‰Â        ‰Â
 perlƒCƒ“ƒ^ƒvƒŠƒ^  ƒXƒNƒŠƒvƒg  ‰Â        •s‰Â
 PerlƒXƒNƒŠƒvƒg    ƒf[ƒ^      ‰Â        ‰Â
 ---------------------------------------------------
 
 perl ƒCƒ“ƒ^ƒvƒŠƒ^‚ÍƒoƒCƒiƒŠ‚ÌƒXƒNƒŠƒvƒg‚ğÀs‚Å‚«‚È‚¢‚¯‚ê‚ÇAPerl Œ¾Œê‚Æ
 Perl ƒXƒNƒŠƒvƒg‚ª‚ ‚ê‚ÎA‚±‚ÌŒ‡“_‚ğƒJƒo[‚Å‚«‚»‚¤‚Év‚¦‚Ü‚·B
 
 ‚Ü‚½‹“_‚ğ•Ï‚¦‚Ä Perl ˆÈŠO‚Ì‘¼‚ÌƒvƒƒOƒ‰ƒ~ƒ“ƒOŒ¾ŒêŠÂ‹«‚ğŠÜ‚ß‚ÄŒ©“n‚µ‚½‚Æ
 ‚«A‚Ğ‚Æ‚Â‚ÌƒXƒNƒŠƒvƒgƒtƒ@ƒCƒ‹’†‚É•¡”‚Ì•„†‰»•û®‚ÅƒŠƒeƒ‰ƒ‹•¶š—ñ‚ğ‹Lq
 ‚·‚éƒP[ƒX‚Í‚ ‚é‚Ì‚Å‚µ‚å‚¤‚©H
 
 ‚Ğ‚Æ‚Â‚ÌƒXƒNƒŠƒvƒg’†‚ÌƒŠƒeƒ‰ƒ‹•¶š—ñ‚Ì•„†‰»•û®‚Í‚Ğ‚Æ‚Â‚Å[•ª‚Å‚·B
 (c‚è‚Ì•„†‰»•û®‚Í16iƒGƒXƒP[ƒv‚Å‹Lq‚·‚é‚Æ‚¢‚¤‚±‚Æ‚Å‚·B)
 
 ‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚Í‚»‚Ì‚æ‚¤‚ÈƒAƒCƒfƒBƒAE‘O’ñğŒ‚É‚æ‚Á‚Äì‚èn‚ß‚ç‚ê‚Ü‚µ
 ‚½B

=head1 Ql•¶Œ£AƒŠƒ“ƒN

 PerlƒvƒƒOƒ‰ƒ~ƒ“ƒO
 Larry Wall, Randal L.Schwartz, ‹ß“¡ ‰Ãá –ó
 1993”N2Œ ”­s
 ISBN 4-89052-384-7
 http://www.context.co.jp/~cond/books/old-books.html

 ƒvƒƒOƒ‰ƒ~ƒ“ƒOPerl ‰ü’ù”Å
 By Larry Wall, Tom Christiansen, Randal L. Schwartz, ‹ß“¡ ‰Ãá –ó
 1997”N12Œ ”­s
 759ƒy[ƒW
 ISBN 4-900900-48-6
 http://www.oreilly.co.jp/out/pperl/index.htm

 ƒvƒƒOƒ‰ƒ~ƒ“ƒOPerl ‘æ3”Å VOLUME 1
 By Larry Wall, Tom Christiansen, Jon Orwant, ‹ß“¡ ‰Ãá –ó
 2002”N09Œ ”­s
 756ƒy[ƒW
 ISBN 4-87311-096-3
 http://www.oreilly.co.jp/books/4873110963/

 ƒvƒƒOƒ‰ƒ~ƒ“ƒOPerl ‘æ3”Å VOLUME 2
 By Larry Wall, Tom Christiansen, Jon Orwant, ‹ß“¡ ‰Ãá –ó
 2002”N09Œ ”­s
 680ƒy[ƒW
 ISBN 4-87311-097-1
 http://www.oreilly.co.jp/books/4873110971/

 The Perl Language Reference Manual (for Perl version 5.12.1)
 by Larry Wall and others
 Paperback (6"x9"), 724 pages
 Retail Price: $39.95 (pound 29.95 in UK)
 ISBN 13: 978-1-906966-02-7
 http://www.network-theory.co.uk/perl/language/

 Perl Pocket Reference, 5th Edition
 By Johan Vromans
 Publisher: O'Reilly Media
 Released: July 2011
 Pages: 102
 http://shop.oreilly.com/product/0636920018476.do

 Programming Perl, 4th Edition
 By: Tom Christiansen, brian d foy, Larry Wall, Jon Orwant
 Publisher: O'Reilly Media
 Formats: Print, Ebook, Safari Books Online
 Released: March 2012
 Pages: 1130
 Print ISBN: 978-0-596-00492-7 | ISBN 10: 0-596-00492-3
 Ebook ISBN: 978-1-4493-9890-3 | ISBN 10: 1-4493-9890-1
 http://shop.oreilly.com/product/9780596004927.do

 PerlƒNƒbƒNƒuƒbƒN ‘æ2”Å VOLUME 1
 By Tom Christiansen, Nathan Torkington, Shibuya Perl Mongers ŠÄ–ó, Š”®‰ïĞƒhƒLƒ…ƒƒ“ƒgƒVƒXƒeƒ€ –ó
 2004”N09Œ ”­s
 752ƒy[ƒW
 ISBN 4-87311-202-8
 http://www.oreilly.co.jp/books/4873112028/

 PerlƒNƒbƒNƒuƒbƒN ‘æ2”Å VOLUME 2
 By Tom Christiansen, Nathan Torkington, Shibuya Perl Mongers ŠÄ–ó, Š”®‰ïĞƒhƒLƒ…ƒƒ“ƒgƒVƒXƒeƒ€ –ó
 2004”N09Œ ”­s
 464ƒy[ƒW
 ISBN 4-87311-203-6
 http://www.oreilly.co.jp/books/4873112036/

 PerlƒNƒCƒbƒNƒŠƒtƒ@ƒŒƒ“ƒX
 By Stephen Spainhour, Ellen Siever, Nathan Patwardhan, ‹ß“¡ ‰Ãá, ‘äê Œ\ˆê ŠÄ–ó
 2000”N03Œ ”­s
 784ƒy[ƒW
 ISBN 4-900900-72-9
 http://www.oreilly.co.jp/books/4900900729/

 ‰‚ß‚Ä‚ÌPerl Win32ƒVƒXƒeƒ€
 Randal L. Schwartz, Erik Olson, Tom Christiansen ’˜, —L”n O˜Y ŠÄ–ó, ÎŒ´ ’q_ –ó
 1998”N11Œ ”­s
 348ƒy[ƒW
 ISBN 4-900900-79-6
 http://www.oreilly.co.jp/books/4900900796/

 ‰‚ß‚Ä‚ÌPerl ‘æ5”Å
 Randal L. Schwartz, Tom Phoenix, brian d foy ’˜
 2009”N10Œ24“ú ”­”„
 424ƒy[ƒW
 ISBN 978-4-87311-427-9
 http://www.oreilly.co.jp/books/9784873114279/

 ‰‚ß‚Ä‚ÌPerl ‘æ6”Å
 Randal L. Schwartz, brian d foy, Tom Phoenix ’˜, ‹ß“¡ ‰Ãá –ó
 2012”N07Œ ”­s
 488ƒy[ƒW
 ISBN 978-4-87311-567-2
 http://www.oreilly.co.jp/books/9784873115672/

 À—p PerlƒvƒƒOƒ‰ƒ~ƒ“ƒO ‘æ2”Å
 Simon Cozens ’˜, ›–ì —Ç“ñ –ó
 2006”N03Œ ”­s
 320ƒy[ƒW
 ISBN 4-87311-280-X
 http://www.oreilly.co.jp/books/487311280X/

 PerlƒŠƒ\[ƒXƒLƒbƒg - UNIX”Å
 Futato, Irving, Jepson, Patwardhan, Siever ‹¤’˜, ƒCƒGƒ[ƒŒ[ƒxƒ‹ R–{ _ –ó
 ISBN 4-900900-65-6
 http://www.oreilly.co.jp/out/presuni/

 Perl‚Ì‘‚Ö‚æ‚¤‚±‚»
 ‘O“cŒO, ¬R—Ti, Ä“¡–õ, •z{—Ll ‹¤’˜
 1993”N4Œ1“ú ”­s
 280ƒy[ƒW
 ISBN 4-7819-0697-4
 http://www.saiensu.co.jp/?page=book_details&ISBN=ISBN4-7819-0697-4
 
 VPerl‚Ì‘‚Ö‚æ‚¤‚±‚» Perl5‘Î‰”Å
 Ä“¡–õ, ¬R—Ti, ‘O“cŒO, •z{—Ll ‹¤’˜
 1996”N4Œ1“ú ”­s
 368ƒy[ƒW
 ISBN 4-7819-0795-4
 http://www.saiensu.co.jp/?page=book_details&ISBN=ISBN4-7819-0795-4
 
 ‚Ü‚é‚²‚ÆPerl! Vol.1
 ¬”’e, ‹{ì’B•F, ˆÉ“¡’¼–ç, ì‡F“T, …–ì‹M–¾, ‰Á“¡ “Ö, ÎŠ_Œ›ˆê, ŒIŒ´—R÷, ‚Ü‚©‚Ü‚©, ’rç³’q—m, ma.la, ’|”——Ç”Í, ‚³‚³‚¾‚±‚¤‚¢‚¿, ‰Â’m–L, HR—²“¹, ‹v•ÛŒ³¡, ‘êàV—²j, ‰Ì‘ã˜a³ ’˜
 2006”N08Œ25“ú ”­”„
 232ƒy[ƒW
 ISBN 978-4-8443-2289-4
 http://www.impressjapan.jp/books/2289

 ƒ‚ƒ_ƒ“Perl“ü–å
 –q‘å•ã’˜
 2009”N02Œ09“ú
 344ƒy[ƒW
 ISBN 10: 4798119172 | ISBN 13: 978-4798119175
 http://www.seshop.com/product/detail/10250/

 WEB+DB PRESS Vol.70
 2012”N08Œ24“ú ”­”„
 200ƒy[ƒW
 ISBN 978-4-7741-5190-8
 http://gihyo.jp/magazine/wdpress

 “ú–{Œêî•ñˆ—
 Understanding Japanese Information Processing
 By Ken Lunde, t•Õ ˜Ò, —é–Ø •¶ –ó
 1995”N8Œ ”­s
 496ƒy[ƒW
 ISBN 4-89052-708-7
 http://www.fukkan.com/vote.php3?no=4293

 CJKV“ú’†ŠØ‰zî•ñˆ—
 Chinese, Japanese, Korean & Vietnamese Computing
 By Ken Lunde, ¬¼ Í, ‹tˆä ŒÈ –ó
 2002”N12Œ ”­s
 1172ƒy[ƒW
 ISBN 4-87311-108-0
 http://www.oreilly.co.jp/books/4873111080/

 Úà ³‹K•\Œ» ‘æ2”Å
 By Jeffrey E. F. Friedl, “c˜a Ÿ –ó
 2003”N05Œ ”­s
 464ƒy[ƒW
 ISBN 4-87311-130-7
 http://www.oreilly.co.jp/books/4873111307/

 Úà ³‹K•\Œ» ‘æ3”Å
 By Jeffrey E. F. Friedl, Š”®‰ïĞƒƒ“ƒOƒe[ƒ‹^’·”ö ‚O –ó
 2008”N04Œ ”­s
 528ƒy[ƒW
 ISBN 978-4-87311-359-3
 http://www.oreilly.co.jp/books/9784873113593/

 ³‹K•\Œ»ƒNƒbƒNƒuƒbƒN
 Jan Goyvaerts, Steven Levithan ’˜, ’·”ö ‚O –ó
 2010”N04Œ ”­s
 552ƒy[ƒW
 ISBN 978-4-87311-450-7
 http://www.oreilly.co.jp/books/9784873114507/

 JISŠ¿šš“T
 Å–ì ki •Ò’˜
 1456 •Å
 ISBN 4-542-20129-5
 http://www.webstore.jsa.or.jp/lib/lib.asp?fn=/manual/mnl01_12.htm

 ƒCƒ“ƒ^[ƒlƒbƒg‘ã‚Ì•¶šƒR[ƒh
 ¬—Ñ —´¶, ˆÀ‰ª Fˆê, ŒË‘º “N, Oã Šì‹M •Ò
 285 €
 ISBN 4-320-12038-8
 http://www.kyoritsu-pub.co.jp/bookdetail/9784320120389

 •¶š•„†‚Ì—ğj\‰¢•Ä‚Æ“ú–{•Ò\
 ˆÀ‰ª Fˆê, ˆÀ‰ª ‘fq ’˜
 2006”N2Œ10“ú ”­s
 288ƒy[ƒW
 ISBN 4-320-12102-7
 http://www.kyoritsu-pub.co.jp/bookdetail/9784320121027

 •¶š•„†‚Ì—ğj ƒAƒWƒA•Ò
 Oã Šì‹M ’˜
 2002”N3Œ20“ú ”­s
 377ƒy[ƒW
 ISBN 4-320-12040-X
 http://www.amazon.co.jp/gp/product/432012040X

 Unicode•W€“ü–å
 ƒgƒj[EƒOƒ‰ƒnƒ€ ’˜, Š£ ˜au, ŠC˜V’Ë “O –ó, ŠÖŒû ³—T ŠÄC
 2001”N5Œ29“ú ”­s
 455ƒy[ƒW
 ISBN 4-7981-0030-7
 http://www.seshop.com/product/detail/2276/

 Unicode‚É‚æ‚éJIS X 0213À‘•“ü–å
 “cŠÛ Œ’O˜Y ’˜
 2008”N8Œ25“ú ”­s
 200ƒy[ƒW
 ISBN 978-4-89100-608-2
 http://ec.nikkeibp.co.jp/item/books/A04500.html

 Unicode IVS/IVD“ü–å
 “cŠÛ Œ’O˜Y, ¬—Ñ —´¶ ’˜
 2013”N03Œ04“ú ”­s
 336ƒy[ƒW
 ISBN 978-4-82229-483-0
 http://store.nikkeibp.co.jp/item/books/P94830.html

 UNIX MAGAZINE
 1993”N8Œ†
 172ƒy[ƒW
 T1008901080816 G08901-8
 http://ascii.asciimw.jp/books/books/detail/978-4-7561-5008-0.shtml

 LINUX“ú–{ŒêŠÂ‹«
 RŒ`_¶, Stephen J. Turnbull, Craig ¬“c, Robert J. Bickel ’˜
 2000”N06Œ ”­s
 376ƒy[ƒW
 ISBN 4-87311-016-5
 http://www.oreilly.co.jp/books/4873110165/

 MacPerl“ü–å
 Vicki Brown, Chris Nandor ’˜, (Š”)ƒRƒXƒ‚Eƒvƒ‰ƒlƒbƒg –ó
 1999”N03Œ ”­s
 399ƒy[ƒW
 ISBN 4-7561-3068-2

 Macintoshƒf[ƒ^Šˆ—pp
 Î“c –L ’˜
 1995”N2Œ ”­s
 230ƒy[ƒW
 ISBN 4-89563-408-6

 MPWƒvƒƒOƒ‰ƒ~ƒ“ƒOuÀ
 Handmade Intelligence ’˜
 1992”N8Œ ”­s
 346ƒy[ƒW
 ISBN 4-7561-0963-2

 ƒZƒLƒ…ƒAWebƒvƒƒOƒ‰ƒ~ƒ“ƒOTipsW
 ²–¼–Ø ’q‹M ’˜
 2008”N3Œ ”­s
 421ƒy[ƒW
 ISBN 10: 4883732568
 ISBN 13: 978-4883732562

 Windows NTƒVƒFƒ‹ƒXƒNƒŠƒvƒg
 Tim Hill ’˜, Œõ“cG –ó
 1998”N10Œ6“ú ”­s
 448ƒy[ƒW
 ISBN 4-7973-0658-0
 http://books-support.sbcr.jp/isbn/macmillan/ntwrkshp/index.htm

 ƒ}ƒCƒNƒƒ\ƒtƒgŒö®‰ğà‘ Microsoft Windows ƒRƒ}ƒ“ƒhƒ‰ƒCƒ“Šˆ—pƒKƒCƒh
 2004”N12Œ27“ú ”­s
 500ƒy[ƒW
 ISBN 4-89100-438-X
 http://ec.nikkeibp.co.jp/item/books/587500.html

 ’·’Jì —E‚³‚ñ, ‘Û‰»³‹K•\Œ»ƒ‰ƒCƒuƒ‰ƒŠ‚È‚Ç
 http://lc.linux.or.jp/lc2001/papers/dfa-i18n-paper.pdf
 http://lc.linux.or.jp/lc2002/papers/hasegawa0918h.pdf
 http://lc.linux.or.jp/lc2002/papers/hasegawa0918p.pdf
 http://www.j-tokkyo.com/2003/G06F/JP2003-242179.shtml

 ‘O“c ‘×¬‚³‚ñ, ƒ}ƒ‹ƒ`ƒoƒCƒg•¶šƒZƒbƒg—p³‹K•\Œ»ƒRƒ“ƒpƒCƒ‰\¬•û–@‹y‚ÑƒvƒƒOƒ‰ƒ€ 
 http://patent.astamuse.com/ja/published/JP/No/2007102744

 YAMAGAKI Norio, ƒ}ƒ‹ƒ`ƒoƒCƒgˆ—Œü‚¯•¶š—ñÆ‡—p—LŒÀƒI[ƒgƒ}ƒgƒ“¶¬ƒVƒXƒeƒ€
 http://www.wipo.int/pctdb/ja/wo.jsp?WO=2009116646&IA=JP2009055515

 Tokyo-pm •Û‘¶‘ŒÉ
 http://mail.pm.org/pipermail/tokyo-pm/
 http://mail.pm.org/pipermail/tokyo-pm/1999-September/001844.html
 http://mail.pm.org/pipermail/tokyo-pm/1999-September/001854.html

 ruby-list
 http://blade.nagaokaut.ac.jp/ruby/ruby-list/index.shtml
 http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/2440
 http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/2446
 http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/2569
 http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/9427
 http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/9431
 http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/10500
 http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/10501
 http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/10502
 http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/12385
 http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/12392
 http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/12393
 http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/19156

 Object-oriented with Perl
 http://www.freeml.com/perl-oo/486
 http://www.freeml.com/perl-oo/487
 http://www.freeml.com/perl-oo/490
 http://www.freeml.com/perl-oo/491
 http://www.freeml.com/perl-oo/492
 http://www.freeml.com/perl-oo/494
 http://www.freeml.com/perl-oo/514

 CPAN Directory INABA Hitoshi
 http://search.cpan.org/~ina/

 BackPAN
 http://backpan.perl.org/authors/id/I/IN/INA/

 Recent Perl packages by "INABA Hitoshi"
 http://code.activestate.com/ppm/author:INABA-Hitoshi/

=head1 Ó«

c”O‚È‚ª‚çAŠ´Ó‚·‚é‚·‚×‚Ä‚Ìl‚ğ‚±‚±‚É‘‚­‚±‚Æ‚ª‚Å‚«‚Ü‚¹‚ñB‚»‚¤‚¾‚©‚ç‚Æ‚¢‚Á‚ÄA‚»‚ê
‚ğ——R‚É‚µ‚ÄˆÈ‰º‚Ì•ûX‚Ö‚ÌŠ´Ó‚ÍÈ—ª‚·‚é‚í‚¯‚É‚Í‚¢‚©‚È‚¢‚Å‚µ‚å‚¤B

 R‰º —Ç‘ ‚³‚ñ, ƒVƒtƒgJIS‚ÌƒfƒUƒCƒ“‚Ì˜b
 ttp://furukawablog.spaces.live.com/Blog/cns!1pmWgsL289nm7Shn7cS0jHzA!2225.entry (ƒŠƒ“ƒNØ‚ê)
 ttp://shino.tumblr.com/post/116166805/1981-us-jis
 (æ“ª‚É 'h' ‚ğ•t‰Á‚µ‚ÄƒAƒNƒZƒX‚µ‚Ä‚­‚¾‚³‚¢)
 http://www.wdic.org/w/WDIC/%E3%82%B7%E3%83%95%E3%83%88JIS
 
 “ú–{Œêî•ñˆ—‚ğs‚¤ÛA‚¢‚Ü‚à‚Á‚ÄƒVƒtƒgJIS‚Ù‚ÇÀ—p“I‚È•„†‰»•û®‚Í‚ ‚è‚Ü‚¹‚ñB
 ‚»‚Ì——R‚Í3‚Â‚ ‚é‚Æv‚¢‚Ü‚·B
 
 1. Šù‘¶‚Ì”¼ŠpƒJƒ^ƒJƒi‚Ìƒf[ƒ^‚Æ‚»‚Ì‚Ü‚Ü‹¤‘¶‚Å‚«‚éB‰ß‹‚Ì‘Y‚ğŒ»İ‚ÉŒp³‚Å‚«‚é‚Æ
   ‚¢‚¤‚±‚Æ‚ÍAŒ»İ‚Ì‘Y‚ğ–¢—ˆ‚ÖŒp³‚Å‚«‚é‚±‚Æ‚ğ¦´‚µ‚Ä‚¢‚Ü‚·B
 2. codepoint ‚Æ grapheme ‚Ì’PˆÊ‚ªˆê’v‚·‚éB‚±‚Ì‚¨‚©‚°‚ÅƒVƒXƒeƒ€‚ğì‚é‚Ğ‚Æ‚Æg‚¤‚Ğ‚Æ
   ‚ÌŠÔ‚Åê’ê—‚ª”­¶‚µ‚Ü‚¹‚ñB
 3. ƒƒ‚ƒŠã‚Ìè—L•‚Æ•\¦Eˆóšã‚Ìè—L•‚ªˆê’v‚·‚éB‚±‚ÌH•v‚ª‰æ–ÊİŒvA’ •[İŒvA
   ‚»‚ê‚ÉƒJ[ƒ\ƒ‹‚ÌˆÚ“®ˆ—‚É–ğ—§‚¿‚Ü‚·B
 
 1981”N‚Ì“_‚ÅA‚±‚±‚Ü‚Ål‚¦‚Ä‚¢‚½R‰º‚³‚ñ‚ÍƒnƒbƒJ[‚ÆŒÄ‚Ô‚É‚Ó‚³‚í‚µ‚¢‚Å‚µ‚å‚¤B

 Larry Wall ‚³‚ñ, Perl
 http://www.perl.org/
 
 Perl ‚ª³‹K•\Œ»‚É‚æ‚Á‚ÄƒoƒCƒiƒŠƒf[ƒ^‚ğˆµ‚¦‚é‚±‚Æ‚ÅA‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚ª¬—§‚µ‚Ä‚¢
 ‚Ü‚·Bƒo[ƒWƒ‡ƒ“ŠÔ‚ÌŒİŠ·«‚Ì‚‚³‚É‚à•‚¯‚ç‚ê‚Ü‚µ‚½B³‹K•\Œ»‚Ìƒƒ^•¶š‚âŠeíƒNƒH[
 ƒg‚ÌƒfƒŠƒ~ƒ^‚ÍA‰ğŒˆ‚·‚×‚«‘ÎÛ‚Å‚ ‚éˆê•û‚ÅA‰ğŒˆ‚·‚éÛ‚Ìè’i‚Æ‚µ‚Ä‚à–ğ—§‚¿‚Ü‚·B
 ‚à‚µ Perl ‚ª‚È‚¯‚ê‚ÎA–â‘è‚à‘¶İ‚¹‚¸A‚Ü‚½‚»‚ê‚ğ‰ğŒˆ‚·‚éŠì‚Ñ‚à‚È‚¢‘Ş‹ü‚Èl¶‚ğ‘—
 ‚é‚Æ‚±‚ë‚Å‚µ‚½B
 
 ‚¾‚©‚ç Larry Wall ‚³‚ñ‚É‚Í‚Æ‚Á‚Ä‚àŠ´Ó‚µ‚Ä‚¢‚Ü‚·I

 ‰Ì‘ã ˜a³‚³‚ñ, jcode.pl
 ftp://ftp.iij.ad.jp/pub/IIJ/dist/utashiro/perl/
 http://log.utashiro.com/pub/2006/07/jkondo_a580.html
 
 Å‰‚É Perl ‚Éo‰ï‚Á‚½‚Ì‚Í‰Ì‘ã‚³‚ñ‚Ì‘‚©‚ê‚½ UNIX MAGAZINE ‚Ì‹L–‚Å‚µ‚½Bƒtƒ@ƒCƒ‹
 ƒeƒXƒg‰‰Zq -TA-B ‚Ì‹@”\‚ğÀŒ»‚·‚éƒR[ƒh‚Í‹L–‚É‘‚©‚ê‚½‚à‚Ì‚ğ‚Ù‚Ú‚»‚Ì‚Ü‚Üg‚Á‚Ä
 ‚¢‚Ü‚·B‚Ü‚½“ú–{Œêî•ñˆ—‚ğ·•M‚³‚ê‚½‚ ‚Ì Ken Lunde ‚³‚ñ‚Ìæ¶‚Å‚à‚ ‚é‚µAJeffrey
 E. F. Friedl ‚³‚ñ‚ÌÚà³‹K•\Œ»‚ÌŠÄ–ó‚à‚³‚ê‚Ä‚¢‚ÄA‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚ÌüˆÍ‚É‚Íí‚É
 ‰Ì‘ã‚³‚ñ‚ª“oê‚µ‚Ü‚·B
 
 Tokyo.pm ‚Ìƒ[ƒŠƒ“ƒOƒŠƒXƒg‚Å‚ÍAV‚µ‚¢‹@”\‚ğÀŒ»‚·‚é‚½‚ß‚ÉV‚½‚ÉÀ‘•‚ğ‚·‚éê‡‚Å‚àA
 ‰ß‹‚Éì‚ç‚ê‚½ƒ\ƒtƒgƒEƒFƒA‚Æ“¯ˆê‚ÌƒCƒ“ƒ^ƒtƒF[ƒX‚É‚·‚é‚Æ‚¢‚¤A‚æ‚¢ƒAƒCƒfƒBƒA‚ğ‹³‚í
 ‚è‚Ü‚µ‚½B
 
 æ‚Ù‚ÇüˆÍ‚ÆŒ¾‚¢‚Ü‚µ‚½‚ªAÀ‚Í‚»‚ê‚Í“–‘R‚Ì‚±‚Æ‚ÅA‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚Í jcode.pl ‚Ì
 ƒ\[ƒX‚ğ‚à‚Æ‚É‚µ‚Äì¬‚³‚ê‚½‚©‚ç‚Å‚·B‚¾‚©‚ç‰½‚ğ‚Ç‚¤l‚¦‚Ä‚à‰Ì‘ã‚³‚ñ‚È‚µ‚ÅA‚±‚Ìƒ\
 ƒtƒgƒEƒFƒA‚ª¶‚Ü‚ê‚é‚±‚Æ‚Í‚È‚©‚Á‚½‚Æv‚¤‚Ì‚Å‚·B

 Jeffrey E. F. Friedl ‚³‚ñ, Úà³‹K•\Œ»
 http://regex.info/
 
 Úà³‹K•\Œ»(‘æ2”Å)‚ğ‚Í‚¶‚ß‚Ä“Ç‚ñ‚¾‚Æ‚«A‰½‚ª‘‚¢‚Ä‚ ‚é‚Ì‚©‘S‚­—‰ğ‚Å‚«‚¸A‚Ä‚Á‚«‚è
 ‰pŒê”Å‚ğ”ƒ‚Á‚Ä‚µ‚Ü‚Á‚½‚Ì‚Å‚Í‚È‚¢‚©‚Æ‹^‚Á‚½‚Ù‚Ç‚Å‚µ‚½B‚µ‚©‚µ‚È‚ª‚ç P.340 Matching
 Nested Constructs with Embedded Code ‚ª©•ª‚ª•K—v‚Æ‚µ‚Ä‚¢‚éƒR[ƒh‚¾‚Æ‹C‚Ã‚¢‚½‚Æ‚«‚Í
 ‚Æ‚Ä‚àŠğ‚µ‚©‚Á‚½‚Ì‚ğŠo‚¦‚Ä‚¢‚Ü‚·(‚æ‚­Œ©‚½‚ç‰pŒê”Å‚Å‚µ‚½)B
 
 ‚»‚ñ‚È‚í‚¯‚ÅƒlƒXƒg‚µ‚½Š‡ŒÊ‚ğˆ—‚Å‚«‚é‚Ì‚ÍA•¶}(Fumie)‚³‚ñ‚Ì‚¨‚©‚°‚Å‚·B
 („‚ÌŠ´Ó‚ª“`‚í‚è‚Ü‚·‚æ‚¤‚É...B)

 Ken Lunde ‚³‚ñ, “ú–{Œêî•ñˆ—ACJKV“ú’†ŠØ‰zî•ñˆ—
 http://www.fukkan.com/vote.php3?no=4293
 http://www.oreilly.co.jp/books/4873111080/
 
 u“ú–{Œêî•ñˆ—vuCJKV“ú’†ŠØ‰zî•ñˆ—v‚ğ“Ç‚ñ‚Å•¶šW‡‹KŠi‚Æ•„†‰»•û®‚ğŠw‚ÑA
 •¶š‰»‚¯‚É‚Â‚¢‚Ä—‰ğ‚ª[‚Ü‚è‚Ü‚µ‚½B•¶š‰»‚¯‚ÌŒ´ˆö‚Ì‚Ğ‚Æ‚Â‚Æ‚µ‚Äu—˜—pÒ‚ÌˆÓv‚ÆˆÙ
 ‚È‚éA•„†‰»•û®‚Ì•ÏŠ·(‚ªs‚í‚ê‚Ä‚µ‚Ü‚¤)v‚ª‹“‚°‚ç‚ê‚Ü‚·B‚»‚ê‚ğ–h‚®‚½‚ß‚ÉA‚±‚Ì
 ƒ\ƒtƒgƒEƒFƒA‚Í•„†‰»•û®‚ğ•ÏŠ·‚¹‚¸‚Éî•ñˆ—‚ğs‚¢‚Ü‚·B—˜—pÒ‚ÌˆÓv‚ª‚Ç‚¤‚Å‚ ‚Á‚½
 ‚Æ‚µ‚Ä‚àA‚»‚ÌˆÓv‚ÆˆÙ‚È‚é•ÏŠ·‚ª‚³‚ê‚é‚±‚Æ‚Í‚ ‚è‚Ü‚¹‚ñB
 
 Appendix W: Perl Code Examples ‚Ì’†‚Ì CJKV Encoding TemplatesAMultiple-Byte
 AnchoringAMultiple-Byte Processing ‚ª‚Æ‚Ä‚àQl‚É‚È‚è‚Ü‚µ‚½B

 ’åœA ’ms‚³‚ñ, Shift-JISƒeƒLƒXƒg‚ğ³‚µ‚­ˆµ‚¤
 http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
 
 uShift-JISƒeƒLƒXƒg‚ğ³‚µ‚­ˆµ‚¤v‚ÅAPerl‚ÅShiftJIS‚ğˆµ‚¤‚Æ‚«‚ÌƒmƒEƒnƒE‚ğ‹³‚¦‚Ä
 ’¸‚«A‚ ‚è‚ª‚Æ‚¤‚²‚´‚¢‚Ü‚·B‚±‚ÌƒTƒCƒg‚Ì“à—e‚ğ‚à‚Æ‚ÉAƒXƒNƒŠƒvƒg’†‚ÌƒŠƒeƒ‰ƒ‹•¶š—ñ
 ‚Ìuƒ\v‚ğuƒ\\v‚É•ÏŠ·‚·‚éƒtƒBƒ‹ƒ^ƒvƒƒOƒ‰ƒ€‚ğì‚é‚Æ‚±‚ë‚©‚çn‚ßA—áŠO‚ğ­‚µ‚¸‚Â
 ‘‚«‰Á‚¦‚Ä‚¢‚­‚±‚Æ‚Å‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚ªì‚ç‚ê‚Ä‚¢‚«‚Ü‚µ‚½B
 
 u’·‚¢•¶š—ñ‚É‘Î‚·‚é³‹K•\Œ»ŒŸõv‚É‚Â‚¢‚Ä‚àÀ‘•‚ÉŠˆ‚©‚·‚±‚Æ‚ª‚Å‚«‚Ü‚µ‚½B
 ‚à‚µ‚±‚ÌƒTƒCƒg‚ğŒ©‚È‚©‚Á‚½‚Ì‚È‚çASjisƒ\ƒtƒgƒEƒFƒA‚ğì‚ê‚½‚©‚Ç‚¤‚©’è‚©‚Å‚Í‚ ‚è‚Ü‚¹
 ‚ñB

 ‚Ü‚Â‚à‚Æ ‚ä‚«‚Ğ‚ë‚³‚ñ, Ruby on Perl(s)
 http://www.rubyist.net/~matz/slides/yapc2006/
 
 YAPC::Asia 2006 Tokyo "Ruby on Perl(s)" ‚ÅuCSI‚Í•s‰Â”\‚¶‚á‚È‚¢v‚±‚Æ‚ğ•ª‚©‚è‚â‚·
 ‚­‹³‚¦‚Ä‚à‚ç‚¢‚Ü‚µ‚½B¡“x Ruby ”Å‚ğì‚é‚±‚Æ‚É‚È‚Á‚½‚çA‚æ‚ë‚µ‚­‚¨Šè‚¢‚µ‚Ü‚·B

 “¡‰ª ˜a•v‚³‚ñ, jperlƒ†[ƒU[‚Ì‚½‚ß‚É
 http://homepage1.nifty.com/kazuf/jperl.html
 
 ver.0.71 ‚ğì¬‚·‚éÛA„‚ª’¼Ú—˜—p‚Å‚«‚È‚¢ŠÂ‹«‚Å‚ÌƒeƒXƒg‚Ì‚½‚ß‚É60‰ñ‚à‚Ìƒ[ƒ‹‚Ì
 ‚â‚èæ‚è‚ğ‚µA’š”J‚ÉƒfƒoƒbƒO‚É•t‚«‡‚Á‚Ä’¸‚«‚Ü‚µ‚½B‚ ‚è‚ª‚Æ‚¤‚²‚´‚¢‚Ü‚µ‚½B

 Bruce. ‚³‚ñ, Unicode in Perl
 http://www.rakunet.org/tsnet/TSabc/18/546.html

 ˜aò G–¾‚³‚ñ, Windows‚ÅPerl 5.8/5.10‚ğg‚¤ƒ‚ƒ“‚¶‚á‚È‚¢
 http://dl.dropbox.com/u/23756062/perlwin.html
 https://sites.google.com/site/hiroa63iz/perlwin

 ’Ë–{ –q¶‚³‚ñ, Perlƒƒ‚/Windows‚Å‚Ìƒtƒ@ƒCƒ‹ƒpƒX
 http://digit.que.ne.jp/work/wiki.cgi?Perl%E3%83%A1%E3%83%A2%2FWindows%E3%81%A7%E3%81%AE%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%91%E3%82%B9

 chaichanPaPa‚³‚ñ, ƒVƒtƒgJISŠ¿š‚Ìƒtƒ@ƒCƒ‹–¼‚Éƒ}ƒbƒ`‚µ‚Ä‚İ‚é
 http://d.hatena.ne.jp/chaichanPaPa/20080802/1217660826

 —é–Ø ‹I•v‚³‚ñ, Jperl
 http://homepage2.nifty.com/kipp/perl/jperl/

 “n•Ó ”•¶‚³‚ñ, Jperl
 http://www.cpan.org/src/5.0/jperl/
 http://search.cpan.org/~watanabe/
 ftp://ftp.oreilly.co.jp/pcjp98/watanabe/jperlconf.ppt
 
 The Perl Confernce Japan (1998)‚ÅJperlŠJ”­‚ÌŒoˆÜ‚ğ•·‚©‚¹‚Ä‚à‚ç‚¢‚Ü‚µ‚½BJPerl ‚©‚ç
 ‚ÍA“ú–{Œê‘Î‰”Å‚Ì Perl ‚Í‚Ç‚Ì‚æ‚¤‚È‚à‚Ì‚ªg‚¢‚â‚·‚¢‚Ì‚©‚ğ‹³‚í‚è‚Ü‚µ‚½Btr///b ‚à
 ord ‚à reverse ‚à‚İ‚ñ‚È JPerl ‚Ì“®ì‚ğ^—‚µ‚Ü‚µ‚½(‚¨‚©‚°‚ÅƒeƒXƒgƒvƒƒOƒ‰ƒ€‚Ü‚Å
 ‚à‚ç‚¤‚±‚Æ‚ª‚Å‚«‚Ü‚µ‚½)B
 
 „‚à“n•Ó‚³‚ñ‚Ì‚Æ‚«‚Æ“¯‚¶‚­’N‚©‚ª‘‚­‚ñ‚¶‚á‚È‚¢‚©‚Æ(¡‚à)‘Ò‚¿‘±‚¯‚Ä‚¢‚é‚í‚¯‚Å‚·‚ªA
 ‘Ò‚Á‚Ä‚¢‚éŠÔ‚É Perl ‚Åƒvƒƒgƒ^ƒCƒv‚ğì‚Á‚Ä‚¨‚«‚Ü‚µ‚½B‘Ò‚Â‚Ì‚ÍŠy‚µ‚¢‚±‚Æ‚Å‚·B

 Chuck Houpt ‚³‚ñ, –ì’Ã ”ü’qq‚³‚ñ, MacJPerl
 http://habilis.net/macjperl/index.j.html

 ÎŠ_ Œ›ˆê‚³‚ñ, Pod-PerldocJp, ƒ‚ƒ_ƒ“Perl‚Ì¢ŠE‚Ö‚æ‚¤‚±‚»
 http://search.cpan.org/dist/Pod-PerldocJp/
 http://gihyo.jp/dev/serial/01/modern-perl/0031
 http://gihyo.jp/dev/serial/01/modern-perl/0032
 http://gihyo.jp/dev/serial/01/modern-perl/0033
 
 uƒ‚ƒ_ƒ“Perl‚Ì¢ŠE‚Ö‚æ‚¤‚±‚»v‚Ì˜AÚ‚ª‚Æ‚Ä‚àQl‚É‚È‚è‚Ü‚·B“Á‚É‘æ31‰ñ‚©‚ç‘æ33‰ñ‚Í
 JPerl ‚ÉŠÖ˜A‚µ‚½“à—e‚ÅA‹Zp“I‚É‚à—ğj“I‚É‚à‚Æ‚Ä‚àãk–§‚È‹L–‚Å‚·B
 
 ‚±‚Ìƒ\ƒtƒgƒEƒFƒA‚ªƒ‚ƒ_ƒ“Perl‚Ö‚Ì‰Ë‚¯‹´‚Æ‚µ‚Ä–ğ—§‚Ä‚ÎK‚¢‚Å‚·B

 “¡ Œá˜Y‚³‚ñ, Perl Hackers Hub ‘æ16‰ñ Perl“à•”\‘¢‚Ì[‰“‚É”—‚é(2)
 http://gihyo.jp/dev/serial/01/perl-hackers-hub/001602

 ¬” ’e‚³‚ñ, Encode ƒ‚ƒWƒ…[ƒ‹
 http://search.cpan.org/dist/Encode/
 http://www.archive.org/details/YAPCAsia2006TokyoPerl58andUnicodeMythsFactsandChanges (“®‰æ)
 http://yapc.g.hatena.ne.jp/jkondo/ (‰¹º)
 
 YAPC::Asia 2006 Tokyo "Perl5.8 and Unicode: Myths, Facts and Changes" ‚Å Perl5.8
 ‚Å‚Ì•ÏX“_‚ğÚ‚µ‚­‹³‚¦‚Ä‚à‚ç‚¢‚Ü‚µ‚½BCPAN ‚Ì face icon ‚Í‚±‚ÌƒXƒ‰ƒCƒh‚Éo‚Ä‚­‚é
 Perl5.6 = a city without bridges ‚Ì‰æ‘œ‚©‚çƒqƒ“ƒg‚ğ“¾‚Ä‚¢‚Ü‚·B

 ‚‹´ ³„‚³‚ñ, JPerl Wiki
 http://ja.jperl.wikia.com/wiki/JPerl_Wiki

 Juerd ‚³‚ñ, Perl Unicode Advice
 http://juerd.nl/site.plp/perluniadvice

 daily dayflower ‚³‚ñ, 2008-06-25 perluniadvice
 http://d.hatena.ne.jp/dayflower/20080625/1214374293

 Jesse Vincent ‚³‚ñ, Compatibility is a virtue
 http://www.nntp.perl.org/group/perl.perl5.porters/2010/05/msg159825.html

=cut

# ‚¢‚©‚ª‚Å‚µ‚½‚©HŠy‚µ‚ñ‚Å‚¢‚½‚¾‚¯‚Ü‚µ‚½‚©H
