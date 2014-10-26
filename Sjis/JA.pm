1;
__END__

=pod

=encoding Shift_JIS

=head1 NAME

Sjis-JA - JAPANESE DOCUMENT

=head1 �v��

�X�N���v�g ShiftJIS_script.pl �̒��Ɉȉ����L�q����...

  use Sjis;

�R�}���h�v�����v�g�ňȉ��̂悤�Ɏ��s����

  perl ShiftJIS_script.pl argv1 argv2 ...

Sjis�\�t�g�E�F�A�́AShiftJIS �ɂ���ď����ꂽ Perl �X�N���v�g��perl�C���^�v���^
�̊ԂɈʒu����~�h���E�F�A�ł��B

Perl �́A�e�L�X�g������90%�A����ȊO�̏�����10%�ō\���������Ɍ����čœK����
��Ă���ƌ����Ă��܂��B�����ł����e�L�X�g�� ShiftJIS ���܂܂�Ȃ������Ƃ��Ă�
Perl3 �ȍ~�ł���΃o�C�i���f�[�^��������̂ŁAShiftJIS �f�[�^���o�C�i���f�[�^��
���Ĉ������Ƃ��\�ł��B

"use Sjis;" �ɂ���āA�X�N���v�g�� ShiftJIS �ŋL�q���邱�Ƃ��ł���悤�ɂȂ�A
���K�\�����͂��߂Ƃ��� perl �̊e��@�\�� ShiftJIS �ɑΉ�����悤�ɂȂ�܂��B
�֐� length �����������̒P�ʂ̓o�C�g�̂܂܂ŁAUTF8�t���O�͎g�p���܂���B

=head1 ���̕����̕\�L�̂Ԃ�ɂ���

������V�t�gJIS�ɑ΂��閼�̂ɂ��āA���̕����ł� ShiftJIS �Ƃ�����V�t�gJIS
�Ƃ����� Shift-JIS �Ƃ����肵�Ă��܂����A�Ӗ�������͓̂������ƍl���Ă��������B
�������L�q����ۂɎQ�Ƃ����������������ꍇ�A�T�˂��̂܂܂̕\�L���c���Ă��܂��B
������ύX���Ȃ��ق����悢�Ǝv�������߁A���̕����S�̂Ƃ��Ă͓��ꂳ��Ă��܂�
��B���炩���߂��������������B

=head1 �����ЂƂ̖���(�݂炢)

JPerl �͂ƂĂ��D�ꂽ�\�t�g�E�F�A�ł��B�����ƁA�����ł��� JPerl �͓��{��Ή��ł�
Perl �̂��ƂŁAJava �� JVM �Ƃ͊֌W������܂���B������ꂽ��A���҂��ꂽ�肷��
�̂�����̂ŁA���̃\�t�g�E�F�A�� Sjis �Ƃ������O�ɂ��܂����B���̌�A�g�b�v���x��
�̖��O������邽�� Char::Sjis �Ƃ������O�Ńf�B�X�g���r���[�V�������쐬����悤��
���܂������A�ʏ�g�p����̂͏]���� Sjis.pm, Esjis.pm �ł悢�Ǝv���܂��B

�Ƃ���ŁA���� JPerl �̓o�[�W���� 5.005_04 �ȍ~�A�����e�i���X����Ă��܂���B

��ώc�O�Ȃ��ƂɁAJPerl�̊J�����s�����n�� ��������� The Perl Confernce Japan
1998 �ɂ�

  "�킽�Ȃׂ͔�ꂽ���玟�̐l��낵����"

�Ƃ������b�Z�[�W���c���APerl ���痣��Ă����Ă��܂��܂����B

�X���C�h15 "jperl �̍���"

ftp://ftp.oreilly.co.jp/pcjp98/watanabe/jperlconf.ppt

�����ƒN���������p���ŏ����Ă���邾�낤�B
�ȂǂƊ��҂����Ȃ���10�N�ԁA�҂�������Ԃɐ��E�͈Ⴄ�����ւƐi��ł����̂ł����B

���̃\�t�g�E�F�A�� ShiftJIS �ŏ����ꂽ Perl �X�N���v�g���G�X�P�[�v�������邽�߂�
�\�[�X�R�[�h�t�B���^�ł��B�G�X�P�[�v�����ɂ���ĕ����R�[�h���ω����邱�Ƃ͂���
�܂���B�����ω������ꍇ�́A�o�O�ł��̂ŕ񍐒�����Ƃ��肪�����ł��B

���������\�t�g�E�F�A����ȉ��̂��Ƃ��w��ł��̃\�t�g�E�F�A�͍쐬����܂����B

=over 2

=item * Perl4 ���� Perl5 �̂悤�ȏ�ʌ݊���

=item * jcode.pl �̂悤�ȍő���̈ڐA��

=item * JPerl �̂悤��UTF8�t���O���g�킸�AShiftJIS�����̂܂܈����APerl ��1�̌���̂܂�

=item * Encode ���W���[���̂悤�� Perl ��1�̃C���^�v���^�̂܂�

=item * Ruby �̂悤�ɕ����W���Ɨ��Ȏ�@

=item * cpanminus �̂悤�Ƀ��m���V�b�N�ȃX�N���v�g

=item * Perl ���g�̂悤�� TMTOWTDI(There's more than one way to do it)

=back

���̃\�t�g�E�F�A��Perl�̖����ɂ��čl����Ƌ����ǂ��ǂ����܂��B�݂Ȃ��񂾂���
�����Ƃ����ł��傤�H

=head1 ��{�I�Ȏd�g��

�ŋ߁A�ȉ��̃��[�����Ĕ������܂����B

[Tokyo.pm] jus Benkyoukai

http://mail.pm.org/pipermail/tokyo-pm/1999-September/001854.html

("SJIS.pm" �Ƃ����t�@�C�����ŕۑ�����Ă�����̂Ƃ��܂�)

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

��{�I�ɂ́A���̃\�t�g�E�F�A�͏�L�̂悤�Ȃ��Ƃ��s���܂��B
�������AFilter::Util::Call �𗘗p���Ă��Ȃ��_�APerl �̍\������͂��ĕK�v�ɉ�����
�G�X�P�[�v����_���قȂ�܂��B

=head1 �C���X�g�[�����@(�ȒP�ȕ��@)

   CPAN ���� Sjis.pm �� Esjis.pm ���_�E�����[�h�� Perl �� lib �f�B���N�g���Ɋi�[���܂��B

=head1 �C���X�g�[�����@(make���g���ꍇ)

   perl Makefile.PL
   make test
   make install

=head1 �C���X�g�[�����@(make���g��Ȃ��ꍇ)

   perl pMakefile.pl          --- pMakefile.pl �� pmake.bat �𐶐����܂�
   pmake.bat
   pmake.bat test
   pmake.bat install          --- ���ݎg�p���� perl ���ɃC���X�g�[�����܂�
   pmake.bat dist             --- CPAN �z�z�p�p�b�P�[�W�����܂�
   pmake.bat ptar.bat         --- ptar.bat ���쐬���܂�

=head1 �\�t�g�E�F�A�̈ꗗ

   Sjis.pm               --- ShiftJIS �\�[�X�R�[�h�t�B���^
   Esjis.pm              --- Sjis.pm �̃����^�C�����[�`��
   Char/Sjis.pm          --- Sjis.pm �̕ʖ�(�@�\�͓����ł�)
   Char/Esjis.pm         --- Esjis.pm �̕ʖ�(�@�\�͓����ł�)

=head1 DOS���V�X�e���ɂ�����R�}���h���C���̃��C���h�J�[�h�W�J

DOS���V�X�e���̕W���V�F��(COMMAND.COM ����� cmd.exe)�́A�N������v���O�����֓n��
�p�����[�^�̃��C���h�J�[�h�W�J���s���܂���B���̑���Ƃ��� Esjis.pm ���� import
�֐������C���h�J�[�h�W�J���s���悤�ɂȂ��Ă��܂��B

   �Q�l Esjis.pm ���甲��
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

=head1 ���߂Ă�JPerl

  �� �g����(����1)

    1. �X�N���v�g ShiftJIS_script.pl �̒��Ɉȉ��̂����ꂩ���L�q����...

      use Sjis;
      use Sjis ver.sion;              --- Sjis.pm �̃o�[�W������ ver.sion �ȏ�Ȃ���s��
      use Sjis ver.sion.0;            --- Sjis.pm �̃o�[�W������ ver.sion �łȂ���� die ����
      use Sjis qw(ord reverse getc);  --- ord, reverse, getc �̊g���@�\���g���ꍇ
      use Sjis ver.sion qw(ord reverse getc);
      use Sjis ver.sion.0 qw(ord reverse getc);

      �� no Sjis; �͗��p�ł��܂���B

      use Sjis ver.sion.0; �`������ Sjis �\�t�g�E�F�A�̃o�[�W�����̏���E�����̑o��
      ���w��ł��܂��B���s���� Sjis �\�t�g�E�F�A���L�q�����o�[�W�����Ƃ҂����蓯����
      �Ȃ��Ȃ�� die ���܂��B�Ⴆ�΁Ause Sjis 0.88.0; �ƋL�q����� Sjis �\�t�g�E�F�A
      �̃o�[�W������ 0.88 �ł��邱�Ƃ�ۏ�ł��܂��B

    2. �R�}���h�v�����v�g�ňȉ��̂悤�Ɏ��s����

      perl  ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32

      ? * ���g���ă��C���h�J�[�h�̎w�肪�ł��܂�
      ' �` ' ���g���ăN�H�[�g���邱�Ƃ��ł��܂�

  �� �g����(����2)

    �R�}���h�v�����v�g�ňȉ��̂悤�Ɏ��s����

      C:\>perl  Sjis.pm  ShiftJIS_script.pl  >  Escaped_script.pl.e
      C:\>perl  Escaped_script.pl.e

      ShiftJIS_script.pl  --- ShiftJIS �ŏ����ꂽ�X�N���v�g
      Escaped_script.pl.e --- �G�X�P�[�v���ꂽ�X�N���v�g

  �� �g����T�u���[�`���Ɗ֐�
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

  �� �ȉ��̓_�~�[�T�u���[�`���Ƃ��ėp�ӂ���Ă���
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

=head1 �G�X�P�[�v�ɂ���ʌ݊����̊m��

���̃\�t�g�E�F�A�͉ߋ��̂��̂��󂵂���͂����A��Ɂu�G�X�P�[�v�v�ɂ���ċ@�\��ǉ�
���Ă��܂��B�����獡�܂ŉ\�ł��������Ƃ��s�\�ɂȂ邱�Ƃ͂���܂���B���̃A�v
���[�`�́A��ނ������ċ�����Ȃ�����ɗL���ł��B�Ȃ��A��ʌ݊����̊m�ۂ̂��߂ɁA
Perl���g�̔�݊��Ȋg������菜�����Ƃ�����܂��B

=head1 �X�N���v�g�̃G�X�P�[�v

�쐬�����X�N���v�g�� 'use Sjis;' �Ə����K�v������܂��B

  ---------------------------------
  �ȑO        �Ȍ�
  ---------------------------------
  (�Ȃ�)      use Sjis;
  ---------------------------------

=head1 �}���`�o�C�g�����̃G�X�P�[�v

���̃\�t�g�E�F�A�ɂ���āA�}���`�o�C�g�����̑�2�o�C�g�� @  [  \  ]  ^  `  {  |  }
�̒��O�� chr(0x5c) ���}������܂��B�Ώۂ͈ȉ��̉ӏ��ł��B

=over 2

=item * �V���O���N�H�[�g���̕����� ('', q{}, <<'END' and qw{})

=item * �_�u���N�H�[�g���̕����� ("", qq{}, <<END, <<"END", ``, qx{} and <<`END`)

=item * �V���O���N�H�[�g���̐��K�\�� (m'', s''', split(''), split(m'') and qr'')

=item * �_�u���N�H�[�g���̐��K�\�� (//, m//, ??, s///, split(//), split(m//) and qr//)

=item * tr/// �̒��̕��� (tr/// and y///)

=back

  ��: �J�^�J�i�́u�\�v�R�[�h�� "\x83\x5C"
  
                  ������  �_���v
  -----------------------------------------
  source script   "`/"    [83 5c]
  -----------------------------------------
 
  ������ use Sjis; �����s
                          �_���v
  -----------------------------------------
  escaped script  "`\/"   [83 [5c] 5c]
  -----------------------------------------
                    ^--- Sjis �\�t�g�E�F�A�ŃG�X�P�[�v�����
 
  �Q�l            ������  �_���v
  -----------------------------------------
  your eye's      "`/\"   [83 5c] [5c]
  -----------------------------------------
  perl eye's      "`\/"   [83] \[5c]
  -----------------------------------------
 
                          �_���v
  -----------------------------------------
  in the perl     "`/"    [83] [5c]
  -----------------------------------------

=head1 ���K�\�����ւ̃}���`�o�C�g�A���J�[�����O�����̒ǉ�

Sjis.pm �͐��K�\���̐擪�Ƀ}���`�o�C�g�A���J�[�����O������t�������܂��B

  --------------------------------------------------------------------------------
  �����O                  ������
  --------------------------------------------------------------------------------
  m/regexp/               m/${Esjis::anchor}(?:regexp).../
  --------------------------------------------------------------------------------

${Esjis::anchor} �̋�̓I�ȓ��e�ɂ��Ă͕ʓr�uSjis �\�t�g�E�F�A�̃}���`�o�C�g�A��
�J�[�����O�����v�ɋL�q���Ă���܂��B

=head1 ��2�I�N�e�b�g�̃G�X�P�[�v����

Sjis.pm �͐��K�\�����̃}���`�o�C�g�����̑�2�I�N�e�b�g���G�X�P�[�v���܂��B

  --------------------------------------------------------------------------------
  �����O                  ������
  --------------------------------------------------------------------------------
  m{...`/...}             m{...`/\...}
  --------------------------------------------------------------------------------

=head1 ���K�\�����̃}���`�o�C�g�����̈����ɂ���

Sjis.pm �̓}���`�o�C�g�����ւ̗ʎw��q�A����у}���`�o�C�g�����̃J�X�^�������N���X
���N���X�^�����O���܂��B�܂��N���b�V�b�N�� Perl �����N���X�APOSIX �X�^�C���̕���
�N���X���}���`�o�C�g�����Ή��łɏ��������܂��B

  --------------------------------------------------------------------------------
  �����O                  ������
  --------------------------------------------------------------------------------
  m/...MULTIOCT+.../      m/...(?:MULTIOCT)+.../
  m/...[AN-EM].../        m/...(?:A[N-Z]|[B-D][A-Z]|E[A-M]).../
  m/...\D.../             m/...(?:${Esjis::eD}).../
  m/...[[:^digit:]].../   m/...(?:${Esjis::not_digit}).../
  --------------------------------------------------------------------------------

=head1 Esjis::ignorecase() �̌Ăяo��

Sjis.pm �� /i �C���q�̑���� Esjis::ignorecase() �̌ďo�������������܂��B

  --------------------------------------------------------------------------------
  �����O                  ������
  --------------------------------------------------------------------------------
  m/...$var.../i          m/...@{[Esjis::ignorecase($var)]}.../
  --------------------------------------------------------------------------------

=head1 �����w���̐��K�\��

/b �C���q�̂Ȃ����K�\���͕����w���̓��������܂��B

  --------------------------------------------------------------------------------
  �����O                  ������
  --------------------------------------------------------------------------------
  /regexp/                / ��L�Q�� $Esjis::matched/
  m/regexp/               m/ ��L�Q�� $Esjis::matched/
  ?regexp?                m? ��L�Q�� $Esjis::matched?
  m?regexp?               m? ��L�Q�� $Esjis::matched?
 
  $_ =~                   ($_ =~ m/ ��L�Q�� $Esjis::matched/) ?
  s/regexp/replacement/   eval{ Esjis::s_matched(); local $^W=0; my $__r=qq/replacement/; $_="${1}$__r$'"; 1 } :
                          undef
 
  $_ !~                   ($_ !~ m/ ��L�Q�� $Esjis::matched/) ?
  s/regexp/replacement/   1 :
                          eval{ Esjis::s_matched(); local $^W=0; my $__r=qq/replacement/; $_="${1}$__r$'"; undef }
 
  split(/regexp/)         Esjis::split(qr/regexp/)
  split(m/regexp/)        Esjis::split(qr/regexp/)
  split(qr/regexp/)       Esjis::split(qr/regexp/)
  qr/regexp/              qr/ ��L�Q�� $Esjis::matched/
  --------------------------------------------------------------------------------

=head1 �o�C�g�w���̐��K�\��

/b �C���q��t���������K�\���̓o�C�g�w���̓��������܂��B

  --------------------------------------------------------------------------------
  �����O                  ������
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

=head1 �����N���X�̃G�X�P�[�v

�ߋ���perl�Ƃ̌݊�����ۂ��߂ɕ����N���X�͈ȉ��̂悤�ɍĒ�`����Ă��܂��B

  ---------------------------------------------------------------
  escape        class
  ---------------------------------------------------------------
   .            ${Esjis::dot}
                ${Esjis::dot_s}    (/s �C���q����)
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
  \X            X (�����̉p���AX �ł�)
  \R            ${Esjis::eR}
  \N            ${Esjis::eN}
  ---------------------------------------------------------------

���l�� POSIX �X�^�C���̕����N���X���Ē�`����Ă��܂��B

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
                [\x41-\x5A\x61-\x7A]     (/i �C���q����)
  [:print:]     [\x20-\x7F]
  [:punct:]     [\x21-\x2F\x3A-\x3F\x40\x5B-\x5F\x60\x7B-\x7E]
  [:space:]     [\s\x0B]
  [:upper:]     [\x41-\x5A]
                [\x41-\x5A\x61-\x7A]     (/i �C���q����)
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
                ${Esjis::not_lower_i}    (/i �C���q����)
  [:^print:]    ${Esjis::not_print}
  [:^punct:]    ${Esjis::not_punct}
  [:^space:]    ${Esjis::not_space}
  [:^upper:]    ${Esjis::not_upper}
                ${Esjis::not_upper_i}    (/i �C���q����)
  [:^word:]     ${Esjis::not_word}
  [:^xdigit:]   ${Esjis::not_xdigit}
  ---------------------------------------------------------------

\b �� \B ���ߋ���perl�Ƃ̌݊�����ۂ��߂ɍĒ�`����Ă��܂��B

  ---------------------------------------------------------------
  escape      class
  ---------------------------------------------------------------
  \b          ${Esjis::eb}
  \B          ${Esjis::eB}
  ---------------------------------------------------------------

��L�̒�`�́A�t�@�C�� Esjis.pm �̒��ňȉ��̂悤�ɒ�`����Ă��܂��B

  ---------------------------------------------------------------------------------------------------------------------------------------------------------
  class                    Definition
  ---------------------------------------------------------------------------------------------------------------------------------------------------------
  ${Esjis::anchor}         qr{\G(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?}
                           32766�I�N�e�b�g�𒴂��镶�����������悤�ɂ��邽�߁AActivePerl5.6�ȍ~(5.10.0�܂�)�A�܂��͂��̑���Perl5.10.1�ȍ~�̏ꍇ�͈ȉ��̂悤�ɂȂ�܂�
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

=head1 \N, \p, \P, \X �̃A���G�X�P�[�v

���̃\�t�g�E�F�A�ɂ���ĉp�����̐��K�\�����^�V���{�� \N, \p, \P, \X �̐擪��
'\' ����菜����܂��B���̕��@�Œ��ۉ���㩂�����邱�Ƃ��ł��܂��B

�A���G�X�P�[�v��� "{" ���G�X�P�[�v����悤�ɂ������R�́A
Deprecate literal unescaped "{" in regexes.
http://perl5.git.perl.org/perl.git/commit/2a53d3314d380af5ab5283758219417c6dfa36e9
�ɂ����̂ł��B

  ------------------------------------
  �����O           ������
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

=head1 �g���݊֐��̃G�X�P�[�v

���̃\�t�g�E�F�A�ɂ���Ċ֐����̐擪�� 'Esjis::' �����������G�X�P�[�v����܂��B
Esjis::* �T�u���[�`���� Esjis.pm ���񋟂��܂��B

  --------------------------------------------
  �����O      ������            ����
  --------------------------------------------
  length      length            �o�C�g�w��
  substr      substr            �o�C�g�w��
  pos         pos               �o�C�g�w��
  split       Esjis::split      �����w��
  tr///       Esjis::tr         �����w��
  tr///b      tr///             �o�C�g�w��
  tr///B      tr///             �o�C�g�w��
  y///        Esjis::tr         �����w��
  y///b       tr///             �o�C�g�w��
  y///B       tr///             �o�C�g�w��
  chop        Esjis::chop       �����w��
  index       Esjis::index      �����w��
  rindex      Esjis::rindex     �����w��
  lc          Esjis::lc         �����w��
  lcfirst     Esjis::lcfirst    �����w��
  uc          Esjis::uc         �����w��
  ucfirst     Esjis::ucfirst    �����w��
  fc          Esjis::fc         �����w��
  chr         Esjis::chr        �����w��
  glob        Esjis::glob       �����w��
  lstat       Esjis::lstat      �����w��
  opendir     Esjis::opendir    �����w��
  stat        Esjis::stat       �����w��
  unlink      Esjis::unlink     �����w��
  chdir       Esjis::chdir      �����w��
  do          Esjis::do         �����w��
  require     Esjis::require    �����w��
  --------------------------------------------

  ------------------------------------------------------------------------------------------------------------------------
  �����O                   ������
  ------------------------------------------------------------------------------------------------------------------------
  use Perl::Module;        BEGIN { Esjis::require 'Perl/Module.pm'; Perl::Module->import() if Perl::Module->can('import'); }
  use Perl::Module @list;  BEGIN { Esjis::require 'Perl/Module.pm'; Perl::Module->import(@list) if Perl::Module->can('import'); }
  use Perl::Module ();     BEGIN { Esjis::require 'Perl/Module.pm'; }
  no Perl::Module;         BEGIN { Esjis::require 'Perl/Module.pm'; Perl::Module->unimport() if Perl::Module->can('unimport'); }
  no Perl::Module @list;   BEGIN { Esjis::require 'Perl/Module.pm'; Perl::Module->unimport(@list) if Perl::Module->can('unimport'); }
  no Perl::Module ();      BEGIN { Esjis::require 'Perl/Module.pm'; }
  ------------------------------------------------------------------------------------------------------------------------

=head1 �t�@�C���e�X�g���Z�q�̃G�X�P�[�v

���̃\�t�g�E�F�A�ɂ���ĉ��Z�q�� '-' �� 'Esjis::' �ɏ��������܂��B

  MSWin32, MacOS ����� UNIX���̃V�X�e���ŗ��p�\�ȉ��Z�q
  -------------------------------------------------------------------------------
  �����O    ������      ����
  -------------------------------------------------------------------------------
  -r        Esjis::r    �t�@�C����f�B���N�g��������(����)���[�U�܂��̓O���[�v����ǂݏo���\
  -w        Esjis::w    �t�@�C����f�B���N�g��������(����)���[�U�܂��̓O���[�v���珑�����݉\
  -e        Esjis::e    �t�@�C����f�B���N�g���������݂���
  -x        Esjis::x    �t�@�C����f�B���N�g��������(����)���[�U�܂��̓O���[�v������s�\
  -z        Esjis::z    �t�@�C�������݂��Ă��đ傫����0�ł���(�f�B���N�g���ɑ΂��Ă͏�ɋU�ɂȂ�)
  -f        Esjis::f    �G���g���͕��ʂ̃t�@�C���ł���
  -d        Esjis::d    �G���g���̓f�B���N�g���ł���
  -t        -t          ���̃t�@�C���n���h����TTY�ł���(isatty()�V�X�e���֐��̌��ʂŔ��肷��B
                        ���̃e�X�g�̓t�@�C�����ɂ͓K�p�ł��Ȃ�)
  -T        Esjis::T    ���̃t�@�C���́u�e�L�X�g�v�t�@�C���̂悤�ł���
  -B        Esjis::B    ���̃t�@�C���́u�o�C�i���v�t�@�C���̂悤�ł���
  -M        Esjis::M    �Ō�ɕύX����Ă���̓���
  -A        Esjis::A    �Ō�ɃA�N�Z�X����Ă���̓���
  -C        Esjis::C    �Ō�� i�m�[�h(inode) ���ύX����Ă���̓���
  -s        Esjis::s    �t�@�C����f�B���N�g�������݂��Ă��đ傫���� 0 �łȂ�
                        (�o�C�g�P�ʂŕ\�킵���t�@�C���̑傫�����l�ɂȂ�)
  -------------------------------------------------------------------------------
  
  MacOS ����� UNIX���̃V�X�e���ŗ��p�\�ȉ��Z�q
  -------------------------------------------------------------------------------
  �����O    ������      ����
  -------------------------------------------------------------------------------
  -R        Esjis::R    �t�@�C����f�B���N�g�������̎����[�U�܂��̓O���[�v����ǂݏo���\
  -W        Esjis::W    �t�@�C����f�B���N�g�������̎����[�U�܂��̓O���[�v���珑�����݉\
  -X        Esjis::X    �t�@�C����f�B���N�g�������̎����[�U�܂��̓O���[�v������s�\
  -l        Esjis::l    �G���g���̓V���{���b�N�����N�ł���
  -S        Esjis::S    �G���g���̓\�P�b�g�ł���
  -------------------------------------------------------------------------------
  
  MSWin32, MacOS �ł͗��p�o���Ȃ��t�@�C���e�X�g���Z�q
  -------------------------------------------------------------------------------
  �����O    ������      ����
  -------------------------------------------------------------------------------
  -o        Esjis::o    �t�@�C����f�B���N�g��������(����)���[�U�����L���Ă���
  -O        Esjis::O    �t�@�C����f�B���N�g�������̎����[�U�����L���Ă���
  -p        Esjis::p    �G���g���͖��O�t���p�C�v(fifo)�ł���
  -b        Esjis::b    �G���g���̓u���b�N����f�o�C�X�ł���(�Ⴆ�΁A�}�E���g�\�ȃf�B�X�N)
  -c        Esjis::c    �G���g���̓L�����N�^����f�o�C�X�ł���(�Ⴆ�΁AI/O�f�o�C�X)
  -u        Esjis::u    �t�@�C����f�B���N�g���� setuid ����Ă���
  -g        Esjis::g    �t�@�C����f�B���N�g���� setgid ����Ă���
  -k        Esjis::k    �t�@�C����f�B���N�g���� sticky �r�b�g���Z�b�g����Ă���
  -------------------------------------------------------------------------------

perl5.00503 ���g�p���Ă���ꍇ�ł��t�@�C���e�X�g���Z�q�́u�ςݏd�˂�v���Ƃ�
�ł��܂��B

  if ( -w -r $file ) {
      print "The file is both readable and writable!\n";
  }

=head1 �֐����̃G�X�P�[�v

���������w���̃T�u���[�`�����g�������ꍇ�͈ȉ��̂悤�ɋL�q����K�v������܂��B
���ꂼ��̋@�\�ɂ��Ắu�����w���̃T�u���[�`���v���Q�Ƃ��Ă��������B

  ----------------------------------------------------
  �֐���    �����w��        ����
  ----------------------------------------------------
  ord       Sjis::ord
  reverse   Sjis::reverse
  getc      Sjis::getc
  length    Sjis::length
  substr    Sjis::substr
  index     Sjis::index     �ȉ��̋L�q���Q�Ƃ̂���
  rindex    Sjis::rindex    �ȉ��̋L�q���Q�Ƃ̂���
  ----------------------------------------------------

  index �̒��Ԃ���
  --------------------------------------------------------------
  �֐���         ����         �Ԓl         ����
  --------------------------------------------------------------
  index          �����w��     �o�C�g�P��   JPerl�Ɠ�������
  Sjis::index    �����w��     �����P��     �����w���̓���
  CORE::index    �o�C�g�w��   �o�C�g�P��   �o�C�g�w���̓���
  --------------------------------------------------------------

  rindex �̒��Ԃ���
  --------------------------------------------------------------
  �֐���         ����         �Ԓl         ����
  --------------------------------------------------------------
  rindex         �����w��     �o�C�g�P��   JPerl�Ɠ�������
  Sjis::rindex   �����w��     �����P��     �����w���̓���
  CORE::rindex   �o�C�g�w��   �o�C�g�P��   �o�C�g�w���̓���
  --------------------------------------------------------------

=head1 �����w���̃T�u���[�`��

=over 2

=item * Sjis::ord

    $ord = Sjis::ord($string);

    Sjis::ord($string) �� $string �̐擪�̕����� ShiftJIS �R�[�h�l��Ԃ��܂�
    (Unicode �ł͂���܂���)�B$string ���ȗ����ꂽ�ꍇ�� $_ ���ΏۂƂȂ�܂��B
    ���̃T�u���[�`���͏�ɕ����Ȃ��̒l��Ԃ��܂��B

    "use Sjis qw(ord);" �ɂ���ăX�N���v�g���ɋL�q���� ord �� Sjis::ord �ɏ���
    �����悤�ɂȂ�܂��Bord �� Sjis::ord �̓��������̂� JPerl �Ɣ�݊��Ȃ�
    �Ŗ����I�ɃC���|�[�g�����ꍇ�̂ݏ��������܂��B

=item * Sjis::reverse

    @reverse = Sjis::reverse(@list);
    $reverse = Sjis::reverse(@list);

    Sjis::reverse(@list) �̓��X�g�R���e�L�X�g�ł� @list �̗v�f���t���ɕ��ׂ�
    ���X�g�l��Ԃ��܂��B

    �X�J���[�R���e�L�X�g�ł� @list �̂��ׂĂ̗v�f��A��������ŁAShiftJIS ��
    �����P�ʂŋt���ɂ������̂�Ԃ��܂��B

    "use Sjis qw(reverse);" �ɂ���ăX�N���v�g���ɋL�q���� reverse ��
    Sjis::reverse �ɏ��������悤�ɂȂ�܂��Breverse �� Sjis::reverse �̓����
    ����̂� JPerl �Ɣ�݊��Ȃ̂Ŗ����I�ɃC���|�[�g�����ꍇ�̂ݏ��������܂��B

    �������̃T�u���[�`����m��Ȃ��Ƃ����͂���܂���B����܂Œʂ�A���̃T�u
    ���[�`����

    $rev = join('', reverse(split(//, $jstring)));

    �Ŏ����ł��܂��B

    �Q�l:
    P.558 JPerl (���{��Ή�Perl)
    �t�^C ���{��ł̒ǉ�
    ISBN 4-89052-384-7 Perl�v���O���~���O

=item * Sjis::getc

    $getc = Sjis::getc(FILEHANDLE);
    $getc = Sjis::getc($filehandle);
    $getc = Sjis::getc;

    FILEHANDLE �Ɍ��т���ꂽ���̓t�@�C������A����1������ǂ�ŕԂ��܂��B
    end-of-file(�t�@�C���̏I���) �ɂȂ������A���邢�� I/O �G���[�����������ꍇ��
    �́Aundef ��Ԃ��܂��BFILEHANDLE ���ȗ�����ƁASTDIN ������͂��܂��B

    ���̃T�u���[�`���͏����x�����̂́A�L�[�{�[�h����1��������͂���ۂɕ֗��ł�
    -- �L�[�{�[�h���͂��o�b�t�@�����O�Ȃ��ɐݒ�ł���΂ł����B���̃T�u���[�`���́A
    �W��I/O���C�u�����ɑ΂��āA�o�b�t�@�����O�Ȃ��œ��͂���悤�ɗv�����܂��B�c�O��
    ���ƂɁA�W��I/O���C�u�����́A�I�y���[�e�B���O�V�X�e���ɑ΂��ăo�b�t�@�����O�Ȃ�
    �ŃL�[�{�[�h���͂��s���悤�ɗv�����邽�߂́A�ڐA���̂����i��p�ӂ���܂łɂ́A
    �W��������Ă��܂���B����ɂ́A���X�m�b�𓭂����āA�I�y���[�e�B���O�V�X�e����
    �ŗL�̂���������K�v������܂��BUnix �ł́A���̂悤�ɂ���΂��܂������ł��傤�B

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

    ���̃R�[�h�́A�[�����玟�Ƀ^�C�v���ꂽ������ϐ� $key �ɓ���܂��B���Ȃ��̃V�X�e
    ���� stty �v���O������ cbreak �I�v�V����������Ȃ�A��̃R�[�h�̂����A$BSD_STYLE
    ���^�̏ꍇ�̃R�[�h���g���Ɨǂ��ł��傤�B�����łȂ���΁A$BSD_STYLE ���U�̏ꍇ��
    �R�[�h���g���΂悢�ł��傤�B

    "use Sjis qw(getc);" �ɂ���ăX�N���v�g���ɋL�q���� getc �� Sjis::getc �ɏ���
    �����悤�ɂȂ�܂��Bgetc �� Sjis::getc �̓��������̂� JPerl �Ɣ�݊��Ȃ�
    �Ŗ����I�ɃC���|�[�g�����ꍇ�̂ݏ��������܂��B

=item * Sjis::length

    $length = Sjis::length($string);
    $length = Sjis::length();

    Sjis::length($string) �̓X�J���[�l $string �̒����� ShiftJIS �̕�����(�v���O
    ���}���猩���镶��)�ŕԂ��܂��B$string ���ȗ������ꍇ�� $_ �̕�������Ԃ���
    ���B

    �z���A�z�z��(�n�b�V��)�̑傫����m�肽���ꍇ�ɂ́ASjis::length �͎g����
    ����B�z��̑傫����m��ɂ� scalar @array�A�A�z�z��ɓ����Ă���L�[/�l�̃y
    �A�̌���m��ɂ� scalar keys %hash �Ƃ��܂��B

    �������ł͂Ȃ��o�C�g�P�ʂł̒����𒲂ׂ�ɂ́A���܂܂Œʂ�

    $bytes = length($string);

    �̂悤�ɂ��܂��B

    �������̃T�u���[�`����m��Ȃ��Ƃ����͂���܂���B����܂Œʂ�A���̃T�u���[
    �`����

    $len = split(//, $jstring);

    �Ŏ����ł��܂��B

    �Q�l:
    P.558 JPerl (���{��Ή�Perl)
    �t�^C ���{��ł̒ǉ�
    ISBN 4-89052-384-7 Perl�v���O���~���O

=item * Sjis::substr

    $substr = Sjis::substr($string,$offset,$length,$replacement);
    $substr = Sjis::substr($string,$offset,$length);
    $substr = Sjis::substr($string,$offset);

    Sjis::substr �́AShiftJIS ������ $string �Ŏw�肳�ꂽ�����񂩂畔������������
    �o���ĕԂ��܂��B����������́A������̐擪���琔���� $offset �����ڂ���n�܂�A
    $length �������ł��B�ŏ��̕������I�t�Z�b�g 0 �ƂȂ�܂��B$offset �ɕ��̒l��ݒ�
    ����ƁA$string �̏I��肩��̃I�t�Z�b�g�ƂȂ�܂��B
    $length ���ȗ�����ƁA$string �̍Ō�܂ł��ׂĂ��Ԃ���܂��B$length �����̒l��
    �ƁA������̍Ōォ��w�肳�ꂽ��������������菜���܂��B�����łȂ���΁A$length
    �́A���Ȃ������҂���悤�ɁA���o������������̒�����\���Ă��܂��B

    my $s = "The black cat climbed the green tree";
    my $color  = Sjis::substr $s, 4, 5;      # black
    my $middle = Sjis::substr $s, 4, -11;    # black cat climbed the
    my $end    = Sjis::substr $s, 14;        # climbed the green tree
    my $tail   = Sjis::substr $s, -4;        # tree
    my $z      = Sjis::substr $s, -4, 2;     # tr

    �o�[�W���� 5.14 �ȍ~�� Perl �ł���΁ASjis::substr() �����Ӓl�Ƃ��Ďg�p���邱�Ƃ�
    �\�ł��B���̏ꍇ�ɂ́A$string �����g���Ӓl�łȂ���΂Ȃ�܂���B$length ���Z��
    ���̂��������Ƃ��ɂ́A$string �͒Z���Ȃ�A$length ��蒷�����̂��������Ƃ��ɂ́A
    $string �͂���ɍ��킹�ĐL�т邱�ƂɂȂ�܂��B$string �̒��������ɕۂ��߂ɂ́A
    sprintf ���g���āA�������l�̒����𒲐����邱�Ƃ��A�K�v�ɂȂ邩������܂���B

    $offset �� $length �Ƃ��ĕ�����̊O�����܂ނ悤�ȕ��������񂪎w�肳���ƁA������
    �̓����̕����������Ԃ���܂��B���������񂪕�����̗��[�̊O���̏ꍇ�ASjis::substr()
    �͖���`�l��Ԃ��A�x�����o�͂���܂��B���Ӓl�Ƃ��Ďg�����ꍇ�A������̊��S�ɊO����
    ����������Ƃ��Ďw�肷��Ɨ�O���������܂��B�ȉ��͋��E�����̐U�镑����������ł�:

    my $name = 'fred';
    Sjis::substr($name, 4) = 'dy';         # $name is now 'freddy'
    my $null = Sjis::substr $name, 6, 2;   # returns "" (no warning)
    my $oops = Sjis::substr $name, 7;      # returns undef, with warning
    Sjis::substr($name, 7) = 'gap';        # raises an exception

    Sjis::substr() �����Ӓl�Ƃ��Ďg������̕��@�́A�u�������镶����� 4 �Ԗڂ̈�����
    ���Ďw�肷�邱�Ƃł��B����ɂ��A$string �̈ꕔ��u�������A�u��������O�����ł���
    ������Ԃ��A�Ƃ������Ƃ�(splice() �Ɠ��l) 1 ����ōs���܂��B

    my $s = "The black cat climbed the green tree";
    my $z = Sjis::substr $s, 14, 7, "jumped from";    # climbed
    # $s is now "The black cat jumped from the green tree"

    3 ������ Sjis::substr() �ɂ���ĕԂ��ꂽ���Ӓl�́u���@�̒e�ہv�̂悤�ɐU�������Ƃ�
    ���ӂ��Ă�������; ���ꂪ�������閈�ɁA���̕�����̂ǂ̕������ύX���ꂽ�����v��
    �o����܂�; �Ⴆ��:

    $x = '1234';
    for (Sjis::substr($x,1,2)) {
        $_ = 'a';   print $x,"\n";    # prints 1a4
        $_ = 'xyz'; print $x,"\n";    # prints 1xyz4
        $x = '56789';
        $_ = 'pq';  print $x,"\n";    # prints 5pq9
    }

    �����̃I�t�Z�b�g�̏ꍇ�A�^�[�Q�b�g�����񂪏C�����ꂽ�Ƃ��ɕ�����̖�������̈ʒu
    ���o���܂�:

    $x = '1234';
    for (Sjis::substr($x, -3, 2)) {
        $_ = 'a';   print $x,"\n";    # prints 1a4, as above
        $x = 'abcdefg';
        print $_,"\n";                # prints f
    }

    �o�[�W���� 5.10 ���O�� Perl �ł́A�����񍶕Ӓl���g�����ꍇ�̌��ʂ� ����`�ł����B
    5.16 ���O�ł́A���̃I�t�Z�b�g�̌��ʂ͖���`�ł��B

=item * Sjis::index

    $index = Sjis::index($string,$substring,$offset);
    $index = Sjis::index($string,$substring);

    Sjis::index �́AShiftJIS ������ $string �̒��Ɋ܂܂��A����1�� ShiftJIS ��
    ���� $substring ��T���܂��B$string �̒��ŁA$substring ���ŏ��ɏo������ʒu��
    �����P�ʂŐ����ĕԂ��܂��B$offset ���w�肳��Ă���ꍇ�A$string �̐擪���� $offset
    �̕������X�L�b�v�����ʒu����A$substring ��T���n�߂܂��B�ʒu�� 0 ���x�[�X�Ƃ�
    �Đ����܂��B$substring ��������Ȃ���΁ASjis::index �T�u���[�`���̓x�[�X���
    1 �����������l -1 ��Ԃ��܂��BSjis::index ���g���āA������S�̂𒲂ׂ�ɂ́A����
    �悤�ɂ��܂��B

    $pos = -1;
    while (($pos = Sjis::index($string, $lookfor, $pos)) > -1) {
        print "Found at $pos\n";
        $pos++;
    }

=item * Sjis::rindex

    $rindex = Sjis::rindex($string,$substring,$offset);
    $rindex = Sjis::rindex($string,$substring);

    Sjis::rindex �� Sjis::index �Ǝ��Ă��܂����AShiftJIS ������ $string �̒��ŁA
    ���������� $substring ���Ō�ɏo������ʒu�𕶎��P�ʂŐ����ĕԂ��܂�(�܂�
    reverse Sjis::index �ł�)�B$substring ��������Ȃ���΁A-1 ��Ԃ��܂��B
    $offset �ɂ���āA�l�Ƃ��ĕԂ����Ƃ��������A�ł��E���̈ʒu���w�肷�邱��
    ���ł��܂��BSjis::rindex ���g���āA������S�̂𖖔�����擪�Ɍ������Ē��ׂ��
    �́A���̂悤�ɂ��܂��B

    $pos = Sjis::length($string);
    while (($pos = Sjis::rindex($string, $lookfor, $pos)) >= 0) {
        print "Found at $pos\n";
        $pos--;
    }

=item * �t�@�C�����O���r���O

    @glob = glob($expr);
    $glob = glob($expr);
    @glob = glob;
    $glob = glob;
    @glob = <*>;
    $glob = <*>;

    ���̉��Z�q�� Esjis::glob �ɂ���Ď�������Ă��܂��BEsjis::glob �̏ڍׂ͈ȉ���
    �ʂ�ł��B

    @glob = Esjis::glob($string);
    @glob = Esjis::glob_;

    ���̃T�u���[�`���́A$string�̒l�ɑ΂��āADOS���V�F���Ɠ����悤�ȃt�@�C�����W�J
    ���s���ē���ꂽ���ʂ�Ԃ��܂��B$string ���ȗ����ꂽ�Ƃ��͑���� $_ ���g���
    �܂��B���̃T�u���[�`���� Sjis�\�t�g�E�F�A������ <*> ����� glob ���Z�q��������
    �Ă���T�u���[�`���ł��BMSWin32���ɂ� $string �� chr(0x5c) �ŏI�����Ă���ꍇ
    �ł����삵�܂��B

    �g���₷�����邽�߂� Esjis::glob �́AUNIX���ł͂Ȃ��ADOS���̓W�J���s���悤�ɂȂ�
    �Ă��܂��B�A�X�^���X�N("*")�́A�C�ӂ̕�����C�ӌ�(0�ł��悢)���ׂ����̂Ƀ}�b�`
    ���܂��B�N�G�X�`�����L��("?")�́A�C�ӂ̕���1�܂���0�Ƀ}�b�`���܂��B�e�B��
    �f("~")�̓z�[���f�B���N�g�����ɓW�J����܂��B�Ⴆ�΁A"~/.*rc" �͌��݂̃��[�U��
    "rc" �t�@�C�����ׂĂɃ}�b�`���邵�A"~jane/Mail/*" ��Jane�̃��[���t�@�C�����ׂ�
    �Ƀ}�b�`���܂��B

    ASCII�̉p���̑啶���Ə������͋�ʂ��ꂸ�A�������̂Ƃ��Ĉ����܂��B�o�b�N�X���b
    �V���ƃX���b�V���͂ǂ�����f�B���N�g���Z�p���[�^�Ƃ��Ĉ����܂��B�_�u���N�H�[�g
    ������̒��Ńo�b�N�X���b�V��1��(\)��\�킷���߂ɂ�2�� \�A(�܂� \\ )���L�q��
    ��K�v������܂��B

    �󔒕������܂މ\���̂���t�@�C�������O���u�������ꍇ�ɂ́A$string���_�u��
    �N�H�[�g�ň͂ޕK�v������܂��B�Ȃ��Ȃ�AEsjis::glob �́A�󔒕�������ʈ������ĕ���
    �̃p�^�[���̋�؂�(�Ⴆ��<*.c *.h>)�Ɖ��߂��Ă��܂�����ł��B
    �Ⴆ�΁A"e" �̌��ɋ󔒕����A���̌��� "f" �������t�@�C�����̃O���r���O���s��
    �ɂ͈ȉ��̂悤�ɋL�q���܂��B

    @spacies = <"*e f*">;
    @spacies = Esjis::glob('"*e f*"');
    @spacies = Esjis::glob(q("*e f*"));

    �ϐ��𗘗p����ꍇ�͈ȉ��̂悤�ɂ��܂��B

    @spacies = Esjis::glob("'*${var}e f*'");
    @spacies = Esjis::glob(qq("*${var}e f*"));

    �X�N���v�g�������DOS����OS�Ŏ��s����̂ł���΁A

    # ���΃p�X�Ŏ擾����ꍇ
    @relpath_file = split(/\n/,`dir /b wildcard\\here*.txt 2>NUL`);

    # ��΃p�X�Ŏ擾����ꍇ
    @abspath_file = split(/\n/,`dir /s /b wildcard\\here*.txt 2>NUL`);

    �ƋL�q���Ă��悢�ł��傤�B

=back

=head1 �o�C�g�w���̊֐�

=over 2

=item * CORE::chop

    $byte = CORE::chop($string);
    $byte = CORE::chop(@list);
    $byte = CORE::chop;

    ������ϐ����邢�̓o�C�g��ϐ��̍Ō�̃o�C�g��؂藎�Ƃ��A���̃o�C�g��l�Ƃ���
    �Ԃ��܂��BCORE::chop ���Z�q�́A��ɓ��̓��R�[�h�̖���������s��������菜���̂�
    �p�����A�u�����Z�q���g��(s/\n$//)���������I�ł��B������肽�����Ƃ����ꂾ��
    �Ȃ�΁Achomp ���g���ق��������S�ł��B�Ȃ��Ȃ�ACORE::chop �͖����ɂ���o�C�g
    �𖳏����Ŏ�菜���̂ɑ΂��āAchomp �͎�菜�����̂�I��Ŏ�菜������ł��B

    ���e������ CORE::chop ���邱�Ƃ͂ł��܂��� --- CORE::chop �ł���͕̂ϐ�������
    ���B

    �����Ƃ��ĕϐ��̃��X�g @list ��^����ƁA���X�g�̊e������̍Ō�̃o�C�g���؂�
    ���Ƃ���܂�:

    @lines = `cat myfile`;
    CORE::chop @lines;

    ��������܂߁A���Ӓl�Ȃ�΂ǂ�Ȃ��̂ł� CORE::chop ���邱�Ƃ��ł��܂�:

    CORE::chop($cwd = `pwd`);
    CORE::chop($answer = <STDIN>);

    ���2�s�́A���̗�Ƃ͈������������܂�:

    $answer = CORE::chop($tmp = <STDIN>); # ���

    ���̃R�[�h�ł́ACORE::chop �́A($tmp�ɓ����Ă���)�c���ꂽ������ł͂Ȃ��A�؂�
    ���Ƃ����o�C�g��Ԃ��̂ŁA$answer �ɂ͉��s�������Z�b�g����Ă��܂��܂��B�Ӑ}��
    �����ʂ𓾂邽�߂̕��@��1�́Asubstr ���g�����Ƃł�:

    $answer = substr <STDIN>, 0, -1;

    �������A���̂悤�ɏ����̂����ʂł�:

    CORE::chop($answer = <STDIN>);

    �ł���ʓI�ȃP�[�X�ł́Asubstr ���g���āACORE::chop �����������邱�Ƃ��ł��܂�:

    $last_byte = CORE::chop($var);
    $last_byte = substr($var, -1, 1, ""); # ��������

    ����炪�����ł��邱�Ƃ𗝉����Ă��܂��΁A�܂Ƃ߂� CORE::chop ���s�����Ƃ��ł�
    �܂��B2�ȏ�̃o�C�g���܂Ƃ߂Đ؂藎�Ƃ��ɂ́Asubstr �����Ӓl�Ƃ��Ďg���A�����
    �󕶎���������܂��B���̃R�[�h�� $caravan �̍Ō��5�o�C�g����菜���܂�:

    substr($caravan, -5) = "";

    �����ł� substr �ɕ��̒l��^���邱�Ƃɂ���āA(�擪����ł͂Ȃ�)��������̃I
    �t�Z�b�g���w�肵�Ă��܂��B�폜�����o�C�g��ۑ���������΁A4������ substr ���g��
    ��5�o�C�g�� CORE::chop ���܂�:

    $tail = substr($caravan, -5, 5, "");

    �������ȗ�����ƁA�ϐ� $_ ���ΏۂƂȂ�܂��B

=item * CORE::ord

    $ord = CORE::ord($expr);

    CORE::ord($expr) �� "use Sjis qw(ord);" �̋L�q�̗L���Ɋւ�炸�A��� $expr
    �̐擪�̃o�C�g�l��Ԃ��܂��B$expr ���ȗ����ꂽ�ꍇ�� $_ ���ΏۂƂȂ�܂��B
    ���̊֐��͏�ɕ����Ȃ��̒l��Ԃ��܂��B

    �����t���̒l���K�v�ł���΁Aunpack('c',$expr) ���g���܂��B�܂��S�Ẵo�C�g�l
    �����X�g�Ƃ��ĕK�v�ł���� unpack('C*',$expr) �����Ɏg���܂��B

=item * CORE::reverse

    @reverse = CORE::reverse(@list);
    $reverse = CORE::reverse(@list);

    CORE::reverse(@list) �̓��X�g�R���e�L�X�g�ł� @list �̗v�f���t���ɕ��ׂ�
    ���X�g�l��Ԃ��܂��B

    �X�J���[�R���e�L�X�g�ł� "use Sjis qw(ord);" �̋L�q�̗L���Ɋւ�炸�A @list
    �̂��ׂĂ̗v�f��A��������ŁA�o�C�g�P�ʂŋt���ɂ������̂�Ԃ��܂��B

=item * CORE::getc

    $getc = CORE::getc(FILEHANDLE);
    $getc = CORE::getc($filehandle);
    $getc = CORE::getc;

    FILEHANDLE �Ɍ��т���ꂽ���̓t�@�C������A����1�o�C�g��ǂ�ŕԂ��܂��B
    end-of-file(�t�@�C���̏I���) �ɂȂ������A���邢�� I/O �G���[�����������ꍇ��
    �́Aundef ��Ԃ��܂��BFILEHANDLE ���ȗ�����ƁASTDIN ������͂��܂��B

    ���̊֐��͏����x�����̂́A�L�[�{�[�h����1�o�C�g����͂���ۂɕ֗��ł� -- �L�[
    �{�[�h���͂��o�b�t�@�����O�Ȃ��ɐݒ�ł���΂ł����B���̊֐��́A�W��I/O���C�u
    �����ɑ΂��āA�o�b�t�@�����O�Ȃ��œ��͂���悤�ɗv�����܂��B�c�O�Ȃ��ƂɁA�W��
    I/O���C�u�����́A�I�y���[�e�B���O�V�X�e���ɑ΂��ăo�b�t�@�����O�Ȃ��ŃL�[�{�[�h
    ���͂��s���悤�ɗv�����邽�߂́A�ڐA���̂����i��p�ӂ���܂łɂ́A�W��������
    �Ă��܂���B����ɂ́A���X�m�b�𓭂����āA�I�y���[�e�B���O�V�X�e���ɌŗL�̂��
    ��������K�v������܂��BUnix �ł́A���̂悤�ɂ���΂��܂������ł��傤�B

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

    ���̃R�[�h�́A�[�����玟�Ƀ^�C�v���ꂽ1�o�C�g��ϐ� $key �ɓ���܂��B���Ȃ���
    �V�X�e���� stty �v���O������ cbreak �I�v�V����������Ȃ�A��̃R�[�h�̂����A
    $BSD_STYLE ���^�̏ꍇ�̃R�[�h���g���Ɨǂ��ł��傤�B�����łȂ���΁A$BSD_STYLE
    ���U�̏ꍇ�̃R�[�h���g���΂悢�ł��傤�B

=item * CORE::index

    $index = CORE::index($string,$substring,$offset);
    $index = CORE::index($string,$substring);

    CORE::index �́A�o�C�g�� $string �̒��Ɋ܂܂��A����1�̃o�C�g�� $substring
    ��T���܂��B$string �̒��ŁA$substring ���ŏ��ɏo������ʒu���o�C�g�P�ʂŐ�����
    �Ԃ��܂��B$offset ���w�肳��Ă���ꍇ�A$string �̐擪���� $offset �o�C�g���X�L�b
    �v�����ʒu����A$substring ��T���n�߂܂��B�ʒu�� 0 ���x�[�X�ɂ��Đ����܂��B
    $substring ��������Ȃ���΁ACORE::index �֐��̓x�[�X��� 1 �����������l -1
    ��Ԃ��܂��BCORE::index ���g���āA�o�C�g��S�̂𒲂ׂ�ɂ́A���̂悤�ɂ��܂��B

    $pos = -1;
    while (($pos = CORE::index($string, $lookfor, $pos)) > -1) {
        print "Found at $pos\n";
        $pos++;
    }

=item * CORE::rindex

    $rindex = CORE::rindex($string,$substring,$offset);
    $rindex = CORE::rindex($string,$substring);

    CORE::rindex �� CORE::index �Ǝ��Ă��܂����A�o�C�g�� $string �̒��ŁA�����o�C�g
    �� $substring ���Ō�ɏo������ʒu���o�C�g�P�ʂŐ����ĕԂ��܂�(�܂�
    reverse CORE::index �ł�)�B$substring ��������Ȃ���΁A-1 ��Ԃ��܂��B
    $offset �ɂ���āA�l�Ƃ��ĕԂ����Ƃ��������A�ł��E���̈ʒu���w�肷�邱��
    ���ł��܂��BCORE::rindex ���g���āA�o�C�g��S�̂𖖔�����擪�Ɍ������Ē��ׂ�
    �ɂ́A���̂悤�ɂ��܂��B

    $pos = CORE::length($string);
    while (($pos = CORE::rindex($string, $lookfor, $pos)) >= 0) {
        print "Found at $pos\n";
        $pos--;
    }

=back

=head1 bytes::* �T�u���[�`���̃A���G�X�P�[�v

���̃\�t�g�E�F�A�ɂ���� bytes::* �T�u���[�`���̐擪�� 'bytes::' ����菜����܂��B

  -----------------------------------------
  �����O           ������    ����
  -----------------------------------------
  bytes::chr       chr       �o�C�g�w��
  bytes::index     index     �o�C�g�w��
  bytes::length    length    �o�C�g�w��
  bytes::ord       ord       �o�C�g�w��
  bytes::rindex    rindex    �o�C�g�w��
  bytes::substr    substr    �o�C�g�w��
  -----------------------------------------

=head1 �W�����W���[���̓��e�̃G�X�P�[�v

�W�����W���[���̃t�@�C���� /Perl/site/lib/Sjis �ɃR�s�[���� 'use utf8;' ��
'use Sjis;' �ɏ��������܂��B�K�v�ɉ����Ă��̑��̏��������s���Ă��������B

=head1 ��������v���O�}����у��W���[��

  -----------------------------------------------------------
  �����O                    ������
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

  utf8 �v���O�}�Abytes �v���O�}�̓R�����g�A�E�g����܂��B���t�@�C���Œ񋟂����
  ����T�u���[�`���̑���Ƃ��� Esjis.pm ���_�~�[�T�u���[�`����񋟂��܂��B

=over 2

=item * �_�~�[�̃T�u���[�`�� utf8::upgrade

  $num_octets = utf8::upgrade($string);

  $string �̃I�N�e�b�g����Ԃ��܂��B

=item * �_�~�[�̃T�u���[�`�� utf8::downgrade

  $success = utf8::downgrade($string[, FAIL_OK]);

  ���̃T�u���[�`���͏�ɐ^�̒l��Ԃ��܂��B

=item * �_�~�[�̃T�u���[�`�� utf8::encode

  utf8::encode($string);

  ���̃T�u���[�`���͉����Ԃ��܂���B

=item * �_�~�[�̃T�u���[�`�� utf8::decode

  $success = utf8::decode($string);

  ���̃T�u���[�`���͏�ɐ^�̒l��Ԃ��܂��B

=item * �_�~�[�̃T�u���[�`�� utf8::is_utf8

  $flag = utf8::is_utf8(STRING);

  ���̃T�u���[�`���͏�ɋU�̒l��Ԃ��܂��B

=item * �_�~�[�̃T�u���[�`�� utf8::valid

  $flag = utf8::valid(STRING);

  ���̃T�u���[�`���͏�ɐ^�̒l��Ԃ��܂��B

=item * �_�~�[�̃T�u���[�`�� bytes::chr

  �o�C�g�w���̃T�u���[�`�� chr �Ƃ��Ď�������Ă��܂��B

=item * �_�~�[�̃T�u���[�`�� bytes::index

  �o�C�g�w���̃T�u���[�`�� index �Ƃ��Ď�������Ă��܂��B

=item * �_�~�[�̃T�u���[�`�� bytes::length

  �o�C�g�w���̃T�u���[�`�� length �Ƃ��Ď�������Ă��܂��B

=item * �_�~�[�̃T�u���[�`�� bytes::ord

  �o�C�g�w���̃T�u���[�`�� ord �Ƃ��Ď�������Ă��܂��B

=item * �_�~�[�̃T�u���[�`�� bytes::rindex

  �o�C�g�w���̃T�u���[�`�� rindex �Ƃ��Ď�������Ă��܂��B

=item * �_�~�[�̃T�u���[�`�� bytes::substr

  �o�C�g�w���̃T�u���[�`�� substr �Ƃ��Ď�������Ă��܂��B

=back

=head1 Sjis �\�t�g�E�F�A�̃}���`�o�C�g�A���J�[�����O����

=over 2

=item * �o�C�g�����ƕ�������(CJKV�����؉z��񏈗����)

�V�t�gJIS�̂悤�ȃ}���`�o�C�g��������������Ƃ��Ɂu�����̍폜�v�u�����̑}���v�u������
�����v��K�؂ɍs�����߂ɂ́A1������1�o�C�g�ŕ\�����Ƃ����Œ�ϔO��j��Ȃ���΂Ȃ�
�܂���B

���̂��Ƃɂ���

  CJKV�����؉z��񏈗�(ISBN 4-87311-108-0)
  http://www.oreilly.co.jp/books/4873111080/
  
  P.439 9.6 �o�C�g�����ƕ�������
    9.6.1 �����̍폜
    9.6.2 �����̑}��
    9.6.3 �����̌���

�ɏڂ���������Ă��܂��B
�܂������ Perl �v���O���~���O�ŉ������邽�߂̕��@��������

  �t�^W Perl�̃v���O������
    W.8 CJKV�������̃e���v���[�g
      W.8.5 �V�t�gJIS ������
    W.9 �}���`�o�C�g�A���J�[�����O
    W.10 �}���`�o�C�g����

�Ɍf�ڂ���Ă��܂��B

=item * �O�i�ɂ��V���ȉۑ�

��L�̃}���`�o�C�g�A���J�[�����O�̃e���v���[�g�����p����ƁA�V�t�gJIS�̕�����𐳋K�\��
�ŏ����ł���悤�ɂȂ�܂����A���̑O�i�ɂ���ĐV���ȕǂɓ˂�������܂��B

  wcs_abe����̕�
  Perl �t�@�C����C�ǂ݌�̐��K�\���ɂ���
  http://okwave.jp/qa/q6674287.html
  
  Perl�ňȉ��̒ʂ�Ahtml�t�@�C����S�ēǂݍ��񂾌�ɐ��K�\���𓖂Ă����̂ł����A���܂�
  �����܂���B���k�ł����A�����������m�̕���������Ⴂ�܂����狳���Ē����܂���ł��傤
  ���B�܂��A���ɗǂ��������@������܂����狳���Ē�����ƍK���ł��B
  ��PC����windows7, perl5.12�ł��B���ɕs�����������܂����炲�w�E�������B
  
  -----
  #--test.html(�����̐����͍s��)
  000001 <dl>
  000002 <dt>aaa</dt>
  000003 <dd>12345</dd>
  000004 </dl>
  
  �i�����j
  
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
  
  �t�@�C���̎n�߂̕����Ɠ�����̂ɁA�㔼�ł͓�����܂���B
  ���K�\���̑ΏۂƂ��đ傫�������ł��傤���E�E�E�B
  
  $data =~ s|<dt>aaa</dt>|<dt>ccc</dt>|;
  �́A������܂���
  
  $data =~ s|<dt>bbb</dt>|<dt>ccc</dt>|;
  ���Ɠ�����܂���B
  
  �ǂ�����낵�����肢�������܂��B
  
  �⑫
  ��L�̎���ł́A�֘A�͔����Ǝv�������ċL�ڂ��Ȃ�������ł����A����html�t�@�C����
  Sjis�e�L�X�g�ŁA�����Sjis.pm���g���ď������s�����Ƃ��Ă��܂��B

���̏Ǐ���Č�����ŏ��̃R�[�h��������

  # �X�N���v�g test2.pl
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

�̂悤�ɂȂ�A���s���ʂ�

  ok - ('A' x 32767).'B' =~ /B/
  not ok - ('A' x 32768).'B' =~ /B/

�ƂȂ�܂��B'A' �� 32,767��������� 'B' �͌������Č�����̂ɁA32,768���������
'B' �͌������Ă�������Ȃ��̂ł��B

=item * Perl�̐��K�\���̗ʎw��q�̌��E

���̌����� perl �C���^�v���^�ɂ���܂��B

  �ʎw��q
  http://perldoc.jp/docs/perl/5.14.1/perlre.pod
  
  �ȉ��̕W���I�ȗʎw��q���g���܂�:
    *           Match 0 or more times
    +           Match 1 or more times
    ?           Match 1 or 0 times
    {n}         Match exactly n times
    {n,}        Match at least n times
    {n,m}       Match at least n but not more than m times
  
  (�O��) "*" �ʎw��q�� {0,} �ƁA"+" �ʎw��q�� {1,} �ƁA "?" �ʎw��q�� {0,1} �Ɠ���
  �ł��B n �y�� m �� perl ���r���h�����Ƃ��ɒ�`��������̐�����菬���Ȕ񕉐������
  ��������܂��B ����͑��̃v���b�g�t�H�[���ł� 32766 ��ɂȂ��Ă��܂��B ���ۂ̐���
  �͎��̂悤�ȃR�[�h�����s����Ɛ��������G���[���b�Z�[�W�� ���邱�Ƃ��ł��܂�:
  
    $_ **= $_ , / {$_} / for 2 .. 42;

=item * �ǂ����z����ɂ�

���̌��E�����������@�Ƃ��āA��A�m�s���񂪍l�Ă����ȉ��̕��@������܂��B

  2002-01-17: ����������ɑ΂��鐳�K�\������
  http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm#long
  
  # ��񂾂��}�b�`
  my $Apad = '(?:(?:\A|[\x00-\x80\xA0-\xDF])(?:[\x81-\x9F\xE0-\xFC]{2})*?)';
  my $str1 = ('��' x 100000) . '�A�CABC';
  $str1 =~ /$Apad([A-Z]+)/o;
  print "$1\n"; # "ABC" �ƕ\�������B
  
  # �O���[�o���}�b�`
  my $Gpad = '(?:(?:\G|[\x00-\x80\xA0-\xDF])(?:[\x81-\x9F\xE0-\xFC]{2})*?)';
  my $str2 = '��' x 100000 . '�A�CABC'. '��' x 100000 . 'XYZ';
  my @array = $str2 =~ /$Gpad([A-Z]+)/go;
  print "@array\n"; # "ABC XYZ" �ƕ\�������B

\A �� \G ���g���������Ă���̂ł����A\G �͍ŏ��Ɏg����Ƃ��� \A �Ɠ����悤�ɋ@�\
����̂ŁA���ۂɂ� \G �̕��@�ЂƂ����ł悢�ł��傤�B

  ���K�\���̃N�H�[�g���̉��Z�q
  http://perldoc.jp/docs/perl/5.16.1/perlop.pod#Regexp32Quote-Like32Operators
  
  \G assertion (\G �A�T�[�g)
  
  (�O��)�ȑO�� /g �}�b�`��K�p���Ă��Ȃ��^�[�Q�b�g������ɑ΂��� /g �Ȃ��� \G ���g���ƁA
  ������̐擪�Ƀ}�b�`���� \A �A�T�[�g���g���̂� �������ƂɂȂ�܂��B(�㗪)

=item * ���Ə����c���Ă�����ւ̑Ή�

��L�̃y�[�W�ɂ�

  ��o�C�g�������A��o�C�g�����̂������o�C�g�� [\x40-\x7E\x80\xA0-\xDF] �ŏI������
  ���A���Ȃ��Ƃ��K���ȊԊu�Łi����ɒB���Ȃ������Ɂj�o������΁A�G���[�ɂȂ炸�ɏ�����
  �邱�Ƃ��ł��܂��B�i�m���I�Ȗ��ł��̂ŁA���S�ł͂���܂���B�j

�Ƃ���A�S�o�C�g�� US-ASCII �ō\������Ă���f�[�^�̏ꍇ�͂��܂������܂���B
���̂悤�ȏꍇ�̓A���J�[�����O��

  qr{\G.*?}s

�ɂ��邱�ƂőΉ����܂��B

=item * �܂Ƃ߂��

�ȏ�̑S�Ă��l�����āA�Ăу}���`�o�C�g�A���J�[�����O���l����ƈȉ��̂悤�ɂȂ�܂��B

  qr{\G(?(?=.{0,32766}\z)(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?|(?(?=[\x00-\x80\xA0-\xDF\xFD-\xFF]+\z).*?|(?:.*?[\x00-\x80\xA0-\xDF\xFD-\xFF](?:[^\x00-\x80\xA0-\xDF\xFD-\xFF]{2})*?)))}oxms
  
  ���
  
  qr{\G  # \G �A�T�[�g�� \A �A�T�[�g�����˂�
       (?(?=.{0,32766}\z)  # �Ώە����� 32,766 �I�N�e�b�g�ȉ��ł����
                         (?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?  # ���ꂪ�}���`�o�C�g�A���J�[�����O�Ɏg����
                                                                                    |  # 32,767 �I�N�e�b�g�ȏ�ŁA�Ȃ�����
                                                                                     (?(?=[\x00-\x80\xA0-\xDF\xFD-\xFF]+\z)  # �S�o�C�g���V���O���o�C�g�R�[�h�Z�b�g�ō\������Ă���Ȃ��
                                                                                                                           .*?  # ���ꂪ�A���J�[�����O�Ɏg����
                                                                                                                              |  # ����ȊO�̏ꍇ��
                                                                                                                               (?:.*?[\x00-\x80\xA0-\xDF\xFD-\xFF](?:[^\x00-\x80\xA0-\xDF\xFD-\xFF]{2})*?)  # ���ꂪ�}���`�o�C�g�A���J�[�����O�Ɏg����
                                                                                                                                                                                                          ))}oxms

MSWin32 ���� ActivePerl �̃o�[�W���� 5.6 �ȍ~(Perl5.10.0���܂݂܂�)�A���邢�͂��̑�
�� Perl �̃o�[�W���� 5.10.1 �ȍ~�̏ꍇ�ɂ��̃}���`�o�C�g�A���J�[�����O���g���܂��B
����ȊO�̏ꍇ�́A����܂łǂ���

  qr{\G(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?}oxms

���g���܂��B

=back

=head1 ���ϐ�

 ���̃\�t�g�E�F�A�͔r������� flock �֐����g�p���܂��B�t�@�C�����ǎ��\�ɂȂ�܂�
 ���邢�͏����݉\�ɂȂ�܂Ńv���O�����̎��s�̓u���b�N����܂��B
 ��������ϐ� SJIS_NONBLOCK ���`���邱�ƂŃu���b�N�����Ȃ��悤�ɂ��邱�Ƃ��ł���
 ���B

 ��:

   SET SJIS_NONBLOCK=1

 (�l '1' �͈Ӗ��������Ȃ��̂ŉ��ł��\���܂���)

=head1 MacJPerl �̋@�\

 �}���� Web ��̏����Q�l�ɂ��� MacOS �ɑΉ����Ă݂܂����B���@���Ȃ����߂Ƀe�X�g��
 �ł��Ă��܂���B����񍐁A�o�O�񍐓�������ƂƂĂ����肪�����ł��B
 
 ���s�ɂ͈ȉ��̃\�t�g�E�F�A���K�v�ł��B
 1. MacPerl ���W���[��
 2. Mac::Files ���W���[��
 3. ToolServer
 4. MPW(Macintosh Programmer's Workshop)

=head1 �o�O�Ɛ��������ƌ݊���

���̃\�t�g�E�F�A�́A���̔\�͂�s�����āA�e�X�g���ďƍ����܂����B�����ł����Ă��A����
�̐��K�\�����܂ރ\�t�g�E�F�A�́A������x�̃o�O���������Ƃ��܂ʂ���邱�Ƃ��ł��܂���B
����āA�������Ȃ��̃X�N���v�g�ł͂Ȃ��āASjis�\�t�g�E�F�A�̃o�O���������̂Ȃ�A
�ŏ����̃e�X�g�R�[�h�ɐ؂�l�߂���ŁA��҂܂ŕ񍐂��Ē�����Ə�����܂��B

���邢�͂����ƗL�p�ȃc�[���ɂ��邽�߂̂悢�A�C�f�B�A���������Ȃ�A�F�Ƌ��L���Ē�����
�Ƃ��肪�����ł��B

=over 2

=item * format

    �I���W�i���� Perl �Ƌ@�\�������ł�(ShiftJIS �ɑΉ����Ă��܂���)�B

=item * ���K�\���̃N���C�X�^

    ���K�\���̃N���C�X�^ (?s) �� (?i) �͓��ʁA��������Ȃ��ł��傤�B
    �N���C�X�^ (?s) �� /s �C���q�� .(�h�b�g) �� \N �ő�p�ł��܂��B
    �N���C�X�^ (?i) �� \F �` \E �ōH�v���ċL�q���Ȃ��Ƃ����܂���B

=item * chdir

    perl5.005 �ł���Ώ�� chdir() �𐳏�Ɏ��s�ł��܂��B

    DOS���̃V�X�e��($^O �̒l�� MSWin32, NetWare, symbian, dos �̂����ꂩ��
    �ꍇ)�́A�ȉ��̐�������������܂��B

    perl5.006 �܂��� perl5.00800 �̏ꍇ�ŕ����R�[�h(0x5C)�ŏI���f�B���N�g��
    ���w�肵�Ď��s����ɂ� jacode.pl ���C�u�������K�v�ł��B

    perl5.008001�ȍ~, perl5.010, perl5.012, perl5.014, perl5.016, perl5.018 �ɂ�
    �����R�[�h(0x5C)�ŏI���f�B���N�g�����w�肵�Ď��s����Ƃ��ACOMMAND.COM ����
    ���� cmd.exe �ɂ���� 8dot3name �`���̒Z�����O���擾�ł����ꍇ�� chdir() ��
    �������܂��B�������Achdir() ��̃J�����g�f�B���N�g���̍ŏI�̃T�u�f�B���N�g��
    �� 8dot3name �`���̒Z�����O�ɂȂ�܂��B

    �Q�l�����N
    Bug #81839
    chdir does not work with chr(0x5C) at end of path
    http://bugs.activestate.com/show_bug.cgi?id=81839

=item * ���Ӓl�Ƃ��Ă� Sjis::substr

    �o�[�W���� 5.14 ������ Perl �̏ꍇ�ASjis::substr �� CORE::substr �Ƃ͈قȂ�A
    ���Ӓl�Ƃ��Ĉ������Ƃ��ł��܂���B������̈ꕔ����ύX�������ꍇ�́ASjis::substr
    ��4�Ԗڂ̈����Ƃ��Ēu������̕�������w�肵�܂��B
    
    Sjis::substr($string, 13, 4, "JPerl");

=item * ����ϐ� $` �� $& ���g���Ƃ��� /( ���K�\���S�̂��L���v�`�� )/ ����K�v������܂�

    �Ȃ��Ȃ�΁A�ȉ��̂悤�ɕϊ�����A$1 �𗘗p���邽�߂ł��B
 
    -------------------------------------------------------------------------------------------
    �����O          ������               ���s�������e
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

=item * ���K�\����K�p���镶����̒����̏��

    �O�q�̂Ƃ���A�G�X�P�[�v��̐��K�\���ɂ̓}���`�o�C�g�A���J�[�����O�����̂�
    �߂̋L�q ${Esjis::anchor} ���ǉ�����܂����A���̒��Ɋ܂܂�� \G �̐������
    ���܂��BMSWin32�ł�ActivePerl5.6�ȍ~(5.10.0���܂݂܂�)�A���邢�͑���Perl��
    �ꍇ��5.10.1�ȍ~�łȂ���΁A�������32,767�o�C�g�𒴂���ʒu�Ń}�b�`������
    ���Ƃ��ł��܂���B
 
    �Q�l�����N
    
    In 5.10.0, the * quantifier in patterns was sometimes treated as {0,32767}
    http://perldoc.perl.org/perl5101delta.html
    
    [perl #116379] \G can't treat over 32767 octet
    http://www.nntp.perl.org/group/perl.perl5.porters/2013/01/msg197320.html
    
    perlre - Perl regular expressions
    http://perldoc.perl.org/perlre.html
    
    perlre length limit
    http://stackoverflow.com/questions/4592467/perlre-length-limit

=item * �W�J����Ƌ�ɂȂ鐳�K�\�����̕ϐ�

    ��̃��e����������Ƃ͈قȂ�A���K�\�����ɓW�J���ꂽ�ϐ��̒l���󕶎���ł���
    �Ă��A���O�ɐ����������K�\���͎g���܂���B

=item * ??, m?? ���̐���

    ?? �܂��� m?? �̓����Ń}���`�o�C�g�����ɑ΂��� {n,m} {n,} {n} * + �Ȃǂ̗ʎw
    ��q��t�������ꍇ�́A���̕����� ( ) �ň͂�ŋL�q����K�v������܂��B���̌��ʁA
    $1,$2,$3,... �͂���Ă��܂����߁A���̋L�q���C������K�v������܂��B
    �Ȃ� ?? �܂��� m?? �̓f���~�^�� ? �Ȃ̂ŁA(?: ) ��ʎw��q�� ? {n,m}? {n,}?
    {n}? �͋L�q���邱�Ƃ��ł��܂���B

=item * ��ǂ݌���

    ��ǂ݌���(�Ⴆ�� (?<=[A-Z]))�����O�̓�o�C�g�����̑��o�C�g�Ɍ���ă}�b�`
    ���邱�Ƃɂ͑Ώ�����Ă��܂���B
    �Ⴆ�΁A'�A�C�E' =~ /(?<=[A-Z])([�A�C�E])/ �����s����ƃ}�b�`���� $1 �� '�C'
    �ɂȂ�܂����A����͐���������܂���B

=item * ���K�\���̏C���q /a /d /l /u

    ���̃\�t�g�E�F�A�̃R���Z�v�g�͕����̕����������𓯎��ɗ��p���Ȃ��悤�ɂ���
    ���Ƃł��B�]���ďC���q /a /d /l /u ���T�|�[�g���܂���B
    \d �͐̂����� [0-9] ���Ӗ����܂��B

=item * ���O�t������

    �Ⴆ�΁A\N{GREEK SMALL LETTER EPSILON}�A\N{greek:epsilon}�A\N{epsilon} �̂悤
    �Ȗ��O�t�������͗��p�ł��܂���B

=item * ���K�\����Unicode����

    ���K�\����Unicode�����͗��p���邱�Ƃ��ł��܂���BPerl5.18�Œǉ����ꂽ (?[])
    �\�������p�ł��܂���B���܂̂Ƃ��낻�����T�|�[�g����\��͂���܂���B

=item * ��������� ${^WIN32_SLOPPY_STAT} �̒l

    Microsoft Windows ��� chr(0x5c) �ŏI���p�X���w�肵�ăt�@�C���e�X�g(���Z�q)�A
    ���邢�� lstat()�Astat() �����s����ƁA${^WIN32_SLOPPY_STAT} �ɐ^�̒l���ݒ肳��
    �Ă���ꍇ�ł����̃t�@�C�����I�[�v�����Ē��ׂ܂��B

=item * eval "string"

    eval �� "string" ���G�X�P�[�v����@�\�͂܂���������Ă��܂���B����̃o�[�W����
    �ŃT�|�[�g�����ł��傤�B

=back

=head1 ���

���̃v���W�F�N�g�� ��t �� ina@cpan.org �ɂ���Ďn�܂�܂����B

=head1 ���쌠

���̃\�t�g�E�F�A�̓t���[�\�t�g�E�F�A�ł��B���Ȃ��� Perl �Ɠ������C�Z���X
�̌��ōĔz�z�y�ѕύX���s�����Ƃ��o���܂��B�ڂ����� perlartistic ���Q�Ƃ���
���������B

���̃\�t�g�E�F�A�͗L�p�ł��邱�Ƃ�����ĔЕz����܂����A*�S���̖��ۏ�* 
�ł��B���Ɖ\���̕ۏ؂����̖ړI�ւ̓K�����́A���O�Ɏ����ꂽ���̂���
�ߑS�����݂��܂���B

=head1 �V�t�gJIS�R�[�h�Ƃ�(���{���񏈗����)

�V�t�gJIS�������́A�}�C�N���\�t�g�Ђɂ��J�����ꂽ�A���{�̃R���s���[�^�ōł��悭
�p�����镄���������ł��B�V�t�gJIS�́uMS����(Microsoft����)�v�A�܂��́uSJIS
(ShiftJIS�̗���)�v�Ƃ��Ă΂�Ă��܂��B

���ē��{�̃R���s���[�^���[�U�͔��p�Љ��������g���Ȃ��������߁A�]�������Ƃ̌݊���
���ێ�����ړI�ŃV�t�gJIS���J������܂����B

�V�t�gJIS�ɂ����ẮA16�i���� 0x81�`0x9F �܂��� 0xE0�`0xEF �͈̔͂����I�N�e�b�g
�ɂ����1����2�I�N�e�b�g���[�h���J�n���܂��B�����Ă��̃I�N�e�b�g�́A��������n�܂�
2�I�N�e�b�g�����̑�1�I�N�e�b�g�Ƃ��ď�������܂��B����(��2)�I�N�e�b�g�́A16�i����
0x40�`0x7E �܂��� 0x80�`0xFC �͈̔͂����l�łȂ���΂Ȃ�܂���B��1�I�N�e�b�g��
�͈͂͊g��ASCII�����Z�b�g�A�܂�ŏ�ʃr�b�g���I���ɂȂ���8�r�b�g�����Z�b�g�͈̔�
�Ɋ��S�Ɏ��܂��Ă��邱�Ƃɒ��ڂ��Ă��������B�܂��V�t�gJIS�́A���p�Љ�����ASCII/JIS
���[�}�����T�|�[�g���Ă��܂��B

�ꕔ�̃V�t�gJIS�d�l(���Ƀ��[�J�d�l)�ł́A���[�U��`�����̃R�[�h�̈��A�ꍇ�ɂ����
�͔��p�Љ����󔒕����̃R�[�h�ʒu����`����Ă��܂��B�����{�i�I�ȏ�������]�ނ̂�
����΁A���̂悤�ȃR�[�h�̈��R�[�h�ʒu�͕s�s���ł��B�Ƃ����̂��A���̂悤�ȕ����́A
�ʂ̓��{�ꕄ��������(�܂�JIS��EUC)�̃R�[�h�ʒu�ɕϊ��ł��Ȃ��悤�ɕ���������Ă�
�܂�����ł��B

=head1 �E�B�L�y�f�B�A�ɂ��uShift_JIS�v�̒�`

Shift_JIS (2011.10.27 00:00:00 JST). In Wikipedia: The Free Encyclopedia.
Retrieved from
http://ja.wikipedia.org/wiki/Shift_JIS

�o�T: �t���[�S�Ȏ��T�w�E�B�L�y�f�B�A(Wikipedia)�x

Shift_JIS�i�V�t�g�W�X�j�́A���ݑ����̃p�\�R����̃t�@�C�����œ��{���\������
�Ɏg���Ă��镶���R�[�h�ł���B���Ă̓x���_�[�ɂ��Ǝ��g�����܂ޕ����R�[�h
�Q�ɑ΂���B���Ȗ��̂ł��������A���݂͕W��������JIS X 0208�̕�����1�ŋK�肳��
�Ă���B�uShift_JIS�v��IANA�ɂ�����o�^���ł���B

Shift_JIS�̒a��

1980�N��A�p�\�R���p16�r�b�gCPU�̕��y�������܂��āA�����≼����\���\�ȃn�[
�h�E�F�A��������p�\�R�������X�Ɣ������ꂽ�B���̂��߁A���{���\���ł��镶��
�������������͍�����Ă����iShift_JIS���u�V�t�gJIS�R�[�h�v�ƌĂ�ŕ���������
�W���i�����R�[�h�j�̖ʂ݂̂��l����c�_�����邪�A�����ł͕��������������̖ʂ�
�œ_�𓖂Ă�j�B

��������������Shift_JIS�̐݌v�҂�́A��s���Ă悭���p����Ă���JIS C 6220
�i���݂�JIS X 0201�j��8�r�b�g�����i�ȉ��u�p�����E���p�J�i�v�j�ƁAJIS C 6226
�i���݂�JIS X 0208�A�ȉ��u�����v�j�̗������W����\�����悤�Ƃ����B�܂��A�t�@
�C���̑傫���⏈�����Ԃ̒Z�k��}�邽�߁A�G�X�P�[�v�V�[�P���X�Ȃ��ō��݉\��
���邱�Ƃ���}�����B

JIS C 6220��JIS C 6226��2�͂Ƃ��ɁAISO 2022�ŕ����W����؂�ւ��ė��p����
�݌v���������BISO 2022�Ɋ�Â����������������ł́A�p�����A���p�J�i�A�����͂���
����A8�r�b�g������Ԃ̒���GL/GR�Ƃ����̈��1���i������������2��j�g�����Ƃ�
�\���ł���B�����p�����Ɗ�����2���G�X�P�[�v�V�[�P���X�Ȃ��ō��݂������Ȃ�A
�p������GL�A������GR�Ɋ��蓖�Ă���@������BEUC-JP�́A�����悻���̂悤�Ɏ���
����Ă���B

�������A�p�\�R���ł͂��łɁAJIS X 0201��8�r�b�g�����A�܂�GL�ɉp�����AGR��1�o
�C�g�J�^�J�i�i���p�J�^�J�i�j�����蓖�Ă����������y���Ă����B�p������1�o�C�g�J
�^�J�i��2�𓮂������Ƃ́A���������̌����ɂȂ邽�ߔ�����K�v���������B����
���߁AISO 2022�̘g���̗̈�Ɋ��������݂����邱�Ƃ͍�������B

1982�N�A�����̕����ʒu�𕡎G�Ɉړ��i�V�t�g�j���A������Ԃ̌��Ԃɉ�������
Shift JIS���a�������B������������邽�߂ɂ́A������1�o�C�g�ڂƂ��āAISO 2022
�ɂ�����GR�iA1(16)-FE(16)�j�̈��3����1�c���Ă������g�p�̈�ɉ����AISO 2022��
�����Ĕ�g�p��CR�i80(16)-9F(16)�j�̈���g�p���邱�ƂƂ����B�������AGL�i21(16)
-7E(16)�j�̈�ɂ����ẮAJIS X 0201�̋L���ɓ����镔���͋ɗ͔������B�����2�o�C
�g�ڂɂ́AISO 2022�Ƃ͈قȂ�A�p�����E���p�J�i�Ɏg�p�ς݂̗̈�����܂ށAGL�A
CR�AGR�ɂ�����e�̈�̂قڑS�Ă��g���K�v���������B

�}�C�N���\�t�g�i���{�@�l�j����̌Ð식�ɂ��ƁAShift_JIS�̐���ɂ́A�A�X
�L�[�A�}�C�N���\�t�g�i�āj�A�O�H�d�@�A�}�C�N���\�t�g�E�F�A�E�A�\�V�G�C�c�A�f
�W�^�����T�[�`�i�āj���ւ��A���ɃA�X�L�[�̎R���Ǒ������S�ƂȂ��č쐬����
���̂��Ƃ����B����ɑ΂���ِ��Ƃ��āA���s��w�������̈����F��́A�}�C�N���\
�t�g�E�F�A�E�A�\�V�G�C�c�ƎO�H�d�@�݂̂̋����J�����Ǝ咣���Ă������A�R���{�l
�̔����ɂ������͎�����P�񂷂锭�������Ă���B�܂��Â���Life with UNIX��
�󏑁iISBN 4-7561-0783-4�j�́uUNIX�l�����T�v�|��ŉ��M�����ip. 45�j�ŁA�[��
�O���ɁuMS�����R�[�h�̍�҂̈�l�v�Ƃ����Љ��������Ă����B

Shift_JIS�̕W����

Shift_JIS�́A�����������W���Ƃ��̕��������������̗������܂ތ����̖���������
�邽�߂̋Z�p�ł���B����䂦�AJIS X 0208�̕����W���𗘗p���Ă͂�����̂́A
ISO 2022�̕������̕��j�͈̔͂̊O�ɂ���B

���������݂ł́AJIS X 0208:1997�̕�����1�ɁA�u�V�t�g�������\���v�Ƃ������O��
�d�l����`����Ă���B����́A�f�t�@�N�g�X�^���_�[�h�ƂȂ��Ă���Z�p�ɂ���
�͏o������Ƃ����A�Ƃ������W�������Ă��܂����Ƃ����Ӑ}�����{�H�ƕW��������
 (JISC) �ɂ����Ă̂��Ƃł���B

JIS X 0208�̊g���K�i�ł���JIS X 0213�ł́A2000�N����̏��łŕ�����1�Ƃ���
Shift_JISX0213����߂�ꂽ�B2004�N��������10�����ǉ��ɔ����āAShift_JIS-2004
�Ɩ��̂��ύX���ꂽ�B

IANA�ł��uShift_JIS�v�Ƃ������O�����蓖�Ă��Ă���B

���_�ƌ��_

���_
1. �S�p�����ƁAJIS X 0201�Œ�`���������锼�p�J�i�����𓯈�̃R�[�h�̌n��
   �\���ł���B
2. ���{����ɂ����ẮAMS-DOS�œ��{��p�����R�[�h�Ƃ��č̗p����Ĉȗ��A�p�\
   �R���ɂ����Ĉ��|�I�ȕ��y�x������A���̑��̕��������������ɔ�ׂăf�[�^����
   �\���������B

���_
1. ���p�J�i�̂��߂̗̈���m�ۂ����֌W��A�R�[�h�V�[�N�G���X����_�ԍ��́u��v
   �̋�؂�ł͂Ȃ��ӏ��ŕ��f���Ă���B���̂��߁A�R�[�h�ԍ������Z�ŋ��߂�ۂ�
   �ώG�ȏ������K�v�ł���B
2. 2�o�C�g�ڂ�80(16)����(ASCII�̃R�[�h�̈�)�������B���̂��߁A�����̋�؂��
   ����Ɏ�Ԃ�������B�t�@�C����d���̐擪���當���R�[�h�̔��������ꍇ�͂悢
   ���A��납�画������悤�Ƃ���ƁA�ň��̏ꍇ�A�擪�܂ł��ǂ�Ȃ��Ƃ����Ȃ�
   ���Ƃ����邽�߁A�v���O�����̍����ɍH�v���K�v�ɂȂ�B�܂��A���̗̈�Ɋ܂�
   ���ꕔ�̕����̈����̂��߁A�}���`�o�C�g��EUC-JP�AUTF-8�Ȃǂɔ�ׁA�v���O
   ���~���O��̈���������i�������Q�Ɓj�B
3. JIS�⏕�������\���ł��Ȃ��B�⏕�����̕�������Shift_JIS�̃R�[�h���o�^������
   ���܂�Ȃ��B
4. �����W���ɂ��Ă͎����x���_��JIS X 0208�ŋK�肳��Ă��Ȃ��@��ˑ��̊g����
   �{���Ă��邱�Ƃ������A�����������g�������Ɋւ��Ă̓f�[�^�����\�����Ⴂ�B

2�o�C�g�ڂ�5C���ɂȂ肤�邱�Ƃɂ����

Shift_JIS�ł́A�u�\�v�u�\�v�Ȃǈꕔ�̎���2�o�C�g�ڂɁA5C(16)�iShift_JIS�ł́�
�L���AASCII�Ȃǂł̓o�b�N�X���b�V���j���g�p���Ă���B�����̃v���O���~���O����
 (C�APerl�ABourne Shell�ȂǑ���) �ł́A����5C(16)���G�X�P�[�v�����Ƃ��Ă���B
���������āA�\�[�X�R�[�h�╶���f�[�^�̏����ɂ�����Shift_JIS��z�肵�Ă��Ȃ��v
���O���~���O���ł͖�肪�N����B���̖��́A�����悤��2�o�C�g�ڂ͈̔͂�5C(16)
���܂�Big5��AGBK�Ȃǂ̕����R�[�h�ł�����������B

�܂��A5C(16)�ȊO�ɂ��Ă��ގ��̖�肪�������邱�Ƃ�����B���Ƃ��΁AUnix��
MS-DOS�Ȃǂ̃V�F�����7C(16) (Shift_JIS��ASCII�ł̓o�[�e�B�J���o�[) ���܂ޕ���
�i�|�A�|�A�|�A�|�A�|�A�|�A�|�A�c�c�j���t�@�C�����Ɏg�p���悤�Ƃ���ƁA�p�C�v
�L���ƔF������A����Ƀt�@�C�����쐬����Ȃ�������A�ǂݍ��݂��s�ǂɂȂ�����
���邱�Ƃ�����B

���݂ł��A�V���O���o�C�g�����R�[�h�Ή��̃\�t�g�E�F�A��Shift_JIS���Ŏg�p����
�ƁA���s�Ȃǂ̓����t�@�C�����̏����Ȃǂɂ��΂��΂��̖�肪���܂Ƃ��B����
�s��������A2�o�C�g�ڂ�5C(16)���������͑��Ɂu���ߕ����v�ƌĂ΂�A���̒���
�́u�\�v�u�\�v�u�\�v�u�\�v�Ȃǈ�ʂɎg�p�p�x�̍����������܂܂��B

���̖����������`���I�ȕ��@�Ƃ��āA�\�[�X�R�[�h�S�̂�EUC�R�[�h��UTF-8�Ȃǂ�
�ϊ����Ă���R���p�C����������s�����肷����@������i��FPerl ��encoding�v��
�O�}�j�B���邢�́u�\�v���u�\\�v�̂悤�ɁA2�o�C�g�ڂ̒��O(�u����v�Ə�����Ă���
���͌��ŁA�������́u���O�v�B�����łȂ���΁A���ߕ������G�X�P�[�v���邱�Ƃ�
�ł��Ȃ��B)�ɃG�X�P�[�v������5C(16)���L�q���A�u���ߕ����v�𕶎��Ƃ��Đ������F��
��������@������i��FPerl��Sjis�\�t�g�E�F�A�j�B���邢�͕����܂��͕�����Ƃ���
���킸�Ώە�������ѓ����\���`���𐔒l�̔z��Ƃ��ĕϊ����s���A��舵���ۂɕ���
�ɕ������Ĉ������@������i��FPerl ��Encode���W���[���j�B

��

�u�\��Ȃ��v�Ƃ��������񂪂������̌f���\�t�g�Łu����Ȃ��v�ƕ������������
���p�ɂɌ�����B

   �\   ��   ��   ��
  8d5c 82ed 82c8 82a2
  �o�b�N�X���b�V���ɂ�����5c��������ƁA
  8d   82ed 82c8 82a2
    ��      �   ��

�u���v�Ƃ��������̂Ƃ���Ńf�R�[�h���ē��������̕�����͐���ɖ߂�B�܂����l
�Ɂu�|�\�E�v���u�|��E�v�ɉ�����������B 

   �|    �\   �E
  8c7c 945c 8a45
  �o�b�N�X���b�V���ɂ�����5c��������ƁA
  8c7c 94   8a45
   �|    ��   E

  �\ 2�o�C�g�ڂ�5C(16)���������ꗗ ���� ����(16�i) �ǂ݁E�Ӗ� 

  �\   815C �_�b�V��
  �\   835C �Љ����́u���v
  �\   845C �L���������̃E�B
  �\/? 875C Windows���ł̓��[�}������9
            Mac���ł�GB(�M�K�o�C�g)
  �\   895C ���킳�B
  �\   8A5C �C��
  �\   8B5C �����ނ��B���\
  �\   8C5C �����B�l���B
  �\   8D5C ���܂���B�\��
  �\   8E5C �J�C�R�B�{�\
  �\   8F5C ��������10�B
  �\   905C �������A����B�\��
  �\   915C ���A�ЁB�u�]�v�̈���W�����́i�����́j�B�\��
  �\   925C ����B�\�y
  �\   935C �͂�B�\�t
  �\   945C �̂��B�\��
  �\   955C ����킷�A�Ђ傤�B�\��
  �\   965C ���΂��A�ڂ��B�\��
  �\   975C ���炩���߁A��B�\��
  �\   985C �낭�B��\
  �\   995C �ƁA�������B�u�e�v�ّ̈̎�
  �\   9A5C �����B�\��
  �\   9B5C �����B�\�a(�u�a�̔񏑊���)
  �\   9C5C ��B�퐶�́u��v�̐�����
  �\   9D5C ���B�\��
  �\   9E5C �Ȃ̕ʑ�
  �\   9F5C ������A�����A���傤�B
  �\   E05C ���炤�A�����B
  �\   E15C �ӂ��A�ق�B
  �\   E25C �Ƃ�A�ւ��B
  �\   E35C ����A�����B
  �\   E45C �ł�A����B�\��
  �\   E55C �����B�a�C�\�X
  �\   E65C �G�̋�����
  �\   E75C �̂̌Î�
  �\   E85C �΁B�����\(��)�B
  �\   E95C �܂�B�\��
  �\   EA5C �o���B���̖��B
  �x   ED5C �����B
  �x   EE5C ���傭�B
  �\   FA5C �킽�A�����B
  �\   FB5C ����B

�R�[�h��Ԃɂ����镶��������

Shift_JIS��2�o�C�g�R�[�h�̋�Ԃ́A��1�o�C�g��81(16)-9F(16)�Ȃ�т�E0(16)-
FC(16)�A��2�o�C�g��40(16)-7E(16)�Ȃ�т�80(16)-FC(16)�ł���B���������āA
60�~188=11280�����A�����1�o�C�g�R�[�h��158�����i�X�y�[�X���܂݁ADEL�͐������j
�ł��邽�߁A�v11438�����ƂȂ�B

�Ȃ��AShift_JIS-2004�ł́A2�o�C�g������11233�����A1�o�C�g������158�����̂��߁A
���v11391�������g�p���Ă���B

Shift_JIS�ɂ�����u�V�t�g�v�Ƃ�

Shift JIS�́u�V�t�g�v�Ƃ́A256�~256�̕��ʂ̒��ŕ����𕡎G��"���炷"�Ƃ����Ӗ�
�́u�V�t�g�v�ł���B

ISO-2022-JP�͎w���V�[�P���X�Ŋ����ƃA���t�@�x�b�g��؂�ւ��镄���������ł���B
�܂��AEUC-JP�͕⏕�����Ɣ��p�J�^�J�i���V���O���V�t�g�ňꎞ�I�ɐ؂�ւ��Ďg��
�����������ł���B�����̕����������ōs���Ă���A�e�����W���̖ʂ��V�t�g�R�[
�h�ɂ���Đ؂�ւ��鑀����u�V�t�g�v�ƌĂ΂�邪�AShift_JIS�́u�V�t�g�v�͂���
��Ƃ͈قȂ�Ӗ��ł���B�܂��r�b�g�����炷����i�r�b�g�V�t�g�j�Ƃ��قȂ�B

Shift_JIS�Ƌ�_�ԍ�

Shift_JIS���������̑Ώۂɂ��镶���W���́AJIS X 0208�ł���B���̕����������W��
�ɂ́A��_�ԍ��Ƃ����T�O�����݂���B����́A94�~94�̕����\�̍s�Ɨ�̔ԍ��̑g
�ł���B

Shift_JIS�ł́A8140(16)-FCFC(16)�Ƃ����悤�ɁAJIS X 0208�Ƃ͂܂�����������R�[
�h�̌n�ł��邪�AJIS X 0208���v�Z�ɂ��ό`�������̂ł��邽�߁A��_�ԍ���p����
�����̃R�[�h�|�C���g���w���������Ƃ������B���e�ɂ��ẮAJIS X 0208��1�`94��
�Ɠ����ł���B�������A�@��ˑ������ł́A�V�t�gJIS�̕�����Ԃ���t�����A94���
�����ɂ�������120��܂ł��g�����Ă��邩�̂悤�Ɉ������Ƃ�����B95��ȏ�́A
ISO/IEC 2022�ɑ�����JIS X 0208�̍\���ł͑��݂����Ȃ��̂ŁA�{���͂��������B
�x���_�Ǝ��̔�����ȊT�O�ł���B�Ȃ��AJIS X 0213�̋K�i�̈ꕔ�ł���
Shift_JISX0213�������\���ɂ����ẮA��1�o�C�gF0(16)�ȍ~��2�ʂ̕����Ɋ��蓖�Ă�
����A�S����Ƃ����悤�ȑ��݂��Ȃ���ԍ��͓o�ꂵ�Ȃ��B

�ux-sjis�v�ƁuMS_Kanji�v

�ux-sjis�v�ƁuMS_Kanji�v�͂Ƃ��ɁAHTML�h�L�������g�́ucharset�v�̎w���
�uShift_JIS�v�̕ʖ��Ƃ��Ďg�����Ƃ��o����B

�ux-sjis�v��IANA�ɁuShift_JIS�v�Ƃ������O��o�^����O�ɁANetscape Navigator
2.0�ɂ����Ďg���Ă����G���R�[�f�B���O�̎w��q���ł���B�ꕔ��HTML�����\�t�g��
�����ł��̎w��q��g�ݍ���Ŏg���Ă���B���̂��ߔF���\�ȃu���E�U�����邪�A
�uShift_JIS�v�ɏ��������邱�Ƃ𐄏����Ă���B

�uMS_Kanji�v��IANA�ɂ��uShift_JIS�v�̕ʖ��Ƃ��Ċ��蓖�Ă��Ă���B


=head1 ���̃\�t�g�E�F�A�ł� "ShiftJIS"

���̃\�t�g�E�F�A�ł��� "ShiftJIS" �͏�L�́u�R�[�h��Ԃɂ����镶���������v��
11438�������ׂĂ������邱�Ƃ�ڎw���Ă��܂��B���̂��߂ɃA���S���Y����2�g��
��Ă��܂��B

* �A���S���Y�� 1

    �I�N�e�b�g�̕��т��當�������o���Ƃ��A1�I�N�e�b�g�R�[�h��2�I�N�e�b�g�R�[�h
    �̋�ʂ͑�1�I�N�e�b�g�R�[�h�݂̂ōs���܂��B��2�I�N�e�b�g�͍l������܂���B

    1�I�N�e�b�g�R�[�h:
      0x00-0x80, 0xA0-0xDF, 0xFD-0xFF

    2�I�N�e�b�g�R�[�h:
      ��1�I�N�e�b�g  0x81-0x9F, 0xE0-0xEF, 0xF0-0xFC
      ��2�I�N�e�b�g  0x00-0xFF (���ׂ�)

    �s����1�I�N�e�b�g�R�[�h:
      0x81-0x9F, 0xE0-0xFC
      * ������̍ŏI�I�N�e�b�g��2�I�N�e�b�g�R�[�h�̑�1�I�N�e�b�g�Ɠ����ꍇ

�ȉ��ɃR�[�h�\���f�ڂ��܂��B

        1�I�N�e�b�g�R�[�h�\

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

                                 2�I�N�e�b�g�R�[�h�\
            ��1�I�N�e�b�g                                    ��2�I�N�e�b�g


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


������̍ŏI�I�N�e�b�g��2�I�N�e�b�g�R�[�h�̑�1�I�N�e�b�g�Ɠ����ꍇ

�s���ł����Ă��������ꂽ��A�����I�ɍ폜����邱�Ƃ͂���܂���B
�Ⴆ�΁AEsjis::chop �͂��̃I�N�e�b�g��Ԃ��܂��B

    *�s����* 1�I�N�e�b�g�R�[�h

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


=head1 �x���_�� SJIS �R�[�h�ꗗ

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
 
 ���{���񏈗�(ISBN 4-89052-708-7)���
 
 Hewlett-Packard HP-15          0x00-0x7F, 0xA1-0xDF, (0x80-0xA0, 0xE0-0xFE)(0x21-0x7E, 0x80-0xFF)


* �A���S���Y�� 2

    �A���S���Y�� 1 �ɂ��ւ�炸�Atr/// �ɂ�蕶���͈̔͂��w�肳�ꂽ�ꍇ�͈ȉ��̕���
    �݂̂��L���ƂȂ�܂��B

    1�I�N�e�b�g�R�[�h:
      0x00-0x80, 0xA0-0xDF, 0xFD-0xFF

    2�I�N�e�b�g�R�[�h:
      ��1�I�N�e�b�g  0x81-0x9F, 0xE0-0xEF, 0xF0-0xFC
      ��2�I�N�e�b�g  0x40-0x7E, 0x80-0xFC

�Ⴆ�΁A[\x81\x00-\x82\xFF] �Ə����ꂽ�ꍇ�� [\x81\x82][\x40-\x7E\x80-\xFC] ��
�Ӗ����܂��B

�ȉ��ɃR�[�h�\���f�ڂ��܂��B

        1�I�N�e�b�g�R�[�h�\

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


                                 2�I�N�e�b�g�R�[�h�\
            ��1�I�N�e�b�g                                    ��2�I�N�e�b�g

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


=head1 �ڕW�Ƃ��Ă������

�v���O���~���O Perl ��3�� VOLUME 1 (ISBN 4-87311-096-3)
15�� Unicode �Q��

Unicode �T�|�[�g�� perl �ɓ��������ȑO�́Aeq ���Z�q�́A2�̃X�J���[�ϐ��ɂ��
�ĕ\���ꂽ�o�C�g���������ׂĂ��܂����Bperl5.8 �ȍ~�Aeq �́A2�̃o�C�g����ׂ�
�Ɠ����� UTF8 �t���O���l�����܂��B

  perl5.8 �ȍ~�̏�񏈗����f��
 
    +----------------------+---------------------+
    |     Text strings     |                     |
    +----------+-----------|    Binary strings   |
    |   UTF8   |  Latin-1  |                     |
    +----------+-----------+---------------------+
    | UTF8     |            Not UTF8             |
    | Flagged  |            Flagged              |
    +--------------------------------------------+
    http://perl-users.jp/articles/advent-calendar/2010/casual/4
 
    ���̐}���o���Ȃ��ƃv���O�����������܂���B
 
    (�ǂ����� Latin-1 �������ʈ�������̂ł��傤���H)

���ʓI�ɂ��̕ύX�́A�ߋ��̃X�N���v�g�ƐV�����X�N���v�g�̊Ԃɑ傫�ȍa�����܂����B
���͂◼�҂̃X�N���v�g�̓R�[�h���݂��ɍė��p���邱�Ƃ��ł��܂���B�܂��V�������@��
�v���O���}�ɕ��S�������邽�߁A��������X�N���v�g�����ׂĒu�������̂͂܂��܂�����
��������Ǝv���܂��B

�V�������@�Ŗ��ƂȂ��Ă��邱�Ƃ� UTF8 �t���O�͎��ۂ̕�����̕������ƈ�v���Ȃ�����
�ł��B�����ō�����X�N���v�g�͂��̃f�o�b�O�̑O�ɓ��I�ɂӂ�܂� UTF8 �t���O�ɂ���
�f�o�b�O���Ȃ���΂Ȃ�܂���B

  perl3 �ȍ~�A���邢�͂��̃\�t�g�E�F�A�ɂ���񏈗����f��
 
    +--------------------------------------------+
    |       Text strings as Binary strings       |
    |       Binary strings as Text strings       |
    +--------------------------------------------+
    |              Not UTF8 Flagged              |
    +--------------------------------------------+

�����ŁA���̕��@�ɖ߂����Ƃɂ���Ăǂ̂悤�ɉ��������̂��A�ق���ɂ܂݂ꂽ�Â�
Programming Perl, 3rd ed. (�M�� �v���O���~���OPerl ��3��) ��402�y�[�W��������x
�Ђ��Ƃ��Ă݂܂��傤�E�E�E�B

���z�I�ɂ́A�ȉ���5�̃S�[�����������悤�ƍl���Ă��܂��B

=over 2

=item * �S�[��1

    �����̃o�C�g�w���̃X�N���v�g�́A�ȑO�����Ă��������̃o�C�g�w���̃f�[�^�ɑ΂�
    �āA�ȑO�Ɠ��l�ɓ��삷�ׂ��ł���B

    ���̖ڕW�͂��̃\�t�g�E�F�A���Autf8 �v���O�}�̂悤�� perl �ɑ΂���ǉ��@�\��
    ���邱�Ƃɂ���ĒB������Ă��܂��B�����t�������Ȃ� perl �͂���܂Œʂ�̓���
    ������͂��ł��B

=item * �S�[��2

    �����̃o�C�g�w���̃X�N���v�g�́A��������������ɁA(�������邱�Ƃ��K�؂ł����)
    �V���������w���̃f�[�^�ɑ΂��Ă����삷��悤�ɂȂ�ׂ��ł���B

    �g���݊֐� length, substr, index, rindex, pos �Ȃǂ̕�����̒�����ʒu������
    ���͍̂��܂łǂ����1�I�N�e�b�g�� 1 �Ɛ����܂��B���̕����ɂ��ĉ�����͉�
    ���܂���B2�I�N�e�b�g�R�[�h1������ length �� 2 �ɂȂ�܂��B

    ����A�X�N���v�g���̐��K�\���́A�}���`�o�C�g�����̂��߂̃A���J�[�����O������
    �L�q����K�v������܂����A��������Ȃ��ɑ����Ă��̃\�t�g�E�F�A���s���܂��B

    �S�[��1�ƃS�[��2�̓��e��}�����܂��B

                                   GOAL#1  GOAL#2
                            (a)     (b)     (c)     (d)     (e)
          +--------------+-------+-------+-------+-------+-------+
          | data         |  Old  |  Old  |  New  |  Old  |  New  |
          +--------------+-------+-------+-------+-------+-------+
          | script       |  Old  |      Old      |      New      |
          +--------------+-------+---------------+---------------+
          | interpreter  |  Old  |              New              |
          +--------------+-------+-------------------------------+
          Old --- �����̃o�C�g�w��
          New --- �V���������w��

    �f�[�^�A�X�N���v�g�A�C���^�v���^�̐V�E���Ɋւ��āA��� (a) ���� (e) �܂ł�
    �g����������܂��B���̕����������ꂽ�����ɑ��݂��Ȃ����� Encode ���W���[����
    ���̃\�t�g�E�F�A�A����ё��݂��Ă��� JPerl �����������Ă݂܂��傤�B

                            (a)     (b)     (c)     (d)     (e)
                                          JPerl,japerl    Encode,Sjis
          +--------------+-------+-------+-------+-------+-------+
          | data         |  Old  |  Old  |  New  |  Old  |  New  |
          +--------------+-------+-------+-------+-------+-------+
          | script       |  Old  |      Old      |      New      |
          +--------------+-------+---------------+---------------+
          | interpreter  |  Old  |              New              |
          +--------------+-------+-------------------------------+
          Old --- �����̃o�C�g�w��
          New --- �V���������w��

    JPerl ���ƂĂ��D��Ă��闝�R�� (c) �̈ʒu�ɂ��邩��ł��B���Ȃ킿���{�ꏈ��
    ���s�����߂ɃX�N���v�g�ɓ��ʂȋL�q���s���K�v������܂���B

=item * �S�[��3

    �X�N���v�g�́A�V���������w�����[�h�ł��A�ȑO�̃o�C�g�w�����[�h�Ɠ����X�s�[
    �h�œ��삷�ׂ��ł���B

    ����͖����B�����āA�ȉ��̎��Ԃ��K�v�����́B

    (1) �X�N���v�g���G�X�P�[�v���āA�o�C�g�w�� Perl �ň�����悤�ɏ������邽�߂�
     ���ԁB�������A�������ꂽ�X�N���v�g�͕ۑ��ł��邽�߁A���񂩂�͂��̎��Ԃ��Ȃ�
     �����Ƃ��\�ł��B

    (2) �G�X�P�[�v���ꂽ�X�N���v�g���}���`�o�C�g�A���J�[�����O�������s���Ȃ���A
     ���K�\�������s���鎞�ԁB

    ���łɑ��݂��� ASCII �f�[�^��1������1�I�N�e�b�g�Ƀp�b�N����Ă��܂��B����
    �f�[�^�ƌ݊�����ۂ��Ȃ��當����𑝂₻���Ƃ���ƁAISO-2022 �̂悤�ɃG�X�P�[
    �v�V�[�P���X���K�v�ł�������AShiftJIS �� UTF-8 �̂悤�� "�G�X�P�[�v�r�b�g"
    ���K�v�ɂȂ����肵�܂��B�����̃G�X�P�[�v����������邽�߁A�ȑO�Ɠ����X�s�[
    �h�œ��삷�ׂ��ł���Ƃ����͖̂����ȖڕW���Ǝv���܂��B

    ���̓��� Larry Wall ����ɂ��̃S�[���̂��Ƃ�u�˂Ă݂����ł�(�G���x�[�^�[��
    ����)�B

=item * �S�[��4

    Perl �́A�o�C�g�w���� Perl �ƕ����w���� Perl �Ɏ}�����ꂹ���ɁA1�̌����
    ���葱����ׂ��ł���B

    JPerl �� Perl ����𕪊򂳂��Ȃ��悤�ɂ��邽�߂ɁA�C���^�v���^�𕪊򂳂��܂����B
    �ł� Perl �R�A�`�[���̓C���^�v���^�̕����]��ł��Ȃ��̂ł��傤�B���ʓI�ɃS�[
    ��4�Ƃ͂���͂��Perl���ꂪ���򂷂邱�ƂɂȂ�APerl�R�~���j�e�B�͏k�����܂����B

    �o�C�g�w���� perl �͂��łɃo�C�i���f�[�^���������Ƃ��ł��邽�߁A�����w����
    perl ��ʗ��Ăō쐬����K�v�͂���܂���B�܂����̃\�t�g�E�F�A�́A�P�Ȃ�A�v��
    �P�[�V�����v���O�����Ȃ̂ŁAPerl �R�A�`�[�������ɂ܂�邱�Ƃ��Ȃ��ł��傤���A
    �U����S�z������܂���B

    ����ɖ��� Perl �X�N���v�g�ŉ������悤�Ƃ���Ȃ�APerl �R�~���j�e�B�̃T�|�[�g
    �𓾂���ł��傤�B

    Sjis�\�t�g�E�F�A�́A1�̌���E1�̃C���^�v���^���������܂��B

=item * �S�[��5

    JPerl ���[�U�� Perl �� JPerl ��ێ�ł���悤�ɂȂ�B

    JPerl ���������Ȃ��̂��΂ɂ���܂��悤�� ...

=back

Programming Perl, 3rd ed. �������ꂽ���ɂ́AUTF8 �t���O�͐��܂�Ă��炸�APerl ��
�ȒP�Ȏd�����ȒP�ɂł���悤�ɐ݌v����Ă��܂����B���̃\�t�g�E�F�A�͓����̂悤��
�v���O���~���O����񋟂��܂��B

=head1 Perl�̎咣

  �R���s���[�^�Ȋw�҂̒��ɂ�(���ɊҌ���`�҂�����)�ے肷��҂�����̂����A
 �l�ԂƂ������͕̂ς�����`�̐S�������Ă�����̂Ȃ̂��B�S�̌`�͕��R�ł͂Ȃ�
 �̂ŁA�Ђǂ��c�߂邱�ƂȂ��ɂ͕���ȖʂɎʑ����邱�Ƃ͂ł��Ȃ��B�������ߋ�
 20�N�ȏ�ɂ킽���āA�R���s���[�^�Ҍ���`�҂����͒��𐫂̐_�a���삫�A������
 �����オ��ƁA�ނ�̐M�򂷂�֗~�I�Ȑ�������N����ƂȂ������ĉ�����B

  �ނ�̔M�󂾂������Ⴂ�̊�]�́A�N�����̐S��ނ�̎v�l�l���ɍ����悤�ɍ��
 �ς��āA�N�����̎v�l�p�^�[���������̒��z�����̕����ɉ������߂邱�Ƃ������B
 ���ʂɉ������܂��Ƃ������Ƃ́A�܂�������т̂Ȃ����݂ɂȂ��Ă��܂����Ƃ�
 �������B

 --- ���߂Ă�Perl xviii

  ��������𓪒ɂ̎킾�Ǝv���Ȃ�A���̒ʂ�ł��B�N�����̂悤�ȏ󋵂��D���
 ����킯�ł͂���܂���B�ł��APerl�͓��͂ƃG���R�[�f�B���O�̈����Ɋւ��āA
 �x�X�g��s�����Ă���܂��B�������j�����Z�b�g���Ă�蒼����̂Ȃ�A���̎��ɂ�
 ����Ȃɑ����̌���Ƃ��Ȃ��̂ł����B

 --- ���߂Ă�Perl ��6��

 �Ƃ͂���Perl��Unicode�f�[�^����������ۂɊo���Ă����Ȃ���΂Ȃ�Ȃ��ł��d�v��
 ���Ƃ́AUnicode�f�[�^���g�p���Ȃ��ꍇ(�ǂ̃t�@�C����UTF-8�Ƃ��ă}�[�N�����
 ���炸�A����UTF-8���P�[�����g�p���Ă��Ȃ��ꍇ)�A�K��Perl5.005_3�����h�ɂ�
 ��ӂ���ł���Ƃ������Ƃł��BUnicode�@�\�𖾎��I�Ɏg�p���Ă��Ȃ�����A
 Unicode�@�\�����Ȃ��̃R�[�h��W���邱�Ƃ͂���܂���BUnicode��������Ȃ���
 �����̃o�C�g�Ή��X�N���v�g��W�Q���Ȃ��Ƃ�������2�̖ڕW���Ë��Ăƍ���������
 �炷���Ƃ�����܂����A���������Ƃ�ق��čs���A���ꂪPerl�̕����ł���APerl�̕�
 �j�ł�����܂��B

 --- ���pPerl�v���O���~���O ��2��

=head1 Sjis �\�t�g�E�F�A�a���̂͂Ȃ�

 Perl3 �ȍ~�� Perl �̓o�C�i���f�[�^����������X�N���v�g���L�q�ł��܂��B
 ����͊ȒP�Ɍ����΁A�ǂ�ȃf�[�^�ł������ł���Ƃ������Ƃł��B
 
 �f�[�^�Ƃ����ƁA���{�����ł�(���Ƃ���1981�N��CP/M-86�̓��������p�Ƃ��čl��
 ���ꂽ)�V�t�gJIS�������������A�������p�A����ɂ͏��~�ϗp�Ƃ��čL���g��
 ��Ă��܂��B������A���̃f�[�^����������X�N���v�g���V�t�gJIS�ō쐬�����
 �͂������R�ȑI���ł��B
 
 �ł��A�c�O�Ȃ��Ƃ� perl �C���^�v���^�̓V�t�gJIS��Perl�X�N���v�g�����̂܂�
 �ł͎��s���邱�Ƃ��ł��Ȃ��̂ł��B
 
 �������Ȃ���(���Ȃ��̏�����) Perl �X�N���v�g�̓f�[�^�ł��邱�Ƃ͊ԈႢ�Ȃ�
 �̂ŁA(�ʂɗp�ӂ���) Perl �X�N���v�g�ł�����������Aperl �C���^�v���^�Ŏ��s
 �ł���X�N���v�g�ɕϊ����邱�ƂȂ�A�ł���̂ł͂Ȃ��ł��傤���H
 
 ����A�C���^�v���^�A�X�N���v�g�A���ꂼ��̃e�L�X�g�A�o�C�i���̈����̉ۂ�
 ������x�܂Ƃ߂Ă݂܂��傤�B�����ł̓V�t�gJIS���o�C�i���ɕ��ނ��Ă��܂��B
 
 ---------------------------------------------------
                   �Ώ�        �e�L�X�g  �o�C�i��
 ---------------------------------------------------
 Perl����          �X�N���v�g  ��        ��
 perl�C���^�v���^  �X�N���v�g  ��        �s��
 Perl�X�N���v�g    �f�[�^      ��        ��
 ---------------------------------------------------
 
 perl �C���^�v���^�̓o�C�i���̃X�N���v�g�����s�ł��Ȃ�����ǁAPerl �����
 Perl �X�N���v�g������΁A���̌��_���J�o�[�ł������Ɏv���܂��B
 
 �܂����_��ς��� Perl �ȊO�̑��̃v���O���~���O��������܂߂Č��n������
 ���A�ЂƂ̃X�N���v�g�t�@�C�����ɕ����̕����������Ń��e������������L�q
 ����P�[�X�͂���̂ł��傤���H
 
 �ЂƂ̃X�N���v�g���̃��e����������̕����������͂ЂƂŏ[���ł��B
 (�c��̕�����������16�i�G�X�P�[�v�ŋL�q����Ƃ������Ƃł��B)
 
 ���̃\�t�g�E�F�A�͂��̂悤�ȃA�C�f�B�A�E�O������ɂ���č��n�߂��܂�
 ���B

=head1 �Q�l�����A�����N

 Perl�v���O���~���O
 Larry Wall, Randal L.Schwartz, �ߓ� �Ð� ��
 1993�N2�� ���s
 ISBN 4-89052-384-7
 http://www.context.co.jp/~cond/books/old-books.html

 �v���O���~���OPerl ������
 By Larry Wall, Tom Christiansen, Randal L. Schwartz, �ߓ� �Ð� ��
 1997�N12�� ���s
 759�y�[�W
 ISBN 4-900900-48-6
 http://www.oreilly.co.jp/out/pperl/index.htm

 �v���O���~���OPerl ��3�� VOLUME 1
 By Larry Wall, Tom Christiansen, Jon Orwant, �ߓ� �Ð� ��
 2002�N09�� ���s
 756�y�[�W
 ISBN 4-87311-096-3
 http://www.oreilly.co.jp/books/4873110963/

 �v���O���~���OPerl ��3�� VOLUME 2
 By Larry Wall, Tom Christiansen, Jon Orwant, �ߓ� �Ð� ��
 2002�N09�� ���s
 680�y�[�W
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

 Perl�N�b�N�u�b�N ��2�� VOLUME 1
 By Tom Christiansen, Nathan Torkington, Shibuya Perl Mongers �Ė�, ������Ѓh�L�������g�V�X�e�� ��
 2004�N09�� ���s
 752�y�[�W
 ISBN 4-87311-202-8
 http://www.oreilly.co.jp/books/4873112028/

 Perl�N�b�N�u�b�N ��2�� VOLUME 2
 By Tom Christiansen, Nathan Torkington, Shibuya Perl Mongers �Ė�, ������Ѓh�L�������g�V�X�e�� ��
 2004�N09�� ���s
 464�y�[�W
 ISBN 4-87311-203-6
 http://www.oreilly.co.jp/books/4873112036/

 Perl�N�C�b�N���t�@�����X
 By Stephen Spainhour, Ellen Siever, Nathan Patwardhan, �ߓ� �Ð�, ��� �\�� �Ė�
 2000�N03�� ���s
 784�y�[�W
 ISBN 4-900900-72-9
 http://www.oreilly.co.jp/books/4900900729/

 ���߂Ă�Perl Win32�V�X�e��
 Randal L. Schwartz, Erik Olson, Tom Christiansen ��, �L�n �O�Y �Ė�, �Ό� �q�_ ��
 1998�N11�� ���s
 348�y�[�W
 ISBN 4-900900-79-6
 http://www.oreilly.co.jp/books/4900900796/

 ���߂Ă�Perl ��5��
 Randal L. Schwartz, Tom Phoenix, brian d foy ��
 2009�N10��24�� ����
 424�y�[�W
 ISBN 978-4-87311-427-9
 http://www.oreilly.co.jp/books/9784873114279/

 ���߂Ă�Perl ��6��
 Randal L. Schwartz, brian d foy, Tom Phoenix ��, �ߓ� �Ð� ��
 2012�N07�� ���s
 488�y�[�W
 ISBN 978-4-87311-567-2
 http://www.oreilly.co.jp/books/9784873115672/

 ���p Perl�v���O���~���O ��2��
 Simon Cozens ��, ���� �Ǔ� ��
 2006�N03�� ���s
 320�y�[�W
 ISBN 4-87311-280-X
 http://www.oreilly.co.jp/books/487311280X/

 Perl���\�[�X�L�b�g - UNIX��
 Futato, Irving, Jepson, Patwardhan, Siever ����, �C�G���[���[�x�� �R�{ �_ ��
 ISBN 4-900900-65-6
 http://www.oreilly.co.jp/out/presuni/

 Perl�̍��ւ悤����
 �O�c�O, ���R�T�i, �ē���, �z�{�L�l ����
 1993�N4��1�� ���s
 280�y�[�W
 ISBN 4-7819-0697-4
 http://www.saiensu.co.jp/?page=book_details&ISBN=ISBN4-7819-0697-4
 
 �VPerl�̍��ւ悤���� Perl5�Ή���
 �ē���, ���R�T�i, �O�c�O, �z�{�L�l ����
 1996�N4��1�� ���s
 368�y�[�W
 ISBN 4-7819-0795-4
 http://www.saiensu.co.jp/?page=book_details&ISBN=ISBN4-7819-0795-4
 
 �܂邲��Perl! Vol.1
 �����e, �{��B�F, �ɓ�����, �썇�F�T, ����M��, ���� ��, �Ί_����, �I���R��, �܂��܂�, �r糒q�m, ma.la, �|���ǔ�, ��������������, �m�L, �H�R����, �v�ی���, ���V���j, �̑�a�� ��
 2006�N08��25�� ����
 232�y�[�W
 ISBN 978-4-8443-2289-4
 http://www.impressjapan.jp/books/2289

 ���_��Perl����
 �q��㒘
 2009�N02��09��
 344�y�[�W
 ISBN 10: 4798119172 | ISBN 13: 978-4798119175
 http://www.seshop.com/product/detail/10250/

 WEB+DB PRESS Vol.70
 2012�N08��24�� ����
 200�y�[�W
 ISBN 978-4-7741-5190-8
 http://gihyo.jp/magazine/wdpress

 ���{���񏈗�
 Understanding Japanese Information Processing
 By Ken Lunde, �t�� ����, ��� ���� ��
 1995�N8�� ���s
 496�y�[�W
 ISBN 4-89052-708-7
 http://www.fukkan.com/vote.php3?no=4293

 CJKV�����؉z��񏈗�
 Chinese, Japanese, Korean & Vietnamese Computing
 By Ken Lunde, ���� ��, �t�� ���� ��
 2002�N12�� ���s
 1172�y�[�W
 ISBN 4-87311-108-0
 http://www.oreilly.co.jp/books/4873111080/

 �ڐ� ���K�\�� ��2��
 By Jeffrey E. F. Friedl, �c�a �� ��
 2003�N05�� ���s
 464�y�[�W
 ISBN 4-87311-130-7
 http://www.oreilly.co.jp/books/4873111307/

 �ڐ� ���K�\�� ��3��
 By Jeffrey E. F. Friedl, ������Ѓ����O�e�[���^���� ���O ��
 2008�N04�� ���s
 528�y�[�W
 ISBN 978-4-87311-359-3
 http://www.oreilly.co.jp/books/9784873113593/

 ���K�\���N�b�N�u�b�N
 Jan Goyvaerts, Steven Levithan ��, ���� ���O ��
 2010�N04�� ���s
 552�y�[�W
 ISBN 978-4-87311-450-7
 http://www.oreilly.co.jp/books/9784873114507/

 JIS�������T
 �Ŗ� �k�i �Ғ�
 1456 ��
 ISBN 4-542-20129-5
 http://www.webstore.jsa.or.jp/lib/lib.asp?fn=/manual/mnl01_12.htm

 �C���^�[�l�b�g����̕����R�[�h
 ���� ����, ���� �F��, �ˑ� �N, �O�� ��M ��
 285 ��
 ISBN 4-320-12038-8
 http://www.kyoritsu-pub.co.jp/bookdetail/9784320120389

 ���������̗��j�\���ĂƓ��{�ҁ\
 ���� �F��, ���� �f�q ��
 2006�N2��10�� ���s
 288�y�[�W
 ISBN 4-320-12102-7
 http://www.kyoritsu-pub.co.jp/bookdetail/9784320121027

 ���������̗��j �A�W�A��
 �O�� ��M ��
 2002�N3��20�� ���s
 377�y�[�W
 ISBN 4-320-12040-X
 http://www.amazon.co.jp/gp/product/432012040X

 Unicode�W������
 �g�j�[�E�O���n�� ��, �� �a�u, �C�V�� �O ��, �֌� ���T �ďC
 2001�N5��29�� ���s
 455�y�[�W
 ISBN 4-7981-0030-7
 http://www.seshop.com/product/detail/2276/

 Unicode�ɂ��JIS X 0213��������
 �c�� ���O�Y ��
 2008�N8��25�� ���s
 200�y�[�W
 ISBN 978-4-89100-608-2
 http://ec.nikkeibp.co.jp/item/books/A04500.html

 Unicode IVS/IVD����
 �c�� ���O�Y, ���� ���� ��
 2013�N03��04�� ���s
 336�y�[�W
 ISBN 978-4-82229-483-0
 http://store.nikkeibp.co.jp/item/books/P94830.html

 UNIX MAGAZINE
 1993�N8����
 172�y�[�W
 T1008901080816 �G��08901-8
 http://ascii.asciimw.jp/books/books/detail/978-4-7561-5008-0.shtml

 LINUX���{���
 �R�`�_��, Stephen J. Turnbull, Craig ���c, Robert J. Bickel ��
 2000�N06�� ���s
 376�y�[�W
 ISBN 4-87311-016-5
 http://www.oreilly.co.jp/books/4873110165/

 MacPerl����
 Vicki Brown, Chris Nandor ��, (��)�R�X���E�v���l�b�g ��
 1999�N03�� ���s
 399�y�[�W
 ISBN 4-7561-3068-2

 Macintosh�f�[�^���p�p
 �Γc �L ��
 1995�N2�� ���s
 230�y�[�W
 ISBN 4-89563-408-6

 MPW�v���O���~���O�u��
 Handmade Intelligence ��
 1992�N8�� ���s
 346�y�[�W
 ISBN 4-7561-0963-2

 �Z�L���AWeb�v���O���~���OTips�W
 ������ �q�M ��
 2008�N3�� ���s
 421�y�[�W
 ISBN 10: 4883732568
 ISBN 13: 978-4883732562

 Windows NT�V�F���X�N���v�g
 Tim Hill ��, ���c�G ��
 1998�N10��6�� ���s
 448�y�[�W
 ISBN 4-7973-0658-0
 http://books-support.sbcr.jp/isbn/macmillan/ntwrkshp/index.htm

 �}�C�N���\�t�g��������� Microsoft Windows �R�}���h���C�����p�K�C�h
 2004�N12��27�� ���s
 500�y�[�W
 ISBN 4-89100-438-X
 http://ec.nikkeibp.co.jp/item/books/587500.html

 ���J�� �E����, ���ۉ����K�\�����C�u�����Ȃ�
 http://lc.linux.or.jp/lc2001/papers/dfa-i18n-paper.pdf
 http://lc.linux.or.jp/lc2002/papers/hasegawa0918h.pdf
 http://lc.linux.or.jp/lc2002/papers/hasegawa0918p.pdf
 http://www.j-tokkyo.com/2003/G06F/JP2003-242179.shtml

 �O�c �א�����, �}���`�o�C�g�����Z�b�g�p���K�\���R���p�C���\�����@�y�уv���O���� 
 http://patent.astamuse.com/ja/published/JP/No/2007102744

 YAMAGAKI Norio, �}���`�o�C�g��������������ƍ��p�L���I�[�g�}�g�������V�X�e��
 http://www.wipo.int/pctdb/ja/wo.jsp?WO=2009116646&IA=JP2009055515

 Tokyo-pm �ۑ�����
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

=head1 �ӎ�

�c�O�Ȃ���A���ӂ��邷�ׂĂ̐l�������ɏ������Ƃ��ł��܂���B����������Ƃ����āA����
�𗝗R�ɂ��Ĉȉ��̕��X�ւ̊��ӂ͏ȗ�����킯�ɂ͂����Ȃ��ł��傤�B

 �R�� �Ǒ�����, �V�t�gJIS�̃f�U�C���̘b
 ttp://furukawablog.spaces.live.com/Blog/cns!1pmWgsL289nm7Shn7cS0jHzA!2225.entry (�����N�؂�)
 ttp://shino.tumblr.com/post/116166805/1981-us-jis
 (�擪�� 'h' ��t�����ăA�N�Z�X���Ă�������)
 http://www.wdic.org/w/WDIC/%E3%82%B7%E3%83%95%E3%83%88JIS
 
 ���{���񏈗����s���ہA���܂����ăV�t�gJIS�قǎ��p�I�ȕ����������͂���܂���B
 ���̗��R��3����Ǝv���܂��B
 
 1. �����̔��p�J�^�J�i�̃f�[�^�Ƃ��̂܂܋����ł���B�ߋ��̎��Y�����݂Ɍp���ł����
   �������Ƃ́A���݂̎��Y�𖢗��֌p���ł��邱�Ƃ��������Ă��܂��B
 2. codepoint �� grapheme �̒P�ʂ���v����B���̂������ŃV�X�e�������ЂƂƎg���Ђ�
   �̊Ԃ��ꗂ��������܂���B
 3. ��������̐�L���ƕ\���E�󎚏�̐�L������v����B���̍H�v����ʐ݌v�A���[�݌v�A
   ����ɃJ�[�\���̈ړ������ɖ𗧂��܂��B
 
 1981�N�̎��_�ŁA�����܂ōl���Ă����R������̓n�b�J�[�ƌĂԂɂӂ��킵���ł��傤�B

 Larry Wall ����, Perl
 http://www.perl.org/
 
 Perl �����K�\���ɂ���ăo�C�i���f�[�^�������邱�ƂŁA���̃\�t�g�E�F�A���������Ă�
 �܂��B�o�[�W�����Ԃ̌݊����̍����ɂ��������܂����B���K�\���̃��^������e��N�H�[
 �g�̃f���~�^�́A�������ׂ��Ώۂł������ŁA��������ۂ̎�i�Ƃ��Ă��𗧂��܂��B
 ���� Perl ���Ȃ���΁A�������݂����A�܂���������������т��Ȃ��ދ��Ȑl����
 ��Ƃ���ł����B
 
 ������ Larry Wall ����ɂ͂Ƃ��Ă����ӂ��Ă��܂��I

 �̑� �a������, jcode.pl
 ftp://ftp.iij.ad.jp/pub/IIJ/dist/utashiro/perl/
 http://log.utashiro.com/pub/2006/07/jkondo_a580.html
 
 �ŏ��� Perl �ɏo������͉̂̑コ��̏����ꂽ UNIX MAGAZINE �̋L���ł����B�t�@�C��
 �e�X�g���Z�q -T�A-B �̋@�\����������R�[�h�͋L���ɏ����ꂽ���̂��قڂ��̂܂܎g����
 ���܂��B�܂����{���񏈗������M���ꂽ���� Ken Lunde ����̐搶�ł����邵�AJeffrey
 E. F. Friedl ����̏ڐ����K�\���̊Ė������Ă��āA���̃\�t�g�E�F�A�̎��͂ɂ͏��
 �̑コ�񂪓o�ꂵ�܂��B
 
 Tokyo.pm �̃��[�����O���X�g�ł́A�V�����@�\���������邽�߂ɐV���Ɏ���������ꍇ�ł��A
 �ߋ��ɍ��ꂽ�\�t�g�E�F�A�Ɠ���̃C���^�t�F�[�X�ɂ���Ƃ����A�悢�A�C�f�B�A������
 ��܂����B
 
 ��قǎ��͂ƌ����܂������A���͂���͓��R�̂��ƂŁA���̃\�t�g�E�F�A�� jcode.pl ��
 �\�[�X�����Ƃɂ��č쐬���ꂽ����ł��B�����牽���ǂ��l���Ă��̑コ��Ȃ��ŁA���̃\
 �t�g�E�F�A�����܂�邱�Ƃ͂Ȃ������Ǝv���̂ł��B

 Jeffrey E. F. Friedl ����, �ڐ����K�\��
 http://regex.info/
 
 �ڐ����K�\��(��2��)���͂��߂ēǂ񂾂Ƃ��A���������Ă���̂��S�������ł����A�Ă�����
 �p��ł𔃂��Ă��܂����̂ł͂Ȃ����Ƌ^�����قǂł����B�������Ȃ��� P.340 Matching
 Nested Constructs with Embedded Code ���������K�v�Ƃ��Ă���R�[�h���ƋC�Â����Ƃ���
 �ƂĂ������������̂��o���Ă��܂�(�悭������p��łł���)�B
 
 ����Ȃ킯�Ńl�X�g�������ʂ������ł���̂́A���}(Fumie)����̂������ł��B
 (���̊��ӂ��`���܂��悤��...�B)

 Ken Lunde ����, ���{���񏈗��ACJKV�����؉z��񏈗�
 http://www.fukkan.com/vote.php3?no=4293
 http://www.oreilly.co.jp/books/4873111080/
 
 �u���{���񏈗��v�uCJKV�����؉z��񏈗��v��ǂ�ŕ����W���K�i�ƕ������������w�сA
 ���������ɂ��ė������[�܂�܂����B���������̌����̂ЂƂƂ��āu���p�҂̈ӎv�ƈ�
 �Ȃ�A�����������̕ϊ�(���s���Ă��܂�)�v���������܂��B�����h�����߂ɁA����
 �\�t�g�E�F�A�͕�����������ϊ������ɏ�񏈗����s���܂��B���p�҂̈ӎv���ǂ��ł�����
 �Ƃ��Ă��A���̈ӎv�ƈقȂ�ϊ�������邱�Ƃ͂���܂���B
 
 Appendix W: Perl Code Examples �̒��� CJKV Encoding Templates�AMultiple-Byte
 Anchoring�AMultiple-Byte Processing ���ƂĂ��Q�l�ɂȂ�܂����B

 ��A �m�s����, Shift-JIS�e�L�X�g�𐳂�������
 http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
 
 �uShift-JIS�e�L�X�g�𐳂��������v�ŁAPerl��ShiftJIS�������Ƃ��̃m�E�n�E��������
 �����A���肪�Ƃ��������܂��B���̃T�C�g�̓��e�����ƂɁA�X�N���v�g���̃��e����������
 �́u�\�v���u�\\�v�ɕϊ�����t�B���^�v���O���������Ƃ��납��n�߁A��O����������
 ���������Ă������Ƃł��̃\�t�g�E�F�A������Ă����܂����B
 
 �u����������ɑ΂��鐳�K�\�������v�ɂ��Ă������Ɋ��������Ƃ��ł��܂����B
 �������̃T�C�g�����Ȃ������̂Ȃ�ASjis�\�t�g�E�F�A����ꂽ���ǂ����肩�ł͂���܂�
 ��B

 �܂��� �䂫�Ђ낳��, Ruby on Perl(s)
 http://www.rubyist.net/~matz/slides/yapc2006/
 
 YAPC::Asia 2006 Tokyo "Ruby on Perl(s)" �ŁuCSI�͕s�\����Ȃ��v���Ƃ𕪂���₷
 �������Ă��炢�܂����B���x Ruby �ł���邱�ƂɂȂ�����A��낵�����肢���܂��B

 ���� �a�v����, jperl���[�U�[�̂��߂�
 http://homepage1.nifty.com/kazuf/jperl.html
 
 ver.0.71 ���쐬����ہA�������ڗ��p�ł��Ȃ����ł̃e�X�g�̂��߂�60����̃��[����
 ���������A���J�Ƀf�o�b�O�ɕt�������Ē����܂����B���肪�Ƃ��������܂����B

 Bruce. ����, Unicode in Perl
 http://www.rakunet.org/tsnet/TSabc/18/546.html

 �a�� �G������, Windows��Perl 5.8/5.10���g����������Ȃ�
 http://dl.dropbox.com/u/23756062/perlwin.html
 https://sites.google.com/site/hiroa63iz/perlwin

 �˖{ �q������, Perl����/Windows�ł̃t�@�C���p�X
 http://digit.que.ne.jp/work/wiki.cgi?Perl%E3%83%A1%E3%83%A2%2FWindows%E3%81%A7%E3%81%AE%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%91%E3%82%B9

 chaichanPaPa����, �V�t�gJIS�����̃t�@�C�����Ƀ}�b�`���Ă݂�
 http://d.hatena.ne.jp/chaichanPaPa/20080802/1217660826

 ��� �I�v����, Jperl
 http://homepage2.nifty.com/kipp/perl/jperl/

 �n�� ��������, Jperl
 http://www.cpan.org/src/5.0/jperl/
 http://search.cpan.org/~watanabe/
 ftp://ftp.oreilly.co.jp/pcjp98/watanabe/jperlconf.ppt
 
 The Perl Confernce Japan (1998)��Jperl�J���̌o�܂𕷂����Ă��炢�܂����BJPerl ����
 �́A���{��Ή��ł� Perl �͂ǂ̂悤�Ȃ��̂��g���₷���̂��������܂����Btr///b ��
 ord �� reverse ���݂�� JPerl �̓����^�����܂���(�������Ńe�X�g�v���O�����܂�
 ���炤���Ƃ��ł��܂���)�B
 
 �����n�ӂ���̂Ƃ��Ɠ������N���������񂶂�Ȃ�����(����)�҂������Ă���킯�ł����A
 �҂��Ă���Ԃ� Perl �Ńv���g�^�C�v������Ă����܂����B�҂̂͊y�������Ƃł��B

 Chuck Houpt ����, ��� ���q�q����, MacJPerl
 http://habilis.net/macjperl/index.j.html

 �Ί_ ���ꂳ��, Pod-PerldocJp, ���_��Perl�̐��E�ւ悤����
 http://search.cpan.org/dist/Pod-PerldocJp/
 http://gihyo.jp/dev/serial/01/modern-perl/0031
 http://gihyo.jp/dev/serial/01/modern-perl/0032
 http://gihyo.jp/dev/serial/01/modern-perl/0033
 
 �u���_��Perl�̐��E�ւ悤�����v�̘A�ڂ��ƂĂ��Q�l�ɂȂ�܂��B���ɑ�31�񂩂��33���
 JPerl �Ɋ֘A�������e�ŁA�Z�p�I�ɂ����j�I�ɂ��ƂĂ��k���ȋL���ł��B
 
 ���̃\�t�g�E�F�A�����_��Perl�ւ̉˂����Ƃ��Ė𗧂Ă΍K���ł��B

 �� ��Y����, Perl Hackers Hub ��16�� Perl�����\���̐[���ɔ���(2)
 http://gihyo.jp/dev/serial/01/perl-hackers-hub/001602

 ���� �e����, Encode ���W���[��
 http://search.cpan.org/dist/Encode/
 http://www.archive.org/details/YAPCAsia2006TokyoPerl58andUnicodeMythsFactsandChanges (����)
 http://yapc.g.hatena.ne.jp/jkondo/ (����)
 
 YAPC::Asia 2006 Tokyo "Perl5.8 and Unicode: Myths, Facts and Changes" �� Perl5.8
 �ł̕ύX�_���ڂ��������Ă��炢�܂����BCPAN �� face icon �͂��̃X���C�h�ɏo�Ă���
 Perl5.6 = a city without bridges �̉摜����q���g�𓾂Ă��܂��B

 ���� ��������, JPerl Wiki
 http://ja.jperl.wikia.com/wiki/JPerl_Wiki

 Juerd ����, Perl Unicode Advice
 http://juerd.nl/site.plp/perluniadvice

 daily dayflower ����, 2008-06-25 perluniadvice
 http://d.hatena.ne.jp/dayflower/20080625/1214374293

 Jesse Vincent ����, Compatibility is a virtue
 http://www.nntp.perl.org/group/perl.perl5.porters/2010/05/msg159825.html

=cut

# �������ł������H�y����ł��������܂������H
