1;
__END__

=pod

=encoding Shift_JIS

=head1 NAME

Sjis-JA - JAPANESE DOCUMENT

=head1 要約

=head2 使用前

  #!/usr/bin/perl
  use utf8;
  use open IO => ":encoding(cp932)";
  binmode STDIN => ":encoding(cp932)";
  binmode STDOUT => ":encoding(cp932)";
  binmode STDERR => ":encoding(cp932)";
  use Encode;
  
  my $char_length = length("マルチバイト文字列"); # 文字数を返す
  use bytes; # -- don't use it. just forget about it.
  my $byte_length = bytes::length("マルチバイト文字列"); # バイト数を返す

=head2 使用後

スクリプト ShiftJIS_script.pl の中に以下を記述して...

  #!/usr/bin/perl
  use Sjis;
  
  my $byte_length = length("マルチバイト文字列"); # これまで通りバイト数を返す
  my $char_length = Sjis::length("マルチバイト文字列"); # 新機能として文字数を返す

コマンドプロンプトで以下のように実行する

  perl ShiftJIS_script.pl argv1 argv2 ...

Sjisソフトウェアは、ShiftJIS によって書かれた Perl スクリプトとperlインタプリタ
の間に位置するミドルウェアです。

Perl は、テキスト処理が90%、それ以外の処理が10%で構成される問題に向けて最適化さ
れていると言われています。ここでいうテキストに ShiftJIS が含まれなかったとしても
Perl3 以降であればバイナリデータを扱えるので、ShiftJIS データをバイナリデータと
して扱うことが可能です。

"use Sjis;" によって、スクリプトを ShiftJIS で記述することができるようになり、
正規表現をはじめとする perl の各種機能は ShiftJIS に対応するようになります。
関数 length が扱う長さの単位はバイトのままで、UTF8フラグは使用しません。

=head1 この文書の表記のぶれについて

いわゆるシフトJISに対する名称について、この文書では ShiftJIS としたりシフトJIS
としたり Shift-JIS としたりしていますが、意味するものは同じだと考えてください。
これらを記述する際に参照した資料があった場合、概ねそのままの表記を残しています。
それらを変更しないほうがよいと思ったため、この文書全体としては統一されていませ
ん。あらかじめご了承ください。

=head1 もうひとつの未来(みらい)

JPerl はとても優れたソフトウェアです。おっと、ここでいう JPerl は日本語対応版の
Perl のことで、Java や JVM とは関係がありません。誤解されたり、期待されたりする
のも困るので、このソフトウェアは Sjis という名前にしました。その後、トップレベル
の名前を避けるため Char::Sjis という名前でディストリビューションを作成するように
しましたが、あなたが CPAN テスターでないのならこれまでどおり Sjis.pm, Esjis.pm
を使ってください。

ところで、その JPerl はバージョン 5.005_04 以降、メンテナンスされていません。

大変残念なことに、JPerlの開発を行った渡辺 博文さんは The Perl Confernce Japan
1998 にて

  "わたなべは疲れたから次の人よろしくね"

というメッセージを残し、Perl から離れていってしまいました。

スライド15 "jperl の今後"

ftp://ftp.oreilly.co.jp/pcjp98/watanabe/jperlconf.ppt

きっと誰かが引き継いで書いてくれるだろう。
などと期待をしながら10年間、待ち続ける間に世界は違う方向へと進んでいくのでした。

このソフトウェアは ShiftJIS で書かれた Perl スクリプトをエスケープ処理するための
ソースコードフィルタです。エスケープ処理によって文字コードが変化することはあり
ません。もし変化した場合は、バグですので報告頂けるとありがたいです。

成功したソフトウェアから以下のことを学んでこのソフトウェアは作成されました。

=over 2

=item * Perl4 から Perl5 のような上位互換性

=item * jcode.pl のような最大限の移植性

=item * JPerl のようにUTF8フラグを使わず、ShiftJISをそのまま扱い、Perl は1つの言語のまま

=item * Encode モジュールのように Perl は1つのインタプリタのまま

=item * Ruby のように文字集合独立な手法

=item * cpanminus のようにモノリシックなスクリプト

=item * Perl 自身のように TMTOWTDI(There's more than one way to do it)

=back

このソフトウェアとPerlの未来について考えると胸がどきどきします。みなさんだって
きっとそうでしょう？

=head1 基本的な仕組み

最近、以下のメールを再発見しました。

[Tokyo.pm] jus Benkyoukai

http://mail.pm.org/pipermail/tokyo-pm/1999-September/001854.html

("SJIS.pm" というファイル名で保存されているものとします)

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

基本的には、このソフトウェアは上記のようなことを行います。
ただし、Filter::Util::Call を利用していない点、Perl の構文を解析して必要に応じて
エスケープする点が異なります。

=head1 インストール方法(簡単な方法)

   CPAN から Sjis.pm と Esjis.pm をダウンロードし Perl の lib ディレクトリに格納します。

=head1 インストール方法(makeを使う場合)

   perl Makefile.PL
   make test
   make install

=head1 インストール方法(makeを使わない場合)

   perl pMakefile.pl          --- pMakefile.pl が pmake.bat を生成します
   pmake.bat
   pmake.bat test
   pmake.bat install          --- 現在使用中の perl 環境にインストールします
   pmake.bat dist             --- CPAN 配布用パッケージを作ります
   pmake.bat ptar.bat         --- ptar.bat を作成します

=head1 ソフトウェアの一覧

   Sjis.pm               --- ShiftJIS ソースコードフィルタ
   Esjis.pm              --- Sjis.pm のランタイムルーチン
   Char/Sjis.pm          --- CPANテスター向けの Sjis.pm
   Char/Esjis.pm         --- CPANテスター向けの Esjis.pm

=head1 DOS風システムにおけるコマンドラインのワイルドカード展開

DOS風システムの標準シェル(COMMAND.COM および cmd.exe)は、起動するプログラムへ渡す
パラメータのワイルドカード展開を行いません。その代わりとして Esjis.pm 内の import
関数がワイルドカード展開を行うようになっています。

   参考 Esjis.pm から抜粋
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

=head1 初めてのJPerl

  ● 使い方(その1)

    1. スクリプト ShiftJIS_script.pl の中に以下のいずれかを記述して...

      use Sjis;
      use Sjis ver.sion;              --- Sjis.pm のバージョンが ver.sion 以上なら実行可
      use Sjis ver.sion.0;            --- Sjis.pm のバージョンが ver.sion でなければ die する
      use Sjis qw(ord reverse getc);  --- ord, reverse, getc の拡張機能を使う場合
      use Sjis ver.sion qw(ord reverse getc);
      use Sjis ver.sion.0 qw(ord reverse getc);

      ※ no Sjis; は利用できません。

      use Sjis ver.sion.0; 形式だと Sjisソフトウェアのバージョンの上限・下限の双方
      を指定できます。実行時の Sjisソフトウェアが記述したバージョンとぴったり同じで
      ないならば die します。例えば、use Sjis 0.88.0; と記述すると Sjisソフトウェア
      のバージョンが 0.88 であることを保障できます。

    2. コマンドプロンプトで以下のように実行する

      perl  ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32

      ? * を使ってワイルドカードの指定ができます
      ' 〜 ' を使ってクォートすることができます

  ● 使い方(その2)

    コマンドプロンプトで以下のように実行する

      C:\>perl  Sjis.pm  ShiftJIS_script.pl  >  Escaped_script.pl.e
      C:\>perl  Escaped_script.pl.e

      ShiftJIS_script.pl  --- ShiftJIS で書かれたスクリプト
      Escaped_script.pl.e --- エスケープされたスクリプト

  ● 使えるサブルーチンと関数
      Sjis::ord(...);
      Sjis::reverse(...);
      Sjis::getc(...);
      Sjis::length(...);
      Sjis::substr(...);
      Sjis::index(...);
      Sjis::rindex(...);
      Sjis::eval(...);
      CORE::chop(...);
      CORE::ord(...);
      CORE::reverse(...);
      CORE::getc(...);
      CORE::index(...);
      CORE::rindex(...);

  ● 以下はダミーサブルーチンとして用意されている
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

=head1 エスケープによる上位互換性の確保

このソフトウェアは過去のものを壊したりはせず、常に「エスケープ」によって機能を追加
しています。だから今まで可能であったことが不可能になることはありません。このアプ
ローチは、後退が決して許されない分野に有効です。なお、上位互換性の確保のために、
Perl自身の非互換な拡張を取り除くこともあります。

=head1 スクリプトのエスケープ

作成したスクリプトに 'use Sjis;' と書く必要があります。

  ---------------------------------
  以前        以後
  ---------------------------------
  (なし)      use Sjis;
  ---------------------------------

=head1 マルチバイト文字のエスケープ

このソフトウェアによって、マルチバイト文字の第2バイトの @  [  \  ]  ^  `  {  |  }
の直前に chr(0x5c) が挿入されます。対象は以下の箇所です。

=over 2

=item * シングルクォート中の文字列 ('', q{}, <<'END' and qw{})

=item * ダブルクォート中の文字列 ("", qq{}, <<END, <<"END", ``, qx{} and <<`END`)

=item * シングルクォート中の正規表現 (m'', s''', split(''), split(m'') and qr'')

=item * ダブルクォート中の正規表現 (//, m//, ??, s///, split(//), split(m//) and qr//)

=item * tr/// の中の文字 (tr/// and y///)

=back

  例: カタカナの「ソ」コードは "\x83\x5C"
  
                  見え方  ダンプ
  -----------------------------------------
  source script   "`/"    [83 5c]
  -----------------------------------------
 
  ここで use Sjis; を実行
                          ダンプ
  -----------------------------------------
  escaped script  "`\/"   [83 [5c] 5c]
  -----------------------------------------
                    ^--- Sjisソフトウェアでエスケープされる
 
  参考            見え方  ダンプ
  -----------------------------------------
  your eye's      "`/\"   [83 5c] [5c]
  -----------------------------------------
  perl eye's      "`\/"   [83] \[5c]
  -----------------------------------------
 
                          ダンプ
  -----------------------------------------
  in the perl     "`/"    [83] [5c]
  -----------------------------------------

=head1 正規表現中へのマルチバイトアンカーリング処理の追加

Sjisソフトウェアは正規表現の先頭にマルチバイトアンカーリング処理を付け足します。

  --------------------------------------------------------------------------------
  処理前                  処理後
  --------------------------------------------------------------------------------
  m/regexp/               m/${Esjis::anchor}(?:regexp).../
  --------------------------------------------------------------------------------

${Esjis::anchor} の具体的な内容については別途「Sjisソフトウェアのマルチバイトアン
カーリング処理」に記述してあります。

=head1 第2オクテットのエスケープ処理

Sjisソフトウェアは正規表現中のマルチバイト文字の第2オクテットをエスケープします。

  --------------------------------------------------------------------------------
  処理前                  処理後
  --------------------------------------------------------------------------------
  m{...`/...}             m{...`/\...}
  --------------------------------------------------------------------------------

=head1 正規表現中のマルチバイト文字の扱いについて

Sjisソフトウェアはマルチバイト文字への量指定子、およびマルチバイト文字のカスタム
文字クラスをクラスタリングします。またクラッシックな Perl 文字クラス、POSIX スタイ
ルの文字クラスをマルチバイト文字対応版に書き換えます。

  --------------------------------------------------------------------------------
  処理前                  処理後
  --------------------------------------------------------------------------------
  m/...MULTIOCT+.../      m/...(?:MULTIOCT)+.../
  m/...[AN-EM].../        m/...(?:A[N-Z]|[B-D][A-Z]|E[A-M]).../
  m/...\D.../             m/...(?:${Esjis::eD}).../
  m/...[[:^digit:]].../   m/...(?:${Esjis::not_digit}).../
  --------------------------------------------------------------------------------

=head1 Esjis::ignorecase() の呼び出し

Sjisソフトウェアは /i 修飾子の代わりに Esjis::ignorecase() の呼出しを書き加えます。

  --------------------------------------------------------------------------------
  処理前                  処理後
  --------------------------------------------------------------------------------
  m/...$var.../i          m/...@{[Esjis::ignorecase($var)]}.../
  --------------------------------------------------------------------------------

=head1 文字指向の正規表現

/b 修飾子のない正規表現は文字指向の働きをします。
つまり、/./ (ドット)は文字にマッチします。

  --------------------------------------------------------------------------------
  処理前                  処理後
  --------------------------------------------------------------------------------
  /regexp/                / 上記参照 $Esjis::matched/
  m/regexp/               m/ 上記参照 $Esjis::matched/
  ?regexp?                m? 上記参照 $Esjis::matched?
  m?regexp?               m? 上記参照 $Esjis::matched?
 
  $_ =~                   ($_ =~ m/ 上記参照 $Esjis::matched/) ?
  s/regexp/replacement/   eval{ Esjis::s_matched(); local $^W=0; my $__r=qq/replacement/; $_="${1}$__r$'"; 1 } :
                          undef
 
  $_ !~                   ($_ !~ m/ 上記参照 $Esjis::matched/) ?
  s/regexp/replacement/   1 :
                          eval{ Esjis::s_matched(); local $^W=0; my $__r=qq/replacement/; $_="${1}$__r$'"; undef }
 
  split(/regexp/)         Esjis::split(qr/regexp/)
  split(m/regexp/)        Esjis::split(qr/regexp/)
  split(qr/regexp/)       Esjis::split(qr/regexp/)
  qr/regexp/              qr/ 上記参照 $Esjis::matched/
  --------------------------------------------------------------------------------

=head1 バイト指向の正規表現

/b 修飾子を付加した正規表現はバイト指向の働きをします。
つまり、/./ (ドット)はバイトにマッチします。

  --------------------------------------------------------------------------------
  処理前                  処理後
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

=head1 文字クラスのエスケープ

過去のperlとの互換性を保つために文字クラスは以下のように再定義されています。

  ---------------------------------------------------------------
  escape        class
  ---------------------------------------------------------------
   .            ${Esjis::dot}
                ${Esjis::dot_s}    (/s 修飾子あり)
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
  \X            X (ただの英字、X です)
  \R            ${Esjis::eR}
  \N            ${Esjis::eN}
  ---------------------------------------------------------------

同様に POSIX スタイルの文字クラスも再定義されています。

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
                [\x41-\x5A\x61-\x7A]     (/i 修飾子あり)
  [:print:]     [\x20-\x7F]
  [:punct:]     [\x21-\x2F\x3A-\x3F\x40\x5B-\x5F\x60\x7B-\x7E]
  [:space:]     [\s\x0B]
  [:upper:]     [\x41-\x5A]
                [\x41-\x5A\x61-\x7A]     (/i 修飾子あり)
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
                ${Esjis::not_lower_i}    (/i 修飾子あり)
  [:^print:]    ${Esjis::not_print}
  [:^punct:]    ${Esjis::not_punct}
  [:^space:]    ${Esjis::not_space}
  [:^upper:]    ${Esjis::not_upper}
                ${Esjis::not_upper_i}    (/i 修飾子あり)
  [:^word:]     ${Esjis::not_word}
  [:^xdigit:]   ${Esjis::not_xdigit}
  ---------------------------------------------------------------

\b と \B も過去のperlとの互換性を保つために再定義されています。

  ---------------------------------------------------------------
  escape      class
  ---------------------------------------------------------------
  \b          ${Esjis::eb}
  \B          ${Esjis::eB}
  ---------------------------------------------------------------

上記の定義は、ファイル Esjis.pm の中で以下のように定義されています。

  ---------------------------------------------------------------------------------------------------------------------------------------------------------
  class                    Definition
  ---------------------------------------------------------------------------------------------------------------------------------------------------------
  ${Esjis::anchor}         qr{\G(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?}
                           32766オクテットを超える文字列を扱えるようにするため、ActivePerl5.6以降(5.10.0含む)、またはその他のPerl5.10.1以降の場合は以下のようになります
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

=head1 \N, \p, \P, \X のアンエスケープ

このソフトウェアによって英数字の正規表現メタシンボル \N, \p, \P, \X の先頭の
'\' が取り除かれます。この方法で抽象化の罠を避けることができます。

アンエスケープ後に "{" をエスケープするようにした理由は、
Deprecate literal unescaped "{" in regexes.
http://perl5.git.perl.org/perl.git/commit/2a53d3314d380af5ab5283758219417c6dfa36e9
によるものです。

  ------------------------------------
  処理前           処理後
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

=head1 組込み関数のエスケープ

このソフトウェアによって関数名の先頭に 'Esjis::' が書き加わりエスケープされます。
Esjis::* サブルーチンは Esjis.pm が提供します。

  --------------------------------------------
  処理前      処理後            動作
  --------------------------------------------
  length      length            バイト指向
  substr      substr            バイト指向
  pos         pos               バイト指向
  split       Esjis::split      文字指向
  tr///       Esjis::tr         文字指向
  tr///b      tr///             バイト指向
  tr///B      tr///             バイト指向
  y///        Esjis::tr         文字指向
  y///b       tr///             バイト指向
  y///B       tr///             バイト指向
  chop        Esjis::chop       文字指向
  index       Esjis::index      文字指向
  rindex      Esjis::rindex     文字指向
  lc          Esjis::lc         文字指向
  lcfirst     Esjis::lcfirst    文字指向
  uc          Esjis::uc         文字指向
  ucfirst     Esjis::ucfirst    文字指向
  fc          Esjis::fc         文字指向
  chr         Esjis::chr        文字指向
  glob        Esjis::glob       文字指向
  lstat       Esjis::lstat      文字指向
  opendir     Esjis::opendir    文字指向
  stat        Esjis::stat       文字指向
  unlink      Esjis::unlink     文字指向
  chdir       Esjis::chdir      文字指向
  do          Esjis::do         文字指向
  require     Esjis::require    文字指向
  --------------------------------------------

  ------------------------------------------------------------------------------------------------------------------------
  処理前                   処理後
  ------------------------------------------------------------------------------------------------------------------------
  use Perl::Module;        BEGIN { Esjis::require 'Perl/Module.pm'; Perl::Module->import() if Perl::Module->can('import'); }
  use Perl::Module @list;  BEGIN { Esjis::require 'Perl/Module.pm'; Perl::Module->import(@list) if Perl::Module->can('import'); }
  use Perl::Module ();     BEGIN { Esjis::require 'Perl/Module.pm'; }
  no Perl::Module;         BEGIN { Esjis::require 'Perl/Module.pm'; Perl::Module->unimport() if Perl::Module->can('unimport'); }
  no Perl::Module @list;   BEGIN { Esjis::require 'Perl/Module.pm'; Perl::Module->unimport(@list) if Perl::Module->can('unimport'); }
  no Perl::Module ();      BEGIN { Esjis::require 'Perl/Module.pm'; }
  ------------------------------------------------------------------------------------------------------------------------

=head1 ファイルテスト演算子のエスケープ

このソフトウェアによって演算子の '-' は 'Esjis::' に書き換わります。

  MSWin32, MacOS および UNIX風のシステムで利用可能な演算子
  -------------------------------------------------------------------------------
  処理前    処理後      説明
  -------------------------------------------------------------------------------
  -r        Esjis::r    ファイルやディレクトリがこの(実効)ユーザまたはグループから読み出し可能
  -w        Esjis::w    ファイルやディレクトリがこの(実効)ユーザまたはグループから書き込み可能
  -e        Esjis::e    ファイルやディレクトリ名が存在する
  -x        Esjis::x    ファイルやディレクトリがこの(実効)ユーザまたはグループから実行可能
  -z        Esjis::z    ファイルが存在していて大きさが0である(ディレクトリに対しては常に偽になる)
  -f        Esjis::f    エントリは普通のファイルである
  -d        Esjis::d    エントリはディレクトリである
  -t        -t          このファイルハンドルはTTYである(isatty()システム関数の結果で判定する。
                        このテストはファイル名には適用できない)
  -T        Esjis::T    このファイルは「テキスト」ファイルのようである
  -B        Esjis::B    このファイルは「バイナリ」ファイルのようである
  -M        Esjis::M    最後に変更されてからの日数
  -A        Esjis::A    最後にアクセスされてからの日数
  -C        Esjis::C    最後に iノード(inode) が変更されてからの日数
  -s        Esjis::s    ファイルやディレクトリが存在していて大きさが 0 でない
                        (バイト単位で表わしたファイルの大きさが値になる)
  -------------------------------------------------------------------------------
  
  MacOS および UNIX風のシステムで利用可能な演算子
  -------------------------------------------------------------------------------
  処理前    処理後      説明
  -------------------------------------------------------------------------------
  -R        Esjis::R    ファイルやディレクトリがこの実ユーザまたはグループから読み出し可能
  -W        Esjis::W    ファイルやディレクトリがこの実ユーザまたはグループから書き込み可能
  -X        Esjis::X    ファイルやディレクトリがこの実ユーザまたはグループから実行可能
  -l        Esjis::l    エントリはシンボリックリンクである
  -S        Esjis::S    エントリはソケットである
  -------------------------------------------------------------------------------
  
  MSWin32, MacOS では利用出来ないファイルテスト演算子
  -------------------------------------------------------------------------------
  処理前    処理後      説明
  -------------------------------------------------------------------------------
  -o        Esjis::o    ファイルやディレクトリをこの(実効)ユーザが所有している
  -O        Esjis::O    ファイルやディレクトリをこの実ユーザが所有している
  -p        Esjis::p    エントリは名前付きパイプ(fifo)である
  -b        Esjis::b    エントリはブロック特殊デバイスである(例えば、マウント可能なディスク)
  -c        Esjis::c    エントリはキャラクタ特殊デバイスである(例えば、I/Oデバイス)
  -u        Esjis::u    ファイルやディレクトリが setuid されている
  -g        Esjis::g    ファイルやディレクトリが setgid されている
  -k        Esjis::k    ファイルやディレクトリの sticky ビットがセットされている
  -------------------------------------------------------------------------------

perl5.00503 を使用している場合でもファイルテスト演算子は「積み重ねる」ことが
できます。

  if ( -w -r $file ) {
      print "The file is both readable and writable!\n";
  }

=head1 関数名のエスケープ

もし文字指向のサブルーチンを使いたい場合は以下のように記述する必要があります。
それぞれの機能については「文字指向のサブルーチン」を参照してください。

  ----------------------------------------------------
  関数名    文字指向        説明
  ----------------------------------------------------
  ord       Sjis::ord
  reverse   Sjis::reverse
  getc      Sjis::getc
  length    Sjis::length
  substr    Sjis::substr
  index     Sjis::index     以下の記述も参照のこと
  rindex    Sjis::rindex    以下の記述も参照のこと
  ----------------------------------------------------

  index の仲間たち
  --------------------------------------------------------------
  関数名         動作         返値         説明
  --------------------------------------------------------------
  index          文字指向     バイト単位   JPerlと同じ動作
  Sjis::index    文字指向     文字単位     文字指向の動作
  CORE::index    バイト指向   バイト単位   バイト指向の動作
  --------------------------------------------------------------

  rindex の仲間たち
  --------------------------------------------------------------
  関数名         動作         返値         説明
  --------------------------------------------------------------
  rindex         文字指向     バイト単位   JPerlと同じ動作
  Sjis::rindex   文字指向     文字単位     文字指向の動作
  CORE::rindex   バイト指向   バイト単位   バイト指向の動作
  --------------------------------------------------------------

=head1 文字指向のサブルーチン

=over 2

=item * Sjis::ord

    $ord = Sjis::ord($string);

    Sjis::ord($string) は $string の先頭の文字の ShiftJIS コード値を返します
    (Unicode ではありません)。$string が省略された場合は $_ が対象となります。
    このサブルーチンは常に符号なしの値を返します。

    "use Sjis qw(ord);" によってスクリプト中に記述した ord は Sjis::ord に書き
    換わるようになります。ord が Sjis::ord の動作をするのは JPerl と非互換なの
    で明示的にインポートした場合のみ書き換わります。

=item * Sjis::reverse

    @reverse = Sjis::reverse(@list);
    $reverse = Sjis::reverse(@list);

    Sjis::reverse(@list) はリストコンテキストでは @list の要素を逆順に並べた
    リスト値を返します。

    スカラーコンテキストでは @list のすべての要素を連結した上で、ShiftJIS の
    文字単位で逆順にしたものを返します。

    "use Sjis qw(reverse);" によってスクリプト中に記述した reverse は
    Sjis::reverse に書き換わるようになります。reverse が Sjis::reverse の動作を
    するのは JPerl と非互換なので明示的にインポートした場合のみ書き換わります。

    もしこのサブルーチンを知らなくとも問題はありません。これまで通り、このサブ
    ルーチンは

    $rev = join('', reverse(split(//, $jstring)));

    で実現できます。

    参考:
    P.558 JPerl (日本語対応Perl)
    付録C 日本語版の追加
    ISBN 4-89052-384-7 Perlプログラミング

=item * Sjis::getc

    $getc = Sjis::getc(FILEHANDLE);
    $getc = Sjis::getc($filehandle);
    $getc = Sjis::getc;

    FILEHANDLE に結びつけられた入力ファイルから、次の1文字を読んで返します。
    end-of-file(ファイルの終わり) になったか、あるいは I/O エラーが発生した場合に
    は、undef を返します。FILEHANDLE を省略すると、STDIN から入力します。

    このサブルーチンは少し遅いものの、キーボードから1文字を入力する際に便利です
    -- キーボード入力をバッファリングなしに設定できればですが。このサブルーチンは、
    標準I/Oライブラリに対して、バッファリングなしで入力するように要求します。残念な
    ことに、標準I/Oライブラリは、オペレーティングシステムに対してバッファリングなし
    でキーボード入力を行うように要求するための、移植性のある手段を用意するまでには、
    標準化されていません。それには、少々知恵を働かせて、オペレーティングシステムに
    固有のやり方をする必要があります。Unix では、次のようにすればうまくいくでしょう。

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

    このコードは、端末から次にタイプされた文字を変数 $key に入れます。あなたのシステ
    ムの stty プログラムに cbreak オプションがあるなら、上のコードのうち、$BSD_STYLE
    が真の場合のコードを使うと良いでしょう。そうでなければ、$BSD_STYLE が偽の場合の
    コードを使えばよいでしょう。

    "use Sjis qw(getc);" によってスクリプト中に記述した getc は Sjis::getc に書き
    換わるようになります。getc が Sjis::getc の動作をするのは JPerl と非互換なの
    で明示的にインポートした場合のみ書き換わります。

=item * Sjis::length

    $length = Sjis::length($string);
    $length = Sjis::length();

    Sjis::length($string) はスカラー値 $string の長さを ShiftJIS の文字数(プログ
    ラマから見える文字)で返します。$string を省略した場合は $_ の文字数を返しま
    す。

    配列や連想配列(ハッシュ)の大きさを知りたい場合には、Sjis::length は使えま
    せん。配列の大きさを知るには scalar @array、連想配列に入っているキー/値のペ
    アの個数を知るには scalar keys %hash とします。

    文字数ではなくバイト単位での長さを調べるには、いままで通り

    $bytes = length($string);

    のようにします。

    もしこのサブルーチンを知らなくとも問題はありません。これまで通り、このサブルー
    チンは

    $len = split(//, $jstring);

    で実現できます。

    参考:
    P.558 JPerl (日本語対応Perl)
    付録C 日本語版の追加
    ISBN 4-89052-384-7 Perlプログラミング

=item * Sjis::substr

    $substr = Sjis::substr($string,$offset,$length,$replacement);
    $substr = Sjis::substr($string,$offset,$length);
    $substr = Sjis::substr($string,$offset);

    Sjis::substr は、ShiftJIS 文字列 $string で指定された文字列から部分文字列を取り
    出して返します。部分文字列は、文字列の先頭から数えて $offset 文字目から始まる、
    $length 文字分です。最初の文字がオフセット 0 となります。$offset に負の値を設定
    すると、$string の終わりからのオフセットとなります。
    $length を省略すると、$string の最後まですべてが返されます。$length が負の値だ
    と、文字列の最後から指定された数だけ文字を取り除きます。そうでなければ、$length
    は、あなたが期待するように、取り出す部分文字列の長さを表しています。

    my $s = "The black cat climbed the green tree";
    my $color  = Sjis::substr $s, 4, 5;      # black
    my $middle = Sjis::substr $s, 4, -11;    # black cat climbed the
    my $end    = Sjis::substr $s, 14;        # climbed the green tree
    my $tail   = Sjis::substr $s, -4;        # tree
    my $z      = Sjis::substr $s, -4, 2;     # tr

    バージョン 5.14 以降の Perl であれば、Sjis::substr() を左辺値として使用することも
    可能です。その場合には、$string が自身左辺値でなければなりません。$length より短い
    ものを代入したときには、$string は短くなり、$length より長いものを代入したときには、
    $string はそれに合わせて伸びることになります。$string の長さを一定に保つためには、
    sprintf を使って、代入する値の長さを調整することが、必要になるかもしれません。

    $offset と $length として文字列の外側を含むような部分文字列が指定されると、文字列
    の内側の部分だけが返されます。部分文字列が文字列の両端の外側の場合、Sjis::substr()
    は未定義値を返し、警告が出力されます。左辺値として使った場合、文字列の完全に外側を
    部分文字列として指定すると例外が発生します。以下は境界条件の振る舞いを示す例です:

    my $name = 'fred';
    Sjis::substr($name, 4) = 'dy';         # $name is now 'freddy'
    my $null = Sjis::substr $name, 6, 2;   # returns "" (no warning)
    my $oops = Sjis::substr $name, 7;      # returns undef, with warning
    Sjis::substr($name, 7) = 'gap';        # raises an exception

    Sjis::substr() を左辺値として使う代わりの方法は、置き換える文字列を 4 番目の引数と
    して指定することです。これにより、$string の一部を置き換え、置き換える前が何であっ
    たかを返す、ということを(splice() と同様) 1 動作で行えます。

    my $s = "The black cat climbed the green tree";
    my $z = Sjis::substr $s, 14, 7, "jumped from";    # climbed
    # $s is now "The black cat jumped from the green tree"

    3 引数の Sjis::substr() によって返された左辺値は「魔法の弾丸」のように振舞うことに
    注意してください; これが代入される毎に、元の文字列のどの部分が変更されたかが思い
    出されます; 例えば:

    $x = '1234';
    for (Sjis::substr($x,1,2)) {
        $_ = 'a';   print $x,"\n";    # prints 1a4
        $_ = 'xyz'; print $x,"\n";    # prints 1xyz4
        $x = '56789';
        $_ = 'pq';  print $x,"\n";    # prints 5pq9
    }

    負数のオフセットの場合、ターゲット文字列が修正されたときに文字列の末尾からの位置
    を覚えます:

    $x = '1234';
    for (Sjis::substr($x, -3, 2)) {
        $_ = 'a';   print $x,"\n";    # prints 1a4, as above
        $x = 'abcdefg';
        print $_,"\n";                # prints f
    }

    バージョン 5.10 より前の Perl では、複数回左辺値を使った場合の結果は 未定義でした。
    5.16 より前では、負のオフセットの結果は未定義です。

=item * Sjis::index

    $index = Sjis::index($string,$substring,$offset);
    $index = Sjis::index($string,$substring);

    Sjis::index は、ShiftJIS 文字列 $string の中に含まれる、もう1つの ShiftJIS 文
    字列 $substring を探します。$string の中で、$substring が最初に出現する位置を
    文字単位で数えて返します。$offset が指定されている場合、$string の先頭から $offset
    個の文字をスキップした位置から、$substring を探し始めます。位置は 0 をベースとし
    て数えます。$substring が見つからなければ、Sjis::index サブルーチンはベースより
    1 だけ小さい値 -1 を返します。Sjis::index を使って、文字列全体を調べるには、次の
    ようにします。

    $pos = -1;
    while (($pos = Sjis::index($string, $lookfor, $pos)) > -1) {
        print "Found at $pos\n";
        $pos++;
    }

=item * Sjis::rindex

    $rindex = Sjis::rindex($string,$substring,$offset);
    $rindex = Sjis::rindex($string,$substring);

    Sjis::rindex は Sjis::index と似ていますが、ShiftJIS 文字列 $string の中で、
    部分文字列 $substring が最後に出現する位置を文字単位で数えて返します(つまり
    reverse Sjis::index です)。$substring が見つからなければ、-1 を返します。
    $offset によって、値として返すことが許される、最も右よりの位置を指定すること
    ができます。Sjis::rindex を使って、文字列全体を末尾から先頭に向かって調べるに
    は、次のようにします。

    $pos = Sjis::length($string);
    while (($pos = Sjis::rindex($string, $lookfor, $pos)) >= 0) {
        print "Found at $pos\n";
        $pos--;
    }

=item * Sjis::eval

    $eval = Sjis::eval { block };
    $eval = Sjis::eval $expr;
    $eval = Sjis::eval;

    JPerl においては、Sjis::eval キーワードは、独立していますが、関連性のある2つ
    の目的に使用されています。これら2つの目的に合わせて、2つの形式 Sjis::eval
    { block } と Sjis::eval $expr が用意されています。1番目の形式 Sjis::eval
    { block } は、そのままでは致命的であるような実行時例外(エラー)をトラップする
    ためのもので、C++ や Java の "tryブロック" に似ています。2番目の形式
    Sjis::eval $expr は、実行時にコードをコンパイルして実行するとともに、1番目の
    形式と同じように、発生した例外をトラップします。しかし、Sjis::eval $expr の
    ほうが Sjis::eval { block } よりもかなり実行が遅くなります。なぜなら、
    Sjis::eval $expr は、毎回文字列をパースしなければならないからです。その一方で、
    Sjis::eval $expr のほうがより汎用性が高くなります。どちらの形式を使うにせよ、
    JPerl においては、すべての例外処理には Sjis::eval を利用することが望ましい
    です。

    どちらの形式の Sjis::eval でも、サブルーチンと同じように、最後に評価した式の
    値が Sjis::eval の値として返されます。また同様に、return 演算子を使うことに
    よって、Sjis::eval の途中から値を返すことができます。Sjis::eval の戻り値を提
    供する式は、Sjis::eval 自体のコンテキストに応じて、無効コンテキスト、スカラー
    コンテキスト、またはリストコンテキストで評価されます。評価が行われるコンテキ
    ストを知る方法については、wantarray を参照してください。

    トラップ可能なエラー(die 演算子で発生させたエラーも含む)が発生すると、
    Sjis::eval は underf を返し、変数 $@ にエラーメッセージ(またはオブジェクト)を
    セットします。エラーが発生しなければ、$@ が空文字列になることが保証されてい
    ます。だから、Sjis::eval の後で $@ の値を調べれば、エラーの有無を確実に判定
    することができます。実際には、次のような単純なブール値のテストで十分です:

        Sjis::eval { ... }; # 実行時エラーをトラップする
        if ($@) { ... }     # エラー処理を行う

    (Perl 5.16 以前では、バグによって、リストコンテキストで構文エラーの時には undef
    を返していましたが、実行エラーの時には返していませんでした)。

    Sjis::eval { block } 形式は、コンパイル時に構文チェックを行うために、非常に効
    率が良くなります。(遅い Sjis::eval $expr 形式に慣れている人は、この点について
    誤解していることが多いようです。) { block } 内のコードは、回りのコードと同時に
    コンパイルされるので、この形式の Sjis::eval では構文エラーをトラップすることは
    できません。

    Sjis::eval $expr 形式は、実行時にコードをパースするので、構文エラーをトラップ
    することが可能です。(パースに失敗すると、例によってエラーメッセージが $@ に
    セットされます。) $expr が省略されると、$_ を評価します。

    構文エラーがなければ、式 $expr の値を、小さな JPerl スクリプトのようにして実行
    します。このときコードは、その時点の JPerl スクリプトのコンテキストで実行され
    ます。だから、Sjis::eval で実行されるコードからは、回りを取り囲むスコープのレキ
    シカル変数を見ることができ、(Sjis::eval の中で行った)非ローカルな変数への代入、
    サブルーチンやフォーマットの定義は、Sjis::eval が終了した後も有効です。
    Sjis::eval のコードはブロックとして扱われるので、Sjis::eval 内で宣言したローカ
    ルなスコープを持つ変数は、Sjis::eval が終了するまで有効です。(localとmyを参照の
    こと。)ブロック内に置かれたコードの場合と同様に、一番最後のセミコロンは省いても
    構いません。

    Sjis::eval は以下のようにエスケープされます:

    -------------------------------------------------
    処理前                  処理後
    -------------------------------------------------
    Sjis::eval { block }    eval { block }
    Sjis::eval $expr        eval Sjis::escape $expr
    Sjis::eval              eval Sjis::escape
    -------------------------------------------------

    Sjis::eval というサブルーチンは実は存在しません。もし存在していたとすると、my
    で宣言された変数をシングルクォートで囲み、Sjis::eval のパラメータにしたときに
    困るからです。Sjis::escape は JPerl スクリプトを Perl スクリプトにエスケープす
    るサブルーチンです。

    次に示すのは簡単な JPerl シェルの例です。JPerl のコードを入力するようにユーザ
    に対してプロンプトを表示して、入力された文字列をコンパイルしてから実行して、発
    生したエラーを表示します:

        #!/usr/bin/perl
        # jperlshell.pl - 簡単な JPerl シェル
        use Sjis;
        print "\nEnter some JPerl code: ";
        while (<STDIN>) {
            Sjis::eval;
            print $@;
            print "\nEnter some more JPerl code: ";
        }

    次のスクリプト rename.pl は、JPerl の式として与えられた指示に基づいて、大量の
    ファイルをリネームします:

        #!/usr/bin/perl
        # rename.pl - ファイルの名前を変更する
        use Sjis;
        $op = shift;
        for (@ARGV) {
            $was = $_;
            Sjis::eval $op;
            die if $@;
            # 次の行はスクリプト rename.pl ではなく、
            # 組み込み関数 rename を呼び出す
            if ($was ne $_) {
                print STDERR "rename $was --> $_\n";
                rename($was,$_);
            }
        }

    このスクリプトは、以下のようにして使用します:

        C:\WINDOWS> perl rename.pl 's/\.orig$//' *.orig
        C:\WINDOWS> perl rename.pl 'y/A-Z/a-z/ unless /^Make/' *
        C:\WINDOWS> perl rename.pl '$_ .= ".bad"' *.f

    Sjis::eval を使えば、そのままでは致命的になるようなエラーをトラップすることが
    できるので、ある機能(例えば fork や symlink)が実装されているかどうかを確認す
    るのに便利です。

    Sjis::eval { block } 形式ではコンパイル時に文法チェックが行われるので、すべて
    文法エラーは(Sjis::eval $expr 形式よりも)早期に発見されます。したがって、対象
    となるコードが不変で、Sjis::eval $expr と Sjis::eval { block } のどちらもあな
    たの目的に適している場合には、Sjis::eval { block } を使うことが望まれます。
    例えば、次の例を見てください:

        # 0 による除算を致命的でないようにする
        Sjis::eval { $answer = $a / $b; };
        warn $@ if $@;

        # 同じことだが、何回も実行する場合には効率が悪い
        Sjis::eval '$answer = $a / $b';
        warn $@ if $@;

        # コンパイル時の文法エラー(トラップされない)
        Sjis::eval { $answer = }; # 誤り

        # 実行時の文法エラー
        Sjis::eval '$answer =';   # エラーメッセージが $@ にセットされる

    ここで、コンパイルが成功するためには、{ block } 内のコードは正しい JPerl コー
    ドでなければなりません。$expr に入っているコードは実行時までチェックされない
    ので、実行時にならなければエラーは発生しません。

    Sjis::eval { block } 形式をライブラリの例外を捕捉するために使うときには問題が
    あります。現在の __DIE__ フックの状態はほぼ確実に壊れているという理由で、ユー
    ザーのコードが設定した __DIE__ フックを実行したくないかもしれません。この目的
    には以下の例のように、local $SIG{__DIE__} 構造が使えます。

    # a private exception trap for divide-by-zero
    Sjis::eval { local $SIG{'__DIE__'}; $answer = $a / $b; };
    warn $@ if $@;

    これは特に便利です; 与えられた __DIE__ フックは die をもう一度呼び出すことが
    でき、これによってエラーメッセージを変える効果があります:

    # __DIE__ hooks may modify error messages
    {
        local $SIG{'__DIE__'} =
            sub { (my $x = $_[0]) =~ s/foo/bar/g; die $x };
        Sjis::eval { die "foo lives here" };
        print $@ if $@; # prints "bar lives here"
    }

    これは距離の離れた動作であるため、この直感的でない振る舞いは将来のリリースで
    は修正されるかもしれません。

    Sjis::eval では、以下のような場合に、何が調べられるかに特に注意しておくことが
    必要です:

    Sjis::eval $x;        # CASE 1
    Sjis::eval "$x";      # CASE 2

    Sjis::eval '$x';      # CASE 3
    Sjis::eval { $x };    # CASE 4

    Sjis::eval "\$$x++";  # CASE 5
    $$x++;                # CASE 6

    上記の CASE 1 と CASE 2 の動作は同一で、変数 $x 内の コードを実行します。(た
    だし、CASE 2 では、必要のないダブルクォートによって、読む人が何が起こるか混乱
    することでしょう(何も起こりませんが)。)同様に CASE 3 と CASE 4 の動作も等しく、
    $x の値を返す以外に何もしない $x というコードを実行します(純粋に見た目の問題
    で、CASE 4 が好まれますが、実行時でなくコンパイル時にコンパイルされるという
    利点もあります)。CASE 5 の場合は、通常ダブルクォートを使用します。この状況を
    除けば、CASE 6 のように、単にシンボリックリファレンスを使えば良いでしょう。

    Perl 5.14 より前では、$@ への代入はローカル化された変数の復帰の前に起きるの
    で、古いバージョンで実行される場合は、全てではなく一部だけのエラーをマスクし
    たい場合には一時変数が必要です:

    # alter $@ on nefarious repugnancy only
    {
        my $e;
        {
            local $@; # protect existing $@
            Sjis::eval { test_repugnancy() };
            # $@ =~ /nefarious/ and die $@; # Perl 5.14 and higher only
            $@ =~ /nefarious/ and $e = $@;
        }
        die $e if defined $e
    }

    Sjis::eval { block } のブロックはループとはみなされないので、ループ制御文
    next、last、redo を使って抜け出したり再実行したりすることはできない。

=item * ファイル名グロビング

    @glob = glob($expr);
    $glob = glob($expr);
    @glob = glob;
    $glob = glob;
    @glob = <*>;
    $glob = <*>;

    この演算子は Esjis::glob によって実装されています。Esjis::glob の詳細は以下の
    通りです。

    @glob = Esjis::glob($string);
    @glob = Esjis::glob_;

    このサブルーチンは、$stringの値に対して、DOS風シェルと同じようなファイル名展開
    を行って得られた結果を返します。$string が省略されたときは代わりに $_ が使われ
    ます。このサブルーチンは Sjisソフトウェア内部で <*> および glob 演算子を実装し
    ているサブルーチンです。MSWin32環境にて $string が chr(0x5c) で終了している場合
    でも動作します。

    使いやすくするために Esjis::glob は、UNIX風ではなく、DOS風の展開を行うようになっ
    ています。アスタリスク("*")は、任意の文字を任意個(0個でもよい)並べたものにマッチ
    します。クエスチョン記号("?")は、任意の文字1個または0個にマッチします。ティル
    デ("~")はホームディレクトリ名に展開されます。例えば、"~/.*rc" は現在のユーザの
    "rc" ファイルすべてにマッチするし、"~jane/Mail/*" はJaneのメールファイルすべて
    にマッチします。

    ASCIIの英字の大文字と小文字は区別されず、同じものとして扱われます。バックスラッ
    シュとスラッシュはどちらもディレクトリセパレータとして扱われます。ダブルクォート
    文字列の中でバックスラッシュ1つ(\)を表わすためには2つの \、(つまり \\ )を記述す
    る必要があります。

    空白文字を含む可能性のあるファイル名をグロブしたい場合には、$stringをダブル
    クォートで囲む必要があります。なぜなら、Esjis::glob は、空白文字を特別扱いして複数
    のパターンの区切り(例えば<*.c *.h>)と解釈してしまうからです。
    例えば、"e" の後ろに空白文字、その後ろに "f" が続くファイル名のグロビングを行う
    には以下のように記述します。

    @spacies = <"*e f*">;
    @spacies = Esjis::glob('"*e f*"');
    @spacies = Esjis::glob(q("*e f*"));

    変数を利用する場合は以下のようにします。

    @spacies = Esjis::glob("'*${var}e f*'");
    @spacies = Esjis::glob(qq("*${var}e f*"));

    スクリプトを今後もDOS風のOSで実行するのであれば、

    # 相対パスで取得する場合
    @relpath_file = split(/\n/,`dir /b wildcard\\here*.txt 2>NUL`);

    # 絶対パスで取得する場合
    @abspath_file = split(/\n/,`dir /s /b wildcard\\here*.txt 2>NUL`);

    と記述してもよいでしょう。

=back

=head1 バイト指向の関数

=over 2

=item * CORE::chop

    $byte = CORE::chop($string);
    $byte = CORE::chop(@list);
    $byte = CORE::chop;

    文字列変数あるいはバイト列変数の最後のバイトを切り落とし、そのバイトを値として
    返します。CORE::chop 演算子は、主に入力レコードの末尾から改行文字を取り除くのに
    用いられ、置換演算子を使う(s/\n$//)よりも効率的です。もしやりたいことがそれだけ
    ならば、chomp を使うほうがより安全です。なぜなら、CORE::chop は末尾にあるバイト
    を無条件で取り除くのに対して、chomp は取り除くものを選んで取り除くからです。

    リテラルを CORE::chop することはできません --- CORE::chop できるのは変数だけで
    す。

    引数として変数のリスト @list を与えると、リストの各文字列の最後のバイトが切り
    落とされます:

    @lines = `cat myfile`;
    CORE::chop @lines;

    代入式を含め、左辺値ならばどんなものでも CORE::chop することができます:

    CORE::chop($cwd = `pwd`);
    CORE::chop($answer = <STDIN>);

    上の2行は、次の例とは違った動作をします:

    $answer = CORE::chop($tmp = <STDIN>); # 誤り

    このコードでは、CORE::chop は、($tmpに入っている)残された文字列ではなく、切り
    落としたバイトを返すので、$answer には改行文字がセットされてしまいます。意図し
    た結果を得るための方法の1つは、substr を使うことです:

    $answer = substr <STDIN>, 0, -1;

    しかし、次のように書くのが普通です:

    CORE::chop($answer = <STDIN>);

    最も一般的なケースでは、substr を使って、CORE::chop を書き換えることができます:

    $last_byte = CORE::chop($var);
    $last_byte = substr($var, -1, 1, ""); # 同じこと

    これらが等価であることを理解してしまえば、まとめて CORE::chop を行うことができ
    ます。2個以上のバイトをまとめて切り落とすには、substr を左辺値として使い、それに
    空文字列を代入します。次のコードは $caravan の最後の5バイトを取り除きます:

    substr($caravan, -5) = "";

    ここでは substr に負の値を与えることによって、(先頭からではなく)末尾からのオ
    フセットを指定しています。削除したバイトを保存したければ、4引数の substr を使っ
    て5バイトを CORE::chop します:

    $tail = substr($caravan, -5, 5, "");

    引数を省略すると、変数 $_ が対象となります。

=item * CORE::ord

    $ord = CORE::ord($expr);

    CORE::ord($expr) は "use Sjis qw(ord);" の記述の有無に関わらず、常に $expr
    の先頭のバイト値を返します。$expr が省略された場合は $_ が対象となります。
    この関数は常に符号なしの値を返します。

    符号付きの値が必要であれば、unpack('c',$expr) を使います。また全てのバイト値
    をリストとして必要であれば unpack('C*',$expr) を代わりに使います。

=item * CORE::reverse

    @reverse = CORE::reverse(@list);
    $reverse = CORE::reverse(@list);

    CORE::reverse(@list) はリストコンテキストでは @list の要素を逆順に並べた
    リスト値を返します。

    スカラーコンテキストでは "use Sjis qw(ord);" の記述の有無に関わらず、 @list
    のすべての要素を連結した上で、バイト単位で逆順にしたものを返します。

=item * CORE::getc

    $getc = CORE::getc(FILEHANDLE);
    $getc = CORE::getc($filehandle);
    $getc = CORE::getc;

    FILEHANDLE に結びつけられた入力ファイルから、次の1バイトを読んで返します。
    end-of-file(ファイルの終わり) になったか、あるいは I/O エラーが発生した場合に
    は、undef を返します。FILEHANDLE を省略すると、STDIN から入力します。

    この関数は少し遅いものの、キーボードから1バイトを入力する際に便利です -- キー
    ボード入力をバッファリングなしに設定できればですが。この関数は、標準I/Oライブ
    ラリに対して、バッファリングなしで入力するように要求します。残念なことに、標準
    I/Oライブラリは、オペレーティングシステムに対してバッファリングなしでキーボード
    入力を行うように要求するための、移植性のある手段を用意するまでには、標準化され
    ていません。それには、少々知恵を働かせて、オペレーティングシステムに固有のやり
    方をする必要があります。Unix では、次のようにすればうまくいくでしょう。

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

    このコードは、端末から次にタイプされた1バイトを変数 $key に入れます。あなたの
    システムの stty プログラムに cbreak オプションがあるなら、上のコードのうち、
    $BSD_STYLE が真の場合のコードを使うと良いでしょう。そうでなければ、$BSD_STYLE
    が偽の場合のコードを使えばよいでしょう。

=item * CORE::index

    $index = CORE::index($string,$substring,$offset);
    $index = CORE::index($string,$substring);

    CORE::index は、バイト列 $string の中に含まれる、もう1つのバイト列 $substring
    を探します。$string の中で、$substring が最初に出現する位置をバイト単位で数えて
    返します。$offset が指定されている場合、$string の先頭から $offset バイト分スキッ
    プした位置から、$substring を探し始めます。位置は 0 をベースにして数えます。
    $substring が見つからなければ、CORE::index 関数はベースより 1 だけ小さい値 -1
    を返します。CORE::index を使って、バイト列全体を調べるには、次のようにします。

    $pos = -1;
    while (($pos = CORE::index($string, $lookfor, $pos)) > -1) {
        print "Found at $pos\n";
        $pos++;
    }

=item * CORE::rindex

    $rindex = CORE::rindex($string,$substring,$offset);
    $rindex = CORE::rindex($string,$substring);

    CORE::rindex は CORE::index と似ていますが、バイト列 $string の中で、部分バイト
    列 $substring が最後に出現する位置をバイト単位で数えて返します(つまり
    reverse CORE::index です)。$substring が見つからなければ、-1 を返します。
    $offset によって、値として返すことが許される、最も右よりの位置を指定すること
    ができます。CORE::rindex を使って、バイト列全体を末尾から先頭に向かって調べる
    には、次のようにします。

    $pos = CORE::length($string);
    while (($pos = CORE::rindex($string, $lookfor, $pos)) >= 0) {
        print "Found at $pos\n";
        $pos--;
    }

=back

=head1 bytes::* サブルーチンのアンエスケープ

このソフトウェアによって bytes::* サブルーチンの先頭の 'bytes::' が取り除かれます。

  -----------------------------------------
  処理前           処理後    動作
  -----------------------------------------
  bytes::chr       chr       バイト指向
  bytes::index     index     バイト指向
  bytes::length    length    バイト指向
  bytes::ord       ord       バイト指向
  bytes::rindex    rindex    バイト指向
  bytes::substr    substr    バイト指向
  -----------------------------------------

=head1 無視するプラグマおよびモジュール

  -----------------------------------------------------------
  処理前                    処理後
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

  utf8 プラグマ、bytes プラグマはコメントアウトされます。同ファイルで提供されて
  いるサブルーチンの代わりとして Esjis.pm がダミーサブルーチンを提供します。

=over 2

=item * ダミーのサブルーチン utf8::upgrade

  $num_octets = utf8::upgrade($string);

  $string のオクテット数を返します。

=item * ダミーのサブルーチン utf8::downgrade

  $success = utf8::downgrade($string[, FAIL_OK]);

  このサブルーチンは常に真の値を返します。

=item * ダミーのサブルーチン utf8::encode

  utf8::encode($string);

  このサブルーチンは何も返しません。

=item * ダミーのサブルーチン utf8::decode

  $success = utf8::decode($string);

  このサブルーチンは常に真の値を返します。

=item * ダミーのサブルーチン utf8::is_utf8

  $flag = utf8::is_utf8(STRING);

  このサブルーチンは常に偽の値を返します。

=item * ダミーのサブルーチン utf8::valid

  $flag = utf8::valid(STRING);

  このサブルーチンは常に真の値を返します。

=item * ダミーのサブルーチン bytes::chr

  バイト指向のサブルーチン chr として実装されています。

=item * ダミーのサブルーチン bytes::index

  バイト指向のサブルーチン index として実装されています。

=item * ダミーのサブルーチン bytes::length

  バイト指向のサブルーチン length として実装されています。

=item * ダミーのサブルーチン bytes::ord

  バイト指向のサブルーチン ord として実装されています。

=item * ダミーのサブルーチン bytes::rindex

  バイト指向のサブルーチン rindex として実装されています。

=item * ダミーのサブルーチン bytes::substr

  バイト指向のサブルーチン substr として実装されています。

=back

=head1 Sjisソフトウェアのマルチバイトアンカーリング処理

=over 2

=item * バイト処理と文字処理(CJKV日中韓越情報処理より)

シフトJISのようなマルチバイト文字を処理するときに「文字の削除」「文字の挿入」「文字の
検索」を適切に行うためには、1文字が1バイトで表されるという固定観念を破らなければなり
ません。

このことについて

  CJKV日中韓越情報処理(ISBN 4-87311-108-0)
  http://www.oreilly.co.jp/books/4873111080/
  
  P.439 9.6 バイト処理と文字処理
    9.6.1 文字の削除
    9.6.2 文字の挿入
    9.6.3 文字の検索

に詳しく書かれています。
またこれを Perl プログラミングで解決するための方法が同書の

  付録W Perlのプログラム例
    W.8 CJKV符号化のテンプレート
      W.8.5 シフトJIS 符号化
    W.9 マルチバイトアンカーリング
    W.10 マルチバイト処理

に掲載されています。

=item * 前進による新たな課題

上記のマルチバイトアンカーリングのテンプレートを応用すると、シフトJISの文字列を正規表現
で処理できるようになりますが、この前進によって新たな壁に突き当たります。

  wcs_abeさんの報告
  Perl ファイル一気読み後の正規表現について
  http://okwave.jp/qa/q6674287.html
  
  Perlで以下の通り、htmlファイルを全て読み込んだ後に正規表現を当てたいのですが、うまく
  いきません。恐縮ですが、原因をご存知の方いらっしゃいましたら教えて頂けませんでしょう
  か。また、他に良い解決方法がありましたら教えて頂けると幸いです。
  ※PC環境はwindows7, perl5.12です。情報に不足がございましたらご指摘下さい。
  
  -----
  #--test.html(左側の数字は行数)
  000001 <dl>
  000002 <dt>aaa</dt>
  000003 <dd>12345</dd>
  000004 </dl>
  
  （中略）
  
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
  
  ファイルの始めの方だと当たるのに、後半では当たりません。
  正規表現の対象として大きすぎるんでしょうか・・・。
  
  $data =~ s|<dt>aaa</dt>|<dt>ccc</dt>|;
  は、当たりますが
  
  $data =~ s|<dt>bbb</dt>|<dt>ccc</dt>|;
  だと当たりません。
  
  どうぞよろしくお願いいたします。
  
  補足
  上記の質問では、関連は薄いと思いあえて記載しなかったんですが、このhtmlファイルは
  Sjisテキストで、それをSjis.pmを使って処理を行おうとしています。

この症状を再現する最小のコードを書くと

  # スクリプト test2.pl
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

のようになり、実行結果は

  ok - ('A' x 32767).'B' =~ /B/
  not ok - ('A' x 32768).'B' =~ /B/

となります。'A' が 32,767個続いた後の 'B' は検索して見つかるのに、32,768個続いた後の
'B' は検索しても見つからないのです。

=item * Perlの正規表現の量指定子の限界

この原因は perl インタプリタにあります。

  量指定子
  http://perldoc.jp/docs/perl/5.14.1/perlre.pod
  
  以下の標準的な量指定子を使えます:
    *           Match 0 or more times
    +           Match 1 or more times
    ?           Match 1 or 0 times
    {n}         Match exactly n times
    {n,}        Match at least n times
    {n,m}       Match at least n but not more than m times
  
  (前略) "*" 量指定子は {0,} と、"+" 量指定子は {1,} と、 "?" 量指定子は {0,1} と等価
  です。 n 及び m は perl をビルドしたときに定義した既定の制限より小さな非負整数回に
  制限されます。 これは大抵のプラットフォームでは 32766 回になっています。 実際の制限
  は次のようなコードを実行すると生成されるエラーメッセージで 見ることができます:
  
    $_ **= $_ , / {$_} / for 2 .. 42;

=item * 壁を乗り越えるには

この限界を回避する方法として、貞廣知行さんが考案した以下の方法があります。

  2002-01-17: 長い文字列に対する正規表現検索
  http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm#long
  
  # 一回だけマッチ
  my $Apad = '(?:(?:\A|[\x00-\x80\xA0-\xDF])(?:[\x81-\x9F\xE0-\xFC]{2})*?)';
  my $str1 = ('あ' x 100000) . 'アイABC';
  $str1 =~ /$Apad([A-Z]+)/o;
  print "$1\n"; # "ABC" と表示される。
  
  # グローバルマッチ
  my $Gpad = '(?:(?:\G|[\x00-\x80\xA0-\xDF])(?:[\x81-\x9F\xE0-\xFC]{2})*?)';
  my $str2 = 'あ' x 100000 . 'アイABC'. 'お' x 100000 . 'XYZ';
  my @array = $str2 =~ /$Gpad([A-Z]+)/go;
  print "@array\n"; # "ABC XYZ" と表示される。

\A と \G が使い分けられているのですが、\G は最初に使われるときは \A と同じように機能
するので、実際には \G の方法ひとつだけでよいでしょう。

  正規表現のクォート風の演算子
  http://perldoc.jp/docs/perl/5.16.1/perlop.pod#Regexp32Quote-Like32Operators
  
  \G assertion (\G アサート)
  
  (前略)以前に /g マッチを適用していないターゲット文字列に対して /g なしで \G を使うと、
  文字列の先頭にマッチする \A アサートを使うのと 同じことになります。(後略)

=item * あと少し残っている問題への対応

上記のページには

  一バイト文字か、二バイト文字のうち第二バイトが [\x40-\x7E\x80\xA0-\xDF] で終わるもの
  が、少なくとも適当な間隔で（上限に達しないうちに）出現すれば、エラーにならずに処理す
  ることができます。（確率的な問題ですので、完全ではありません。）

とあり、全バイトが US-ASCII で構成されているデータの場合はうまくいきません。
そのような場合はアンカーリングを

  qr{\G.*?}s

にすることで対応します。

=item * まとめると

以上の全てを考慮して、再びマルチバイトアンカーリングを考えると以下のようになります。

  qr{\G(?(?=.{0,32766}\z)(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?|(?(?=[\x00-\x80\xA0-\xDF\xFD-\xFF]+\z).*?|(?:.*?[\x00-\x80\xA0-\xDF\xFD-\xFF](?:[^\x00-\x80\xA0-\xDF\xFD-\xFF]{2})*?)))}oxms
  
  解説
  
  qr{\G  # \G アサートと \A アサートを兼ねる
       (?(?=.{0,32766}\z)  # 対象文字列が 32,766 オクテット以下であれば
                         (?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?  # これがマルチバイトアンカーリングに使われる
                                                                                    |  # 32,767 オクテット以上で、なおかつ
                                                                                     (?(?=[\x00-\x80\xA0-\xDF\xFD-\xFF]+\z)  # 全バイトがシングルバイトコードセットで構成されているならば
                                                                                                                           .*?  # これがアンカーリングに使われる
                                                                                                                              |  # それ以外の場合は
                                                                                                                               (?:.*?[\x00-\x80\xA0-\xDF\xFD-\xFF](?:[^\x00-\x80\xA0-\xDF\xFD-\xFF]{2})*?)  # これがマルチバイトアンカーリングに使われる
                                                                                                                                                                                                          ))}oxms

MSWin32 環境の ActivePerl のバージョン 5.6 以降(Perl5.10.0も含みます)、あるいはその他
の Perl のバージョン 5.10.1 以降の場合にこのマルチバイトアンカーリングが使われます。
それ以外の場合は、これまでどおり

  qr{\G(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?}oxms

が使われます。

=back

=head1 環境変数

 このソフトウェアは排他制御に flock 関数を使用します。ファイルが読取り可能になるまで
 あるいは書込み可能になるまでプログラムの実行はブロックされます。
 これを環境変数 SJIS_NONBLOCK を定義することでブロックさせないようにすることができま
 す。

 例:

   SET SJIS_NONBLOCK=1

 (値 '1' は意味を持たないので何でも構いません)

=head1 MacJPerl の機能

 図書と Web 上の情報を参考にして MacOS に対応してみました。実機がないためにテストが
 できていません。動作報告、バグ報告等頂けるととてもありがたいです。
 
 実行には以下のソフトウェアが必要です。
 1. MacPerl モジュール
 2. Mac::Files モジュール
 3. ToolServer
 4. MPW(Macintosh Programmer's Workshop)

=head1 バグと制限事項と互換性

このソフトウェアは、私の能力を尽くして、テストして照合しました。そうであっても、多く
の正規表現を含むソフトウェアは、ある程度のバグを飼うことをまぬがれることができません。
よって、もしあなたのスクリプトではなくて、Sjisソフトウェアのバグを見つけたのなら、
最小限のテストコードに切り詰めた上で、作者まで報告して頂けると助かります。

あるいはもっと有用なツールにするためのよいアイディアがあったなら、皆と共有して頂ける
とありがたいです。

=over 2

=item * format

    オリジナルの Perl と機能が同じです(ShiftJIS に対応していません)。

=item * 正規表現のクロイスタ

    正規表現のクロイスタ (?s) と (?i) は当面、実装されないでしょう。
    クロイスタ (?s) は /s 修飾子と .(ドット) と \N で代用できます。
    クロイスタ (?i) は \F 〜 \E で工夫して記述しないといけません。

=item * chdir

    perl5.005 であれば常に chdir() を正常に実行できます。

    DOS風のシステム($^O の値が MSWin32, NetWare, symbian, dos のいずれかの
    場合)は、以下の制限事項があります。

    perl5.006 または perl5.00800 の場合で文字コード(0x5C)で終わるディレクトリ
    を指定して実行するには jacode.pl ライブラリが必要です。

    perl5.008001以降, perl5.010, perl5.012, perl5.014, perl5.016, perl5.018,
    perl5.020 にて文字コード(0x5C)で終わるディレクトリを指定して実行するとき、
    COMMAND.COM あるいは cmd.exe によって 8dot3name 形式の短い名前を取得できた
    場合は chdir() が成功します。ただし、chdir() 後のカレントディレクトリの
    最終のサブディレクトリは 8dot3name 形式の短い名前になります。

    参考リンク
    Bug #81839
    chdir does not work with chr(0x5C) at end of path
    http://bugs.activestate.com/show_bug.cgi?id=81839

=item * 左辺値としての Sjis::substr

    バージョン 5.14 未満の Perl の場合、Sjis::substr は CORE::substr とは異なり、
    左辺値として扱うことができません。文字列の一部分を変更したい場合は、Sjis::substr
    の4番目の引数として置換え後の文字列を指定します。
    
    Sjis::substr($string, 13, 4, "JPerl");

=item * 特殊変数 $` と $& を使うときは /( 正規表現全体をキャプチャ )/ する必要があります

    なぜならば、以下のように変換され、$1 を利用するためです。
 
    -------------------------------------------------------------------------------------------
    処理前          処理後               実行される内容
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

=item * 正規表現を適用する文字列の長さの上限

    前述のとおり、エスケープ後の正規表現にはマルチバイトアンカーリング処理のた
    めの記述 ${Esjis::anchor} が追加されますが、その中に含まれる \G の制約を受
    けます。MSWin32版のActivePerl5.6以降(5.10.0も含みます)、あるいは他のPerlの
    場合は5.10.1以降でなければ、文字列の32,767バイトを超える位置でマッチさせる
    ことができません。
 
    参考リンク
    
    In 5.10.0, the * quantifier in patterns was sometimes treated as {0,32767}
    http://perldoc.perl.org/perl5101delta.html
    
    [perl #116379] \G can't treat over 32767 octet
    http://www.nntp.perl.org/group/perl.perl5.porters/2013/01/msg197320.html
    
    perlre - Perl regular expressions
    http://perldoc.perl.org/perlre.html
    
    perlre length limit
    http://stackoverflow.com/questions/4592467/perlre-length-limit

=item * 展開すると空になる正規表現中の変数

    空のリテラル文字列とは異なり、正規表現中に展開された変数の値が空文字列であっ
    ても、直前に成功した正規表現は使われません。

=item * ??, m?? 内の制限

    ?? または m?? の内部でマルチバイト文字に対して {n,m} {n,} {n} * + などの量指
    定子を付けたい場合は、その文字を ( ) で囲んで記述する必要があります。その結果、
    $1,$2,$3,... はずれてしまうため、その記述を修正する必要があります。
    なお ?? または m?? はデリミタが ? なので、(?: ) や量指定子の ? {n,m}? {n,}?
    {n}? は記述することができません。

=item * 後読み言明

    後読み言明(例えば (?<=[A-Z]))が直前の二バイト文字の第二バイトに誤ってマッチ
    することには対処されていません。
    例えば、'アイウ' =~ /(?<=[A-Z])([アイウ])/ を実行するとマッチして $1 は 'イ'
    になりますが、これは正しくありません。

=item * 正規表現の修飾子 /a /d /l /u

    このソフトウェアのコンセプトは、ひとつのスクリプト中のリテラル文字列や正規表現
    のリテラル部分に複数の符号化方式を利用しないようにすることです。従って修飾子
    /a /d /l /u をサポートしません。
    \d は昔も今も [0-9] を意味します。

=item * 名前付き文字

    例えば、\N{GREEK SMALL LETTER EPSILON}、\N{greek:epsilon}、\N{epsilon} のよう
    な名前付き文字は利用できません。

=item * 正規表現のUnicode属性

    正規表現のUnicode属性は利用することができません。Perl5.18で追加された (?[])
    構文も利用できません。いまのところそれらをサポートする予定はありません。

=item * 無視される ${^WIN32_SLOPPY_STAT} の値

    Microsoft Windows 上で chr(0x5c) で終わるパスを指定してファイルテスト(演算子)、
    あるいは lstat()、stat() を実行すると、${^WIN32_SLOPPY_STAT} に真の値が設定され
    ている場合でもそのファイルをオープンして調べます。

=item * 文字列および正規表現のデリミタ

    qq//, q//, qw//, qx//, qr//, m//, s///, tr///, y/// のデリミタとしてワイドキャ
    ラクタを使用することはできません。

=back

=head1 作者

このプロジェクトは 稲葉 準 ina@cpan.org によって始まりました。

=head1 著作権

このソフトウェアはフリーソフトウェアです。あなたは Perl と同じライセンス
の元で再配布及び変更を行うことが出来ます。詳しくは perlartistic を参照して
ください。

このソフトウェアは有用であることを願って頒布されますが、*全くの無保証* 
です。商業可能性の保証や特定の目的への適合性は、言外に示されたものも含
め全く存在しません。

=head1 シフトJISコードとは(日本語情報処理より)

シフトJIS符号化は、マイクロソフト社により開発された、日本のコンピュータで最もよく
用いられる符号化方式です。シフトJISは「MS漢字(Microsoft漢字)」、または「SJIS
(ShiftJISの略称)」とも呼ばれています。

かつて日本のコンピュータユーザは半角片仮名しか使えなかったため、従来方式との互換性
を維持する目的でシフトJISが開発されました。

シフトJISにおいては、16進数で 0x81〜0x9F または 0xE0〜0xEF の範囲を持つオクテット
によって1文字2オクテットモードが開始します。そしてこのオクテットは、そこから始まる
2オクテット文字の第1オクテットとして処理されます。続く(第2)オクテットは、16進数で
0x40〜0x7E または 0x80〜0xFC の範囲を持つ値でなければなりません。第1オクテットの
範囲は拡張ASCII文字セット、つまり最上位ビットがオンになった8ビット文字セットの範囲
に完全に収まっていることに注目してください。またシフトJISは、半角片仮名とASCII/JIS
ローマ字もサポートしています。

一部のシフトJIS仕様(特にメーカ仕様)では、ユーザ定義文字のコード領域や、場合によって
は半角片仮名空白文字のコード位置も定義されています。もし本格的な情報交換を望むので
あれば、このようなコード領域やコード位置は不都合です。というのも、このような文字は、
別の日本語符号化方式(つまりJISとEUC)のコード位置に変換できないように符号化されてし
まうからです。

=head1 ウィキペディアによる「Shift_JIS」の定義

Shift_JIS (2011.10.27 00:00:00 JST). In Wikipedia: The Free Encyclopedia.
Retrieved from
http://ja.wikipedia.org/wiki/Shift_JIS

出典: フリー百科事典『ウィキペディア(Wikipedia)』

Shift_JIS（シフトジス）は、現在多くのパソコン上のファイル内で日本語を表すため
に使われている文字コードである。かつてはベンダーによる独自拡張を含む文字コード
群に対する曖昧な名称であったが、現在は標準化文書JIS X 0208の附属書1で規定され
ている。「Shift_JIS」はIANAにおける登録名である。

Shift_JISの誕生

1980年代、パソコン用16ビットCPUの普及もあいまって、漢字や仮名を表示可能なハー
ドウェアを備えたパソコンが続々と発売された。そのため、日本語を表現できる文字
符号化方式が模索されていた（Shift_JISを「シフトJISコード」と呼んで符号化文字
集合（文字コード）の面のみを考える議論があるが、ここでは文字符号化方式の面に
焦点を当てる）。

文字符号化方式Shift_JISの設計者らは、先行してよく利用されていたJIS C 6220
（現在のJIS X 0201）の8ビット符号（以下「英数字・半角カナ」）と、JIS C 6226
（現在のJIS X 0208、以下「漢字」）の両文字集合を表現しようとした。また、ファ
イルの大きさや処理時間の短縮を図るため、エスケープシーケンスなしで混在可能に
することを企図した。

JIS C 6220とJIS C 6226の2つはともに、ISO 2022で文字集合を切り替えて利用する
設計があった。ISO 2022に基づく文字符号化方式では、英数字、半角カナ、漢字はそれ
ぞれ、8ビット符号空間の中のGL/GRという領域の1つを（ただし漢字は2回）使うことで
表現できる。もし英数字と漢字の2つをエスケープシーケンスなしで混在したいなら、
英数字をGL、漢字をGRに割り当てる方法がある。EUC-JPは、おおよそそのように実装
されている。

しかし、パソコンではすでに、JIS X 0201の8ビット符号、つまりGLに英数字、GRに1バ
イトカタカナ（半角カタカナ）を割り当てた符号が普及していた。英数字と1バイトカ
タカナの2つを動かすことは、文字化けの原因になるため避ける必要があった。その
ため、ISO 2022の枠内の領域に漢字を混在させることは困難だった。

1982年、漢字の符号位置を複雑に移動（シフト）し、符号空間の隙間に押し込む
Shift JISが誕生した。これを実現するためには、漢字の1バイト目として、ISO 2022
におけるGR（A1(16)-FE(16)）領域に3分の1残していた未使用領域に加え、ISO 2022に
おいて非使用のCR（80(16)-9F(16)）領域を使用することとした。ただし、GL（21(16)
-7E(16)）領域においては、JIS X 0201の記号に当たる部分は極力避けた。さらに2バイ
ト目には、ISO 2022とは異なり、英数字・半角カナに使用済みの領域をも含む、GL、
CR、GRにあたる各領域のほぼ全てを使う必要があった。

マイクロソフト（日本法人）元会長の古川享によると、Shift_JISの制定には、アス
キー、マイクロソフト（米）、三菱電機、マイクロソフトウェア・アソシエイツ、デ
ジタルリサーチ（米）が関わり、特にアスキーの山下良蔵が中心となって作成した
ものだという。これに対する異説として、京都大学助教授の安岡孝一は、マイクロソ
フトウェア・アソシエイツと三菱電機のみの共同開発だと主張していたが、山下本人
の発言により安岡は自説を撤回する発言をしている。また古くはLife with UNIXの
訳書（ISBN 4-7561-0783-4）の「UNIX人名事典」翻訳版加筆部分（p. 45）で、深瀬
弘恭に「MS漢字コードの作者の一人」という紹介文が書かれていた。

Shift_JISの標準化

Shift_JISは、符号化文字集合とその文字符号化方式の両方を含む現実の問題を解決す
るための技術である。それゆえ、JIS X 0208の文字集合を利用してはいるものの、
ISO 2022の符号化の方針の範囲の外にある。

しかし現在では、JIS X 0208:1997の附属書1に、「シフト符号化表現」という名前で
仕様が定義されている。これは、デファクトスタンダードとなっている技術について
は出自を問題とせず、ともかく標準化してしまおうという意図が日本工業標準調査会
 (JISC) にあってのことである。

JIS X 0208の拡張規格であるJIS X 0213では、2000年制定の初版で附属書1として
Shift_JISX0213が定められた。2004年改正時の10文字追加に伴って、Shift_JIS-2004
と名称が変更された。

IANAでも「Shift_JIS」という名前が割り当てられている。

利点と欠点

利点
1. 全角文字と、JIS X 0201で定義したいわゆる半角カナ文字を同一のコード体系で
   表現できる。
2. 日本語環境においては、MS-DOSで日本語用文字コードとして採用されて以来、パソ
   コンにおいて圧倒的な普及度があり、その他の文字符号化方式に比べてデータ交換
   可能性が高い。

欠点
1. 半角カナのための領域を確保した関係上、コードシークエンスが区点番号の「区」
   の区切りではない箇所で分断している。このため、コード番号を演算で求める際は
   煩雑な処理が必要である。
2. 2バイト目に80(16)未満(ASCIIのコード領域)が現れる。このため、文字の区切りの
   判定に手間がかかる。ファイルや電文の先頭から文字コードの判定をする場合はよい
   が、後ろから判定をしようとすると、最悪の場合、先頭までたどらないといけない
   ことがあるため、プログラムの作り方に工夫が必要になる。また、この領域に含ま
   れる一部の文字の扱いのため、マルチバイトのEUC-JP、UTF-8などに比べ、プログ
   ラミング上の扱いが難しい（次項を参照）。
3. JIS補助漢字が表現できない。補助漢字の文字数はShift_JISのコード未登録部分に
   収まらない。
4. 文字集合については実装ベンダがJIS X 0208で規定されていない機種依存の拡張を
   施していることが多く、こういった拡張部分に関してはデータ交換可能性が低い。

2バイト目が5C等になりうることによる問題

Shift_JISでは、「ソ」「噂」など一部の字の2バイト目に、5C(16)（Shift_JISでは￥
記号、ASCIIなどではバックスラッシュ）を使用している。多くのプログラミング言語
 (C、Perl、Bourne Shellなど多数) では、この5C(16)をエスケープ文字としている。
したがって、ソースコードや文字データの処理においてShift_JISを想定していないプ
ログラミング環境では問題が起こる。この問題は、同じように2バイト目の範囲に5C(16)
を含むBig5や、GBKなどの文字コードでも発生しうる。

また、5C(16)以外についても類似の問題が発生することがある。たとえば、Unixや
MS-DOSなどのシェル上で7C(16) (Shift_JISやASCIIではバーティカルバー) を含む文字
（−、ポ、л、榎、掛、弓、芸、……）をファイル名に使用しようとすると、パイプ
記号と認識され、正常にファイルが作成されなかったり、読み込みが不良になったり
することがある。

現在でも、シングルバイト文字コード対応のソフトウェアをShift_JIS環境で使用する
と、改行などの動作やファイル名の処理などにしばしばこの問題がつきまとう。この
不具合を招く、2バイト目に5C(16)を持つ文字は俗に「だめ文字」と呼ばれ、この中に
は「ソ」「構」「能」「表」など一般に使用頻度の高い文字も含まれる。

この問題を回避する伝統的な方法として、ソースコード全体をEUCコードやUTF-8などに
変換してからコンパイルしたり実行したりする方法がある（例：Perl のencodingプラ
グマ）。あるいは「ソ」→「ソ\」のように、2バイト目の直前(「直後」と書かれている
情報は誤りで、正しくは「直前」。そうでなければ、だめ文字をエスケープすることが
できない。)にエスケープ文字の5C(16)を記述し、「だめ文字」を文字として正しく認識
させる方法もある（例：PerlのSjisソフトウェア）。あるいは文字または文字列として
扱わず対象文字および内部表現形式を数値の配列として変換を行い、取り扱う際に文字
に復号して扱う方法もある（例：Perl のEncodeモジュール）。

例

「構わない」という文字列がいくつかの掲示板ソフトで「高�槓い」と文字化けする例
が頻繁に見られる。

   構   わ   な   い
  8d5c 82ed 82c8 82a2
  バックスラッシュにあたる5cが抜けると、
  8d   82ed 82c8 82a2
    高    �｢ｯ  ﾈ   い

「い」という文字のところでデコードが再同期され後の文字列は正常に戻る。また同様
に「芸能界」が「芸矧E」に化ける例もある。 

   芸    能   界
  8c7c 945c 8a45
  バックスラッシュにあたる5cが抜けると、
  8c7c 94   8a45
   芸    矧   E

  表 2バイト目に5C(16)を持つ文字一覧 文字 符号(16進) 読み・意味 

  ―   815C ダッシュ
  ソ   835C 片仮名の「そ」
  Ы   845C キリル文字のウィ
  �\/? 875C Windows環境ではローマ数字の9
            Mac環境ではGB(ギガバイト)
  噂   895C うわさ。
  浬   8A5C 海里
  欺   8B5C あざむく。詐欺
  圭   8C5C けい。人名。
  構   8D5C かまえる。構造
  蚕   8E5C カイコ。養蚕
  十   8F5C 漢数字の10。
  申   905C もうす、しん。申請
  曾   915C そ、ひ。「曽」の印刷標準字体（正字体）。曾孫
  箪   925C たん。箪笥
  貼   935C はる。貼付
  能   945C のう。能力
  表   955C あらわす、ひょう。表現
  暴   965C あばれる、ぼう。暴力
  予   975C あらかじめ、よ。予備
  禄   985C ろく。俸禄
  兔   995C と、うさぎ。「兎」の異体字
  喀   9A5C かく。喀血
  媾   9B5C こう。媾和(講和の非書換え)
  彌   9C5C や。弥生の「弥」の正字体
  拿   9D5C だ。拿捕
  杤   9E5C 栃の別体
  歃   9F5C すする、そう、しょう。
  濬   E05C さらう、しゅん。
  畚   E15C ふご、ほん。
  秉   E25C とる、へい。
  綵   E35C あや、さい。
  臀   E45C でん、しり。臀部
  藹   E55C あい。和気藹々
  觸   E65C 触の旧字体
  軆   E75C 体の古字
  鐔   E85C つば。刀の鐔(鍔)。
  饅   E95C まん。饅頭
  鷭   EA5C バン。鳥の名。
  �x   ED5C しゅん。
  �x   EE5C ぎょく。
  �\   FA5C わた、こう。
  �\   FB5C ぎん。

コード空間における文字数制限

Shift_JISの2バイトコードの空間は、第1バイトが81(16)-9F(16)ならびにE0(16)-
FC(16)、第2バイトが40(16)-7E(16)ならびに80(16)-FC(16)である。したがって、
60×188=11280文字、さらに1バイトコードが158文字（スペースを含み、DELは数えず）
であるため、計11438文字となる。

なお、Shift_JIS-2004では、2バイト文字が11233文字、1バイト文字が158文字のため、
合計11391文字を使用している。

Shift_JISにおける「シフト」とは

Shift JISの「シフト」とは、256×256の平面の中で文字を複雑に"ずらす"という意味
の「シフト」である。

ISO-2022-JPは指示シーケンスで漢字とアルファベットを切り替える符号化方式である。
また、EUC-JPは補助漢字と半角カタカナをシングルシフトで一時的に切り替えて使う
符号化方式である。これらの符号化方式で行われている、各文字集合の面をシフトコー
ドによって切り替える操作も「シフト」と呼ばれるが、Shift_JISの「シフト」はこれ
らとは異なる意味である。またビットをずらす操作（ビットシフト）とも異なる。

Shift_JISと区点番号

Shift_JISが符号化の対象にする文字集合は、JIS X 0208である。この符号化文字集合
には、区点番号という概念が存在する。これは、94×94の文字表の行と列の番号の組
である。

Shift_JISでは、8140(16)-FCFC(16)というように、JIS X 0208とはまったく違ったコー
ド体系であるが、JIS X 0208を計算により変形したものであるため、区点番号を用いて
文字のコードポイントを指し示すことが多い。内容については、JIS X 0208の1〜94区
と同じである。ただし、機種依存文字では、シフトJISの符号空間から逆成し、94区の
下方にあたかも120区までが拡張しているかのように扱うことがある。95区以上は、
ISO/IEC 2022に則ったJIS X 0208の構造では存在し得ないので、本来はおかしい。
ベンダ独自の非公式な概念である。なお、JIS X 0213の規格の一部である
Shift_JISX0213符号化表現においては、第1バイトF0(16)以降を2面の文字に割り当てて
おり、百何区というような存在しない区番号は登場しない。

「x-sjis」と「MS_Kanji」

「x-sjis」と「MS_Kanji」はともに、HTMLドキュメントの「charset」の指定に
「Shift_JIS」の別名として使うことが出来る。

「x-sjis」はIANAに「Shift_JIS」という名前を登録する前に、Netscape Navigator
2.0において使っていたエンコーディングの指定子名である。一部のHTML生成ソフトが
自動でこの指定子を組み込んで使っている。そのため認識可能なブラウザがあるが、
「Shift_JIS」に書き換えることを推奨している。

「MS_Kanji」はIANAにより「Shift_JIS」の別名として割り当てられている。


=head1 このソフトウェアでの "ShiftJIS"

このソフトウェアでいう "ShiftJIS" は上記の「コード空間における文字数制限」の
11438文字すべてを扱えることを目指しています。そのためにアルゴリズムは2つ使わ
れています。

* アルゴリズム 1

    オクテットの並びから文字を取り出すとき、1オクテットコードと2オクテットコード
    の区別は第1オクテットコードのみで行われます。第2オクテットは考慮されません。

    1オクテットコード:
      0x00-0x80, 0xA0-0xDF, 0xFD-0xFF

    2オクテットコード:
      第1オクテット  0x81-0x9F, 0xE0-0xEF, 0xF0-0xFC
      第2オクテット  0x00-0xFF (すべて)

    不正な1オクテットコード:
      0x81-0x9F, 0xE0-0xFC
      * 文字列の最終オクテットが2オクテットコードの第1オクテットと同じ場合

以下にコード表を掲載します。

        1オクテットコード表

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

                                 2オクテットコード表
            第1オクテット                                    第2オクテット


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


文字列の最終オクテットが2オクテットコードの第1オクテットと同じ場合

不正であっても無視されたり、自動的に削除されることはありません。
例えば、Esjis::chop はこのオクテットを返します。

    *不正な* 1オクテットコード

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


=head1 ベンダ別 SJIS コード一覧

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
 
 日本語情報処理(ISBN 4-89052-708-7)より
 
 Hewlett-Packard HP-15          0x00-0x7F, 0xA1-0xDF, (0x80-0xA0, 0xE0-0xFE)(0x21-0x7E, 0x80-0xFF)


* アルゴリズム 2

    アルゴリズム 1 にも関わらず、tr/// により文字の範囲を指定された場合は以下の文字
    のみが有効となります。

    1オクテットコード:
      0x00-0x80, 0xA0-0xDF, 0xFD-0xFF

    2オクテットコード:
      第1オクテット  0x81-0x9F, 0xE0-0xEF, 0xF0-0xFC
      第2オクテット  0x40-0x7E, 0x80-0xFC

例えば、[\x81\x00-\x82\xFF] と書かれた場合は [\x81\x82][\x40-\x7E\x80-\xFC] を
意味します。

以下にコード表を掲載します。

        1オクテットコード表

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


                                 2オクテットコード表
            第1オクテット                                    第2オクテット

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


=head1 目標としているもの

プログラミング Perl 第3版 VOLUME 1 (ISBN 4-87311-096-3)
15章 Unicode 参照

Unicode サポートが perl に導入される以前は、eq 演算子は、2つのスカラー変数によっ
て表されたバイト列をただ比べていました。perl5.8 以降、eq は、2つのバイト列を比べる
と同時に UTF8 フラグを考慮します。

/* 以下は無理に理解しようとしなくとも構わない。 */

  perl5.8 以降の情報処理モデル
 
    +----------------------+---------------------+
    |     Text strings     |                     |
    +----------+-----------|    Binary strings   |
    |  UTF-8   |  Latin-1  |                     |
    +----------+-----------+---------------------+
    | UTF8     |            Not UTF8             |
    | Flagged  |            Flagged              |
    +--------------------------------------------+
    http://perl-users.jp/articles/advent-calendar/2010/casual/4
 
    (どうして Latin-1 だけ特別扱いするのでしょうか？)

結果的にこの変更は、過去のスクリプトと新しいスクリプトの間に大きな溝を作りました。
もはや両者のスクリプトはコードを互いに再利用することができません。また新しい方法は
プログラマに負担をかけるため、現存するスクリプトがすべて置き換わるのはまだまだ時間
がかかると思われます。

新しい方法で問題となっていることは UTF8 フラグは実際の文字列の符号化と一致しないこと
です。自分で作ったスクリプトはそのデバッグの前に動的にふるまう UTF8 フラグについて
デバッグしなければなりません。

  UNIX/C言語的な perl3 以降、あるいはこのソフトウェアによる情報処理モデル
 
    +--------------------------------------------+
    |       Text strings as Binary strings       |
    |       Binary strings as Text strings       |
    +--------------------------------------------+
    |        Not UTF8 Flagged, UNIX/C-ism        |
    +--------------------------------------------+

そこで、この方法に戻すことによってどのように解決されるのか、ほこりにまみれた古い
Programming Perl, 3rd ed. (邦訳 プログラミングPerl 第3版) の402ページをもう一度
ひもといてみましょう・・・。

理想的には、以下の5つのゴールを実現しようと考えています。

=over 2

=item * ゴール1

    既存のバイト指向のスクリプトは、以前扱っていた既存のバイト指向のデータに対し
    て、以前と同様に動作すべきである。

    この目標はこのソフトウェアが、utf8 プラグマのように perl に対する追加機能で
    あることによって達成されています。何も付け加えない perl はこれまで通りの動作
    をするはずです。

=item * ゴール2

    既存のバイト指向のスクリプトは、何も手を加えずに、(そうすることが適切であれば)
    新しい文字指向のデータに対しても動作するようになるべきである。

    組込み関数 length, substr, index, rindex, pos などの文字列の長さや位置を扱う
    ものは今までどおりに1オクテットを 1 と数えます。この部分について何も手は加
    わりません。2オクテットコード1文字の length は 2 になります。

    一方、スクリプト中の正規表現は、マルチバイト文字のためのアンカーリング処理を
    記述する必要がありますが、それをあなたに代わってこのソフトウェアが行います。

    ゴール1とゴール2の内容を図示します。

                                   GOAL#1  GOAL#2
                            (a)     (b)     (c)     (d)     (e)
          +--------------+-------+-------+-------+-------+-------+
          | data         |  Old  |  Old  |  New  |  Old  |  New  |
          +--------------+-------+-------+-------+-------+-------+
          | script       |  Old  |      Old      |      New      |
          +--------------+-------+---------------+---------------+
          | interpreter  |  Old  |              New              |
          +--------------+-------+-------------------------------+
          Old --- 既存のバイト指向
          New --- 新しい文字指向

    データ、スクリプト、インタプリタの新・旧に関して、上の (a) から (e) までの
    組合せがあります。この文書が書かれた当時に存在しなかった Encode モジュールと
    このソフトウェア、および存在していた JPerl を書き足してみましょう。

                            (a)     (b)     (c)     (d)     (e)
                                          JPerl,japerl    Encode,Sjis
          +--------------+-------+-------+-------+-------+-------+
          | data         |  Old  |  Old  |  New  |  Old  |  New  |
          +--------------+-------+-------+-------+-------+-------+
          | script       |  Old  |      Old      |      New      |
          +--------------+-------+---------------+---------------+
          | interpreter  |  Old  |              New              |
          +--------------+-------+-------------------------------+
          Old --- 既存のバイト指向
          New --- 新しい文字指向

    JPerl がとても優れている理由は (c) の位置にあるからです。すなわち日本語処理
    を行うためにスクリプトに特別な記述を行う必要がありません。
    (japerl がその役目を引き継げますように！)

=item * ゴール3

    スクリプトは、新しい文字指向モードでも、以前のバイト指向モードと同じスピー
    ドで動作すべきである。

    それは無理。だって、以下の時間が必要だもの。

    (1) スクリプトをエスケープして、バイト指向 Perl で扱えるように処理するための
     時間。ただし、処理されたスクリプトは保存できるため、次回からはこの時間をなく
     すことも可能です。

    (2) エスケープされたスクリプトがマルチバイトアンカーリング処理を行いながら、
     正規表現を実行する時間。

    すでに存在する ASCII データは1文字が1オクテットにパックされています。その
    データと互換性を保ちながら文字種を増やそうとすると、ISO-2022 のようにエスケー
    プシーケンスが必要であったり、ShiftJIS や UTF-8 のように "エスケープビット"
    が必要になったりします。これらのエスケープ処理が加わるため、以前と同じスピー
    ドで動作すべきであるというのは無理な目標だと思います。

    いつの日か Larry Wall さんにこのゴールのことを訊ねてみたいです(エレベーターの
    中で)。

=item * ゴール4

    Perl は、バイト指向の Perl と文字指向の Perl に枝分かれせずに、1つの言語で
    あり続けるべきである。

    JPerl は Perl 言語を分岐させないようにするために、インタプリタを分岐させました。
    でも Perl コアチームはインタプリタの分岐を望んでいないのでしょう。結果的にゴー
    ル4とはうらはらにPerl言語が分岐することになり、Perlコミュニティは縮小しました。

    バイト指向の perl はすでにバイナリデータを扱うことができるため、文字指向の
    perl を別立てで作成する必要はありません。またこのソフトウェアは、単なるアプリ
    ケーションプログラムなので、Perl コアチームから睨まれることもないでしょうし、
    誘われる心配もありません。

    それに問題を Perl スクリプトで解決しようとするなら、Perl コミュニティのサポート
    を得られるでしょう。

    Sjisソフトウェアは、1つの言語・1つのインタプリタを実現します。

=item * ゴール5

    JPerl ユーザが Perl で JPerl を保守できるようになる。

    JPerl がいつもあなたのそばにありますように ...

=back

Programming Perl, 3rd ed. が書かれた頃には、UTF8 フラグは生まれておらず、Perl は
簡単な仕事を簡単にできるように設計されていました。このソフトウェアは当時のような
プログラミング環境を提供します。

=head1 Perlの主張

=head2 初めてのPerl xviiiより

  コンピュータ科学者の中には(特に還元主義者たちは)否定する者もいるのだが、
 人間というものは変わった形の心を持っているものなのだ。心の形は平坦ではない
 ので、ひどく歪めることなしには平らな面に写像することはできない。しかし過去
 20年以上にわたって、コンピュータ還元主義者たちは直交性の神殿に跪き、次いで
 立ち上がると、彼らの信奉する禁欲的な清廉さを誰かれとなく説いて回った。

  彼らの熱烈だが見当違いの願望は、君たちの心を彼らの思考様式に合うように作り
 変えて、君たちの思考パターンをある種の超越次元の平原に押し込めることだった。
 平面に押し込まれるということは、まったく喜びのない存在になってしまうことに
 等しい。

=head2 初めてのPerl 第6版より

  もしこれを頭痛の種だと思うなら、その通りです。誰もこのような状況を好んで
 いるわけではありません。でも、Perlは入力とエンコーディングの扱いに関して、
 ベストを尽くしてくれます。もし歴史をリセットしてやり直せるのなら、その時には
 こんなに多くの誤りを犯さないのですが。

=head2 実用Perlプログラミング 第2版より

 とはいえPerlでUnicodeデータを処理する際に覚えておかなければならない最も重要な
 ことは、Unicodeデータを使用しない場合(どのファイルもUTF-8としてマークされて
 おらず、かつUTF-8ロケールを使用していない場合)、幸いPerl5.005_3ランドにい
 るふりをできるということです。Unicode機能を明示的に使用していない限り、
 Unicode機能があなたのコードを妨げることはありません。Unicodeを取り入れながら
 旧式のバイト対応スクリプトを妨害しないというこの2つの目標が妥協案と混乱をもた
 らすこともありますが、正しいことを黙って行う、それがPerlの方式であり、Perlの方
 針でもあります。

=head1 Sjisソフトウェア誕生のはなし

 Perl3 以降の Perl はバイナリデータを処理するスクリプトを記述できます。
 それは簡単に言えば、どんなデータでも処理できるということです。
 
 データというと日本国内では、もともと1981年にCP/M-86の内部処理用として考案
 されたシフトJIS符号化方式が、情報交換用、さらには情報蓄積用として広く使わ
 れています。だから、そのデータを処理するスクリプトをシフトJISで作成するの
 はごく自然な選択です。
 
 でも、残念なことに perl インタプリタはシフトJISのPerlスクリプトをそのまま
 では実行することができないのです。
 
 しかしながら(あなたの書いた) Perl スクリプトはデータであることは間違いない
 ので、(別に用意した) Perl スクリプトでそれを処理し、perl インタプリタで実行
 できるスクリプトに変換することなら、できるのではないでしょうか？
 
 言語、インタプリタ、スクリプト、それぞれのテキスト、バイナリの扱いの可否を
 もう一度まとめてみましょう。ここではシフトJISをバイナリに分類しています。
 
 ---------------------------------------------------
                   対象        テキスト  バイナリ
 ---------------------------------------------------
 Perl言語          スクリプト  可        可
 perlインタプリタ  スクリプト  可        不可
 Perlスクリプト    データ      可        可
 ---------------------------------------------------
 
 perl インタプリタはシフトJISで記述されたスクリプトを実行できないけれど、
 Perl 言語には本来、そのような制限があるわけではありません。
 
 要点は４つあります。
 
 １．スクリプトの符号化方式
 
 ひとつのスクリプト中に２つ以上の符号化方式でリテラル文字列を記述する場合、
 実際に使う符号化方式は１つのみとし、残りは16進エスケープを使って記述する
 とよいでしょう。
 長期的な運用・保守を考えた場合、複数の符号化方式が混在したスクリプトを編
 集できる環境を前提にはできません。
 
 ２．入出力データの符号化方式
 
 レコードごとに、フィールドごとに符号化方式が異なるものが混在する、さらに
 はそれらの符号化方式が常に明確とは限らず、データそのものから推測しなけれ
 ばならない、というのはワールド・ワイド・ウェッブの分野に限られています。
 いつの頃からかPerlはこの場合を "一般" として扱ってしまっているので、現実
 世界で一般的な「ただ単に文字列を出力したい」というようなことが難しくなり
 ました。
 一般的なものを一般的に扱い、例外を例外として扱うという Perl 本来の形に戻
 せば、"Easy jobs easy" を取り戻せるはずです。
 
 ３．変数のデータ型
 
 Perlの変数は、データ型を宣言して作り分けたりはしません。データ型を意識し
 たい場面では、演算子を使い分けます。
 その作法に合わせるならば、バイト列と文字列は作り分けるのではなく、関数の
 使い分けをするほうが全体の統一性があります。
 
 ４．encode/decode と convert の違い
 
 encode/decode は言語処理系の都合に合わせて、アプリケーションプログラマが
 記述しなければなりません。プログラマはツールを使う側からツールに使われる
 側になります。とくに「外部に出力できない状態が正しい状態」というのはデ
 バッグを困難にしています。
 一方で、jcode.pl の convert はプログラマが必要に応じて記述するものです。
 convert 後のデータが読めるのであれば、それは「正しい」プログラムです。
 
 このソフトウェアはそのようなアイディア、前提条件、目標によって作り始めら
 れました。

=head1 参考文献、リンク

 Perlプログラミング
 Larry Wall, Randal L.Schwartz, 近藤 嘉雪 訳
 1993年2月 発行
 ISBN 4-89052-384-7
 http://www.context.co.jp/~cond/books/old-books.html

 プログラミングPerl 改訂版
 By Larry Wall, Tom Christiansen, Randal L. Schwartz, 近藤 嘉雪 訳
 1997年12月 発行
 759ページ
 ISBN 4-900900-48-6
 http://www.oreilly.co.jp/out/pperl/index.htm

 プログラミングPerl 第3版 VOLUME 1
 By Larry Wall, Tom Christiansen, Jon Orwant, 近藤 嘉雪 訳
 2002年09月 発行
 756ページ
 ISBN 4-87311-096-3
 http://www.oreilly.co.jp/books/4873110963/

 プログラミングPerl 第3版 VOLUME 2
 By Larry Wall, Tom Christiansen, Jon Orwant, 近藤 嘉雪 訳
 2002年09月 発行
 680ページ
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

 Perlクックブック 第2版 VOLUME 1
 By Tom Christiansen, Nathan Torkington, Shibuya Perl Mongers 監訳, 株式会社ドキュメントシステム 訳
 2004年09月 発行
 752ページ
 ISBN 4-87311-202-8
 http://www.oreilly.co.jp/books/4873112028/

 Perlクックブック 第2版 VOLUME 2
 By Tom Christiansen, Nathan Torkington, Shibuya Perl Mongers 監訳, 株式会社ドキュメントシステム 訳
 2004年09月 発行
 464ページ
 ISBN 4-87311-203-6
 http://www.oreilly.co.jp/books/4873112036/

 Perlクイックリファレンス
 By Stephen Spainhour, Ellen Siever, Nathan Patwardhan, 近藤 嘉雪, 台場 圭一 監訳
 2000年03月 発行
 784ページ
 ISBN 4-900900-72-9
 http://www.oreilly.co.jp/books/4900900729/

 初めてのPerl Win32システム
 Randal L. Schwartz, Erik Olson, Tom Christiansen 著, 有馬 三郎 監訳, 石原 智浩 訳
 1998年11月 発行
 348ページ
 ISBN 4-900900-79-6
 http://www.oreilly.co.jp/books/4900900796/

 初めてのPerl 第5版
 Randal L. Schwartz, Tom Phoenix, brian d foy 著
 2009年10月24日 発売
 424ページ
 ISBN 978-4-87311-427-9
 http://www.oreilly.co.jp/books/9784873114279/

 初めてのPerl 第6版
 Randal L. Schwartz, brian d foy, Tom Phoenix 著, 近藤 嘉雪 訳
 2012年07月 発行
 488ページ
 ISBN 978-4-87311-567-2
 http://www.oreilly.co.jp/books/9784873115672/

 実用 Perlプログラミング 第2版
 Simon Cozens 著, 菅野 良二 訳
 2006年03月 発行
 320ページ
 ISBN 4-87311-280-X
 http://www.oreilly.co.jp/books/487311280X/

 Perlリソースキット - UNIX版
 Futato, Irving, Jepson, Patwardhan, Siever 共著, イエローレーベル 山本 浩 訳
 ISBN 4-900900-65-6
 http://www.oreilly.co.jp/out/presuni/

 Perlの国へようこそ
 前田薫, 小山裕司, 斉藤靖, 布施有人 共著
 1993年4月1日 発行
 280ページ
 ISBN 4-7819-0697-4
 http://www.saiensu.co.jp/?page=book_details&ISBN=ISBN4-7819-0697-4
 
 新Perlの国へようこそ Perl5対応版
 斉藤靖, 小山裕司, 前田薫, 布施有人 共著
 1996年4月1日 発行
 368ページ
 ISBN 4-7819-0795-4
 http://www.saiensu.co.jp/?page=book_details&ISBN=ISBN4-7819-0795-4
 
 まるごとPerl! Vol.1
 小飼弾, 宮川達彦, 伊藤直也, 川合孝典, 水野貴明, 加藤 敦, 石垣憲一, 栗原由樹, まかまか, 池邉智洋, ma.la, 竹迫良範, ささだこういち, 可知豊, 秋山隆道, 久保元治, 滝澤隆史, 歌代和正 著
 2006年08月25日 発売
 232ページ
 ISBN 978-4-8443-2289-4
 http://www.impressjapan.jp/books/2289

 モダンPerl入門
 牧大輔著
 2009年02月09日
 344ページ
 ISBN 10: 4798119172 | ISBN 13: 978-4798119175
 http://www.seshop.com/product/detail/10250/

 WEB+DB PRESS Vol.70
 2012年08月24日 発売
 200ページ
 ISBN 978-4-7741-5190-8
 http://gihyo.jp/magazine/wdpress

 日本語情報処理
 Understanding Japanese Information Processing
 By Ken Lunde, 春遍 雀來, 鈴木 武生 訳
 1995年8月 発行
 496ページ
 ISBN 4-89052-708-7
 http://www.fukkan.com/vote.php3?no=4293

 CJKV日中韓越情報処理
 Chinese, Japanese, Korean & Vietnamese Computing
 By Ken Lunde, 小松 章, 逆井 克己 訳
 2002年12月 発行
 1172ページ
 ISBN 4-87311-108-0
 http://www.oreilly.co.jp/books/4873111080/

 詳説 正規表現 第2版
 By Jeffrey E. F. Friedl, 田和 勝 訳
 2003年05月 発行
 464ページ
 ISBN 4-87311-130-7
 http://www.oreilly.co.jp/books/4873111307/

 詳説 正規表現 第3版
 By Jeffrey E. F. Friedl, 株式会社ロングテール／長尾 高弘 訳
 2008年04月 発行
 528ページ
 ISBN 978-4-87311-359-3
 http://www.oreilly.co.jp/books/9784873113593/

 正規表現クックブック
 Jan Goyvaerts, Steven Levithan 著, 長尾 高弘 訳
 2010年04月 発行
 552ページ
 ISBN 978-4-87311-450-7
 http://www.oreilly.co.jp/books/9784873114507/

 JIS漢字字典
 芝野 耕司 編著
 1456 頁
 ISBN 4-542-20129-5
 http://www.webstore.jsa.or.jp/lib/lib.asp?fn=/manual/mnl01_12.htm

 インターネット時代の文字コード
 小林 龍生, 安岡 孝一, 戸村 哲, 三上 喜貴 編
 285 項
 ISBN 4-320-12038-8
 http://www.kyoritsu-pub.co.jp/bookdetail/9784320120389

 文字符号の歴史―欧米と日本編―
 安岡 孝一, 安岡 素子 著
 2006年2月10日 発行
 288ページ
 ISBN 4-320-12102-7
 http://www.kyoritsu-pub.co.jp/bookdetail/9784320121027

 文字符号の歴史 アジア編
 三上 喜貴 著
 2002年3月20日 発行
 377ページ
 ISBN 4-320-12040-X
 http://www.amazon.co.jp/gp/product/432012040X

 Unicode標準入門
 トニー・グラハム 著, 乾 和志, 海老塚 徹 訳, 関口 正裕 監修
 2001年5月29日 発行
 455ページ
 ISBN 4-7981-0030-7
 http://www.seshop.com/product/detail/2276/

 UnicodeによるJIS X 0213実装入門
 田丸 健三郎 著
 2008年8月25日 発行
 200ページ
 ISBN 978-4-89100-608-2
 http://ec.nikkeibp.co.jp/item/books/A04500.html

 Unicode IVS/IVD入門
 田丸 健三郎, 小林 龍生 著
 2013年03月04日 発行
 336ページ
 ISBN 978-4-82229-483-0
 http://store.nikkeibp.co.jp/item/books/P94830.html

 UNIX MAGAZINE
 1993年8月号
 172ページ
 T1008901080816 雑誌08901-8
 http://ascii.asciimw.jp/books/books/detail/978-4-7561-5008-0.shtml

 LINUX日本語環境
 山形浩生, Stephen J. Turnbull, Craig 小田, Robert J. Bickel 著
 2000年06月 発行
 376ページ
 ISBN 4-87311-016-5
 http://www.oreilly.co.jp/books/4873110165/

 MacPerl入門
 Vicki Brown, Chris Nandor 著, (株)コスモ・プラネット 訳
 1999年03月 発行
 399ページ
 ISBN 4-7561-3068-2

 Macintoshデータ活用術
 石田 豊 著
 1995年2月 発行
 230ページ
 ISBN 4-89563-408-6

 MPWプログラミング講座
 Handmade Intelligence 著
 1992年8月 発行
 346ページ
 ISBN 4-7561-0963-2

 セキュアWebプログラミングTips集
 佐名木 智貴 著
 2008年3月 発行
 421ページ
 ISBN 10: 4883732568
 ISBN 13: 978-4883732562

 Windows NTシェルスクリプト
 Tim Hill 著, 光田秀 訳
 1998年10月6日 発行
 448ページ
 ISBN 4-7973-0658-0
 http://books-support.sbcr.jp/isbn/macmillan/ntwrkshp/index.htm

 マイクロソフト公式解説書 Microsoft Windows コマンドライン活用ガイド
 2004年12月27日 発行
 500ページ
 ISBN 4-89100-438-X
 http://ec.nikkeibp.co.jp/item/books/587500.html

 前田 薫さん, Perlの歴史 Perl 1,2,3,4
 http://www.slideshare.net/KaoruMaeda/perl-perl-1234

 成瀬さん, 「文字列」について
 http://d.hatena.ne.jp/nurse/20141107#1415355181

 西尾 泰和さん, 「文字列を文字の列とみなす単純化」ってどういうこと？解説編
 http://d.hatena.ne.jp/nishiohirokazu/20141107/1415286729

 成瀬さん, 日本語EUCの歴史 22:00
 http://d.hatena.ne.jp/nurse/20090308/1236517235

 Mike Whitakerさん, Perl And Unicode
 http://www.slideshare.net/Penfold/perl-and-unicode

 Ricardo Signesさん, Perl 5.14 for Pragmatists
 http://www.slideshare.net/rjbs/perl-514-8809465

 Ricardo Signesさん, What's New in Perl? v5.10 - v5.16
 http://www.slideshare.net/rjbs/whats-new-in-perl-v510-v516

 長谷川 勇さん, 国際化正規表現ライブラリなど
 http://lc.linux.or.jp/lc2001/papers/dfa-i18n-paper.pdf
 http://lc.linux.or.jp/lc2002/papers/hasegawa0918h.pdf
 http://lc.linux.or.jp/lc2002/papers/hasegawa0918p.pdf
 http://www.j-tokkyo.com/2003/G06F/JP2003-242179.shtml

 前田 泰成さん, マルチバイト文字セット用正規表現コンパイラ構成方法及びプログラム 
 http://patent.astamuse.com/ja/published/JP/No/2007102744

 YAMAGAKI Norio, マルチバイト処理向け文字列照合用有限オートマトン生成システム
 http://www.wipo.int/pctdb/ja/wo.jsp?WO=2009116646&IA=JP2009055515

 Tokyo-pm 保存書庫
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

=head1 謝辞

残念ながら、感謝するすべての人をここに書くことができません。そうだからといって、それ
を理由にして以下の方々への感謝は省略するわけにはいかないでしょう。

 山下 良蔵さん, シフトJISのデザインの話
 ttp://furukawablog.spaces.live.com/Blog/cns!1pmWgsL289nm7Shn7cS0jHzA!2225.entry (リンク切れ)
 ttp://shino.tumblr.com/post/116166805/1981-us-jis
 (先頭に 'h' を付加してアクセスしてください)
 http://www.wdic.org/w/WDIC/%E3%82%B7%E3%83%95%E3%83%88JIS
 
 日本語情報処理を行う際、いまもってシフトJISほど実用的な符号化方式はありません。
 その理由は3つあると思います。
 
 1. 既存の半角カタカナのデータとそのまま共存できる。過去の資産を現在に継承できると
   いうことは、現在の資産を未来へ継承できることを示唆しています。
 2. codepoint と grapheme の単位が一致する。このおかげでシステムを作るひとと使うひと
   の間で齟齬が発生しません。
 3. メモリ上の占有幅と表示・印字上の占有幅が一致する。この工夫が画面設計、帳票設計、
   それにカーソルの移動処理に役立ちます。
 
 1981年の時点で、ここまで考えていた山下さんはハッカーと呼ぶにふさわしいでしょう。

 Larry Wall さん, Perl
 http://www.perl.org/
 
 Perl が正規表現によってバイナリデータを扱えることで、このソフトウェアが成立してい
 ます。バージョン間の互換性の高さにも助けられました。正規表現のメタ文字や各種クォー
 トのデリミタは、解決すべき対象である一方で、解決する際の手段としても役立ちます。
 もし Perl がなければ、問題も存在せず、またそれを解決する喜びもない退屈な人生を送
 るところでした。
 
 だから Larry Wall さんにはとっても感謝しています！

 歌代 和正さん, jcode.pl
 ftp://ftp.iij.ad.jp/pub/IIJ/dist/utashiro/perl/
 http://log.utashiro.com/pub/2006/07/jkondo_a580.html
 
 最初に Perl に出会ったのは歌代さんの書かれた UNIX MAGAZINE の記事でした。ファイル
 テスト演算子 -T、-B の機能を実現するコードは記事に書かれたものをほぼそのまま使って
 います。また日本語情報処理を執筆されたあの Ken Lunde さんの先生でもあるし、Jeffrey
 E. F. Friedl さんの詳説正規表現の監訳もされていて、このソフトウェアの周囲には常に
 歌代さんが登場します。
 
 Tokyo.pm のメーリングリストでは、新しい機能を実現するために新たに実装をする場合でも、
 過去に作られたソフトウェアと同一のインタフェースにするという、よいアイディアを教わ
 りました。
 
 先ほど周囲と言いましたが、実はそれは当然のことで、このソフトウェアは jcode.pl の
 ソースをもとにして作成されたからです。だから何をどう考えても歌代さんなしで、このソ
 フトウェアが生まれることはなかったと思うのです。

 Jeffrey E. F. Friedl さん, 詳説正規表現
 http://regex.info/
 
 詳説正規表現(第2版)をはじめて読んだとき、何が書いてあるのか全く理解できず、てっきり
 英語版を買ってしまったのではないかと疑ったほどでした。しかしながら P.340 Matching
 Nested Constructs with Embedded Code が自分が必要としているコードだと気づいたときは
 とても嬉しかったのを覚えています(よく見たら英語版でした)。
 
 そんなわけでネストした括弧を処理できるのは、文枝(Fumie)さんのおかげです。
 (私の感謝が伝わりますように...。)

 Ken Lunde さん, 日本語情報処理、CJKV日中韓越情報処理
 http://www.fukkan.com/vote.php3?no=4293
 http://www.oreilly.co.jp/books/4873111080/
 
 「日本語情報処理」「CJKV日中韓越情報処理」を読んで文字集合規格と符号化方式を学び、
 文字化けの原因について理解が深まりました。さらに JPerl の説明の箇所にて「よりよい
 可搬性(optimal portability)」という言葉から、アプリケーションプログラムと、言語
 処理系のふたつの可搬性を同時に解決すべきだということに気づかせてもらいました。
 
 Appendix W: Perl Code Examples の中の CJKV Encoding Templates、Multiple-Byte
 Anchoring、Multiple-Byte Processing もとても参考になりました。
 
 私のささやかなハックとして、ここで Jeffrey E. F. Friedl さんに感謝します。

 貞廣 知行さん, Shift-JISテキストを正しく扱う
 http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
 
 「Shift-JISテキストを正しく扱う」で、PerlでShiftJISを扱うときのノウハウを教えて
 頂き、ありがとうございます。このサイトの内容をもとに、スクリプト中のリテラル文字列
 の「ソ」を「ソ\」に変換するフィルタプログラムを作るところから始め、例外を少しずつ
 書き加えていくことでこのソフトウェアが作られていきました。
 
 「長い文字列に対する正規表現検索」についても実装に活かすことができました。
 もしこのサイトを見なかったのなら、Sjisソフトウェアを作れたかどうか定かではありませ
 ん。

 まつもと ゆきひろさん, Ruby on Perl(s)
 http://www.rubyist.net/~matz/slides/yapc2006/
 
 YAPC::Asia 2006 Tokyo "Ruby on Perl(s)" で「CSIは不可能じゃない」ことを分かりやす
 く教えてもらいました。今度 Ruby 版を作ることになったら、よろしくお願いします。

 藤岡 和夫さん, jperlユーザーのために
 http://homepage1.nifty.com/kazuf/jperl.html
 
 ver.0.71 を作成する際、私が直接利用できない環境でのテストのために60回ものメールの
 やり取りをし、丁寧にデバッグに付き合って頂きました。ありがとうございました。

 Bruce. さん, Unicode in Perl
 http://www.rakunet.org/tsnet/TSabc/18/546.html

 和泉 宏明さん, WindowsでPerl 5.8/5.10を使うモンじゃない
 http://dl.dropbox.com/u/23756062/perlwin.html
 https://sites.google.com/site/hiroa63iz/perlwin

 塚本 牧生さん, Perlメモ/Windowsでのファイルパス
 http://digit.que.ne.jp/work/wiki.cgi?Perl%E3%83%A1%E3%83%A2%2FWindows%E3%81%A7%E3%81%AE%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%91%E3%82%B9

 chaichanPaPaさん, シフトJIS漢字のファイル名にマッチしてみる
 http://d.hatena.ne.jp/chaichanPaPa/20080802/1217660826

 鈴木 紀夫さん, Jperl
 http://homepage2.nifty.com/kipp/perl/jperl/

 渡辺 博文さん, Jperl
 http://www.cpan.org/src/5.0/jperl/
 http://search.cpan.org/~watanabe/
 ftp://ftp.oreilly.co.jp/pcjp98/watanabe/jperlconf.ppt
 
 The Perl Confernce Japan (1998)でJperl開発の経緯を聞かせてもらいました。JPerl から
 は、日本語対応版の Perl はどのようなものが使いやすいのかを教わりました。tr///b も
 ord も reverse もみんな JPerl の動作を真似しました(おかげでテストプログラムまで
 もらうことができました)。
 
 私も渡辺さんのときと同じく誰かが書くんじゃないかと(今も)待ち続けているわけですが、
 待っている間に Perl でプロトタイプを作っておきました。待つのは楽しいことです。

 Chuck Houpt さん, 野津 美智子さん, MacJPerl
 http://habilis.net/macjperl/index.j.html

 石垣 憲一さん, Pod-PerldocJp, モダンPerlの世界へようこそ
 http://search.cpan.org/dist/Pod-PerldocJp/
 http://gihyo.jp/dev/serial/01/modern-perl/0031
 http://gihyo.jp/dev/serial/01/modern-perl/0032
 http://gihyo.jp/dev/serial/01/modern-perl/0033
 
 「モダンPerlの世界へようこそ」の連載がとても参考になります。特に第31回から第33回は
 JPerl に関連した内容で、技術的にも歴史的にもとても緻密な記事です。
 
 このソフトウェアがモダンPerlへの架け橋として役立てば幸いです。

 藤 吾郎さん, Perl Hackers Hub 第16回 Perl内部構造の深遠に迫る(2)
 http://gihyo.jp/dev/serial/01/perl-hackers-hub/001602

 小飼 弾さん, Encode モジュール
 http://search.cpan.org/dist/Encode/
 http://www.archive.org/details/YAPCAsia2006TokyoPerl58andUnicodeMythsFactsandChanges (動画)
 http://yapc.g.hatena.ne.jp/jkondo/ (音声)
 
 YAPC::Asia 2006 Tokyo "Perl5.8 and Unicode: Myths, Facts and Changes" で Perl5.8
 での変更点を詳しく教えてもらいました。CPAN の face icon はこのスライドに出てくる
 Perl5.6 = a city without bridges の画像からヒントを得ています。これは5.005シティ
 からエスケープするためのブリッジを表わしています。

 高橋 正剛さん, JPerl Wiki
 http://ja.jperl.wikia.com/wiki/JPerl_Wiki

 Juerd さん, Perl Unicode Advice
 http://juerd.nl/site.plp/perluniadvice

 daily dayflower さん, 2008-06-25 perluniadvice
 http://d.hatena.ne.jp/dayflower/20080625/1214374293

 Jesse Vincent さん, Compatibility is a virtue
 http://www.nntp.perl.org/group/perl.perl5.porters/2010/05/msg159825.html

=cut

# いかがでしたか？楽しんでいただけましたか？
