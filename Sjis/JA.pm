1;
__END__

=pod

=encoding Shift_JIS

=head1 ソフトウェア名称

Sjis-JA - Source code filter to escape ShiftJIS (Japanese document)

=head1 概要

  ● 使い方: A

    スクリプト ShiftJIS_script.pl の中に以下を記述して...
      use Sjis;
      use Sjis version;          --- Sjis.pm のバージョンチェックを行う場合
      use Sjis qw(ord reverse);  --- ord, reverse の拡張機能を使う場合
      use Sjis version qw(ord reverse);

      ※ no Sjis; は利用できません。

    コマンドプロンプトで以下のいずれかで実行する
      perl      ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      perl5     ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      perl55    ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      perl56    ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      perl58    ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      perl510   ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      perl512   ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      perl514   ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      perl516   ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      perl64    ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      aperl58   ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      aperl510  ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      aperl512  ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      aperl514  ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      aperl516  ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      sperl58   ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      sperl510  ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      sperl512  ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      sperl514  ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32
      sperl516  ShiftJIS_script.pl  wild*  *card  and  '*quote*'  on MSWin32

      ? * を使ってワイルドカードの指定ができます
      ' 〜 ' を使ってクォートすることができます

  ● 使い方: B

    コマンドプロンプトで以下のように実行する

      C:\>perl  Sjis.pm  ShiftJIS_script.pl  >  Escaped_script.pl.e
      C:\>perl  Escaped_script.pl.e

      ShiftJIS_script.pl  --- ShiftJIS で書かれたスクリプト
      Escaped_script.pl.e --- エスケープされたスクリプト

  ● 使える関数
      Sjis::ord(...);
      Sjis::reverse(...);
      Sjis::length(...);
      Sjis::substr(...);
      Sjis::index(...);
      Sjis::rindex(...);
      CORE::chop(...);
      CORE::ord(...);
      CORE::reverse(...);
      CORE::index(...);
      CORE::rindex(...);

  ● Perl5.6 エミュレーション(perl5.005の場合)
      use warnings;
      use warnings::register;

  ● Perl5.16 エミュレーション
      use feature qw(fc);

  ● 以下はダミー関数として
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

=head1 要約

これまでの歴史からはじめましょう。ShiftJIS のサポートは jperl 4.019+1.3 から始
まりました。これによって chop() などの関数や正規表現を複雑な日本の文字に対して
適用できるようになりました。

Perl5.8 以降は Encode モジュールによってマルチリンガル処理がサポートされたため、
jperl は不要になったと言われていました。

ですが、それは本当のことだったでしょうか？

日本国内において、汎用大型コンピュータの入出力、パーソナルコンピュータの内部コー
ドおよび入出力、さらには携帯電話に至るまで、ShiftJIS を基本とした文字コード
が広く使われています。このソフトウェアはその ShiftJIS を直接扱います。そして
Latin-1 を扱いません。そのため UTF8 フラグは使いません。
このソフトウェアは Shift_JIS, Windows-31J, CP932, MacJapanese, SJIS(R90),
Shift_JISX0213, Shift_JIS-2004 などいわゆる ShiftJIS の亜種を扱うことができます。
この文書ではこれらを総称して ShiftJIS という語で表しています(「_」がない)。

あなたもエンコードの問題からエスケープしませんか？

=head1 もうひとつの未来(みらい)

JPerl はとても優れたソフトウェアです。おっと、ここでいう JPerl は日本語対応版の
Perl のことで、Java や JVM とは関係がありません。そんなわけで、このソフトウェア
は衝突回避のために Sjis という名前にしました。その後、トップレベルの名前を避ける
ため Char::Sjis という名前でディストリビューションを作成するようにしましたが、
従来の Sjis.pm, Esjis.pm は引き続き使えるようにしています。

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
ません。

成功したソフトウェアから以下のことを学んでこのソフトウェアは作成されました。

=over 2

=item * Perl4 から Perl5 のような上位互換性

=item * jcode.pl のような最大限の移植性

=item * JPerl のようにシフトJISをそのまま扱い、UTF8フラグを使わない

=item * Encode モジュールのように Perl は1つのインタプリタのまま

=item * Ruby のように文字集合独立な手法

=item * Perl 自身のように TMTOWTDI(There's more than one way to do it)

=back

さあ、JPerl の未来によってもうひとつの未来を作りましょう。

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

=head1 インストール方法(makeを使う場合)

   perl Makefile.PL
   make test
   make install

=head1 インストール方法(makeを使わない場合)

   perl pMakefile.pl         --- pMakefile.pl が pmake.bat を生成します
   pmake.bat
   pmake.bat test

   pmake.bat install          --- 現在使用中の perl 環境にインストールします
   perl55   pmake.bat install --- perl5.005 環境にインストールします
   perl56   pmake.bat install --- perl5.006 環境にインストールします
   perl58   pmake.bat install --- perl5.008 環境にインストールします
   perl510  pmake.bat install --- perl5.010 環境にインストールします
   perl512  pmake.bat install --- perl5.012 環境にインストールします
   perl514  pmake.bat install --- perl5.014 環境にインストールします
   perl516  pmake.bat install --- perl5.016 環境にインストールします
   perl64   pmake.bat install --- perl64    環境にインストールします

   pmake.bat dist             --- CPAN 配布用パッケージを作ります
   pmake.bat ptar.bat         --- ptar.bat を作成します

=head1 ソフトウェアの一覧

   Char/Sjis.pm          --- ShiftJIS ソースコードフィルタ
   Char/Esjis.pm         --- Sjis.pm のランタイムルーチン
   Sjis.pm               --- Char/Sjis.pm の別名(機能は同じです)
   Esjis.pm              --- Char/Esjis.pm の別名(機能は同じです)
   perl5.bat             --- 環境変数 PATH の設定なしに perl5    を探して実行する
   perl55.bat            --- 環境変数 PATH の設定なしに perl5.5  を探して実行する
   perl56.bat            --- 環境変数 PATH の設定なしに perl5.6  を探して実行する
   perl58.bat            --- 環境変数 PATH の設定なしに perl5.8  を探して実行する
   perl510.bat           --- 環境変数 PATH の設定なしに perl5.10 を探して実行する
   perl512.bat           --- 環境変数 PATH の設定なしに perl5.12 を探して実行する
   perl514.bat           --- 環境変数 PATH の設定なしに perl5.14 を探して実行する
   perl516.bat           --- 環境変数 PATH の設定なしに perl5.16 を探して実行する
   perl64.bat            --- 環境変数 PATH の設定なしに perl64   を探して実行する
   aperl58.bat           --- 環境変数 PATH の設定なしに ActivePerl 5.8  を探して実行する
   aperl510.bat          --- 環境変数 PATH の設定なしに ActivePerl 5.10 を探して実行する
   aperl512.bat          --- 環境変数 PATH の設定なしに ActivePerl 5.12 を探して実行する
   aperl514.bat          --- 環境変数 PATH の設定なしに ActivePerl 5.14 を探して実行する
   aperl516.bat          --- 環境変数 PATH の設定なしに ActivePerl 5.16 を探して実行する
   sperl58.bat           --- 環境変数 PATH の設定なしに Strawberry Perl 5.8  を探して実行する
   sperl510.bat          --- 環境変数 PATH の設定なしに Strawberry Perl 5.10 を探して実行する
   sperl512.bat          --- 環境変数 PATH の設定なしに Strawberry Perl 5.12 を探して実行する
   sperl514.bat          --- 環境変数 PATH の設定なしに Strawberry Perl 5.14 を探して実行する
   sperl516.bat          --- 環境変数 PATH の設定なしに Strawberry Perl 5.16 を探して実行する

   strict.pm_            --- ダミーの strict.pm
   warnings.pm_          --- warnings.pm の簡易版
   warnings/register.pm_ --- warnings/register.pm の簡易版
   feature.pm_           --- ダミーの feature.pm

=head1 エスケープによる上位互換性の確保

このソフトウェアは過去のものを壊したりはせず、常に「エスケープ」によって機能を追加
しています。だから今まで可能であったことが不可能になることはありません。このアプ
ローチは、後退が決して許されない分野に有効です。なお、上位互換性の確保のためには、
これまでのPerlと非互換な拡張は取り除くこともあります。

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
                    ^--- Sjis ソフトウェアでエスケープされる
 
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

Sjis.pm は正規表現の先頭にマルチバイトアンカーリング処理を付け足します。

  --------------------------------------------------------------------------------
  処理前                  処理後
  --------------------------------------------------------------------------------
  m/regexp/               m/@{Esjis::anchor}(?:regexp).../
  --------------------------------------------------------------------------------

=head1 第2オクテットのエスケープ処理

Sjis.pm は正規表現中のマルチバイト文字の第2オクテットをエスケープします。

  --------------------------------------------------------------------------------
  処理前                  処理後
  --------------------------------------------------------------------------------
  m{...`/...}             m{...`/\...}
  --------------------------------------------------------------------------------

=head1 正規表現中のマルチバイト文字の扱いについて

Sjis.pm はマルチバイト文字への量指定子、およびマルチバイト文字のカスタム文字クラス
をクラスタリングします。またクラッシックな Perl 文字クラス、POSIX スタイルの文字
クラスをマルチバイト文字対応版に書き換えます。

  --------------------------------------------------------------------------------
  処理前                  処理後
  --------------------------------------------------------------------------------
  m/...MULTIOCT+.../      m/...(?:MULTIOCT)+.../
  m/...[AN-EM].../        m/...(?:A[N-Z]|[B-D][A-Z]|E[A-M]).../
  m/...\D.../             m/...@{Esjis::eD}.../
  m/...[[:^digit:]].../   m/...@{Esjis::not_digit}.../
  --------------------------------------------------------------------------------

=head1 Esjis::ignorecase() の呼び出し

Sjis.pm は /i 修飾子の代わりに Esjis::ignorecase() の呼出しを書き加えます。

  --------------------------------------------------------------------------------
  処理前                  処理後
  --------------------------------------------------------------------------------
  m/...$var.../i          m/...@{[Esjis::ignorecase($var)]}.../
  --------------------------------------------------------------------------------

=head1 文字指向の正規表現

/b 修飾子のない正規表現は文字指向の働きをします。

  --------------------------------------------------------------------------------
  処理前                  処理後
  --------------------------------------------------------------------------------
  /regexp/                / 上記参照 @Esjis::matched/
  m/regexp/               m/ 上記参照 @Esjis::matched/
  ?regexp?                m? 上記参照 @Esjis::matched?
  m?regexp?               m? 上記参照 @Esjis::matched?
  s/regexp//              ($_ =~ m/ 上記参照 @Esjis::matched/) ?
                          eval{ Esjis::s_matched(); local $^W=0; my $__r=qq//; $_="${1}$__r$'"; 1 } :
                          undef
  split(/regexp/)         Esjis::split(qr/regexp/)
  split(m/regexp/)        Esjis::split(qr/regexp/)
  split(qr/regexp/)       Esjis::split(qr/regexp/)
  qr/regexp/              qr/ 上記参照 @Esjis::matched/
  --------------------------------------------------------------------------------

=head1 バイト指向の正規表現

/b 修飾子を付加した正規表現はバイト指向の働きをします。

  --------------------------------------------------------------------------------
  処理前                  処理後
  --------------------------------------------------------------------------------
  /regexp/b               /(?:regexp)@Esjis::matched/
  m/regexp/b              m/(?:regexp)@Esjis::matched/
  ?regexp?b               m?regexp@Esjis::matched?
  m?regexp?b              m?regexp@Esjis::matched?
  s/regexp//b             ($_ =~ m/(\G[\x00-\xFF]*?)(?:regexp)@Esjis::matched/) ?
                          eval{ Esjis::s_matched(); local $^W=0; my $__r=qq//; $_="${1}$__r$'"; 1 } :
                          undef
  split(/regexp/b)        split(qr/regexp/)
  split(m/regexp/b)       split(qr/regexp/)
  split(qr/regexp/b)      split(qr/regexp/)
  qr/regexp/b             qr/(?:regexp)@Esjis::matched/
  --------------------------------------------------------------------------------

=head1 文字クラスのエスケープ

過去のperlとの互換性を保つために文字クラスは以下のように再定義されています。

  ---------------------------------------------------------------
  escape        class
  ---------------------------------------------------------------
   .            @{Esjis::dot}
                @{Esjis::dot_s}    (/s 修飾子あり)
  \d            [0-9]
  \s            [\x09\x0A\x0C\x0D\x20]
  \w            [0-9A-Z_a-z]
  \D            @{Esjis::eD}
  \S            @{Esjis::eS}
  \W            @{Esjis::eW}
  \h            [\x09\x20]
  \v            [\x0A\x0B\x0C\x0D]
  \H            @{Esjis::eH}
  \V            @{Esjis::eV}
  \C            [\x00-\xFF]
  \X            X (ただの英字、X です)
  \R            @{Esjis::eR}
  \N            @{Esjis::eN}
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
  [:space:]     [\x09\x0A\x0B\x0C\x0D\x20]
  [:upper:]     [\x41-\x5A]
                [\x41-\x5A\x61-\x7A]     (/i 修飾子あり)
  [:word:]      [\x30-\x39\x41-\x5A\x5F\x61-\x7A]
  [:xdigit:]    [\x30-\x39\x41-\x46\x61-\x66]
  [:^alnum:]    @{Esjis::not_alnum}
  [:^alpha:]    @{Esjis::not_alpha}
  [:^ascii:]    @{Esjis::not_ascii}
  [:^blank:]    @{Esjis::not_blank}
  [:^cntrl:]    @{Esjis::not_cntrl}
  [:^digit:]    @{Esjis::not_digit}
  [:^graph:]    @{Esjis::not_graph}
  [:^lower:]    @{Esjis::not_lower}
                @{Esjis::not_lower_i}    (/i 修飾子あり)
  [:^print:]    @{Esjis::not_print}
  [:^punct:]    @{Esjis::not_punct}
  [:^space:]    @{Esjis::not_space}
  [:^upper:]    @{Esjis::not_upper}
                @{Esjis::not_upper_i}    (/i 修飾子あり)
  [:^word:]     @{Esjis::not_word}
  [:^xdigit:]   @{Esjis::not_xdigit}
  ---------------------------------------------------------------

同様に \b と \B も過去のperlとの互換性を保つために再定義されています。

  ---------------------------------------------------------------
  escape      class
  ---------------------------------------------------------------
  \b          @{Esjis::eb}
  \B          @{Esjis::eB}
  ---------------------------------------------------------------

ファイル Esjis.pm の中で以下のように定義されています。

  ---------------------------------------------------------------------------------------------------------------------------------------------------------
  class                    Definition
  ---------------------------------------------------------------------------------------------------------------------------------------------------------
  @{Esjis::anchor}         qr{\G(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])*?}
  @{Esjis::dot}            qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x0A])}
  @{Esjis::dot_s}          qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])}
  @{Esjis::eD}             qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC0-9])}
  @{Esjis::eS}             qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x09\x0A\x0C\x0D\x20])}
  @{Esjis::eW}             qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC0-9A-Z_a-z])}
  @{Esjis::eH}             qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x09\x20])}
  @{Esjis::eV}             qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x0A\x0B\x0C\x0D])}
  @{Esjis::eR}             qr{(?:\x0D\x0A|[\x0A\x0D])}
  @{Esjis::eN}             qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x0A])}
  @{Esjis::not_alnum}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x30-\x39\x41-\x5A\x61-\x7A])}
  @{Esjis::not_alpha}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x41-\x5A\x61-\x7A])}
  @{Esjis::not_ascii}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x00-\x7F])}
  @{Esjis::not_blank}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x09\x20])}
  @{Esjis::not_cntrl}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x00-\x1F\x7F])}
  @{Esjis::not_digit}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x30-\x39])}
  @{Esjis::not_graph}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x21-\x7F])}
  @{Esjis::not_lower}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x61-\x7A])}
  @{Esjis::not_lower_i}    qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])}
  @{Esjis::not_print}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x20-\x7F])}
  @{Esjis::not_punct}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x21-\x2F\x3A-\x3F\x40\x5B-\x5F\x60\x7B-\x7E])}
  @{Esjis::not_space}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x09\x0A\x0B\x0C\x0D\x20])}
  @{Esjis::not_upper}      qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x41-\x5A])}
  @{Esjis::not_upper_i}    qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC])}
  @{Esjis::not_word}       qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x30-\x39\x41-\x5A\x5F\x61-\x7A])}
  @{Esjis::not_xdigit}     qr{(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[^\x81-\x9F\xE0-\xFC\x30-\x39\x41-\x46\x61-\x66])}
  @{Esjis::eb}             qr{(?:\A(?=[0-9A-Z_a-z])|(?<=[\x00-\x2F\x40\x5B-\x5E\x60\x7B-\xFF])(?=[0-9A-Z_a-z])|(?<=[0-9A-Z_a-z])(?=[\x00-\x2F\x40\x5B-\x5E\x60\x7B-\xFF]|\z))}
  @{Esjis::eB}             qr{(?:(?<=[0-9A-Z_a-z])(?=[0-9A-Z_a-z])|(?<=[\x00-\x2F\x40\x5B-\x5E\x60\x7B-\xFF])(?=[\x00-\x2F\x40\x5B-\x5E\x60\x7B-\xFF]))}
  ---------------------------------------------------------------------------------------------------------------------------------------------------------

=head1 \N, \p, \P, \X のアンエスケープ

このソフトウェアによって英数字の正規表現メタシンボル \N, \p, \P, \X の先頭の
'\' が取り除かれます。この方法で抽象化の罠を避けることができます。

  ------------------------------------
  処理前           処理後
  ------------------------------------
  \N{CHARNAME}     N{CHARNAME}
  \p{L}            p{L}
  \p{^L}           p{^L}
  \p{\^L}          p{\^L}
  \pL              pL
  \P{L}            P{L}
  \P{^L}           P{^L}
  \P{\^L}          P{\^L}
  \PL              PL
  \X               X
  ------------------------------------

=head1 組込み関数のエスケープ

このソフトウェアによって関数名の先頭に 'Esjis::' が書き加わりエスケープされます。
Esjis::* 関数は Esjis.pm が提供します。

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

  -------------------------------------------------------------------------------
  処理前    処理後      説明
  -------------------------------------------------------------------------------
  -r        Esjis::r    実効 uid/gid で読み出し可
  -w        Esjis::w    実効 uid/gid で書き込み可
  -x        Esjis::x    実効 uid/gid で実行可
  -o        Esjis::o    実効 uid が所有
  -R        Esjis::R    実 uid/gid で読み出し可
  -W        Esjis::W    実 uid/gid で書き込み可
  -X        Esjis::X    実 uid/gid で実行可
  -O        Esjis::O    実 uid/gid が所有
  -e        Esjis::e    ファイルが存在する
  -z        Esjis::z    ファイルの長さが 0 である
  -f        Esjis::f    普通のファイルである
  -d        Esjis::d    ディレクトリである
  -l        Esjis::l    シンボリックリンクである
  -p        Esjis::p    名前付きパイプ(FIFO)である
  -S        Esjis::S    ソケットである
  -b        Esjis::b    ブロックスペシャルファイルである
  -c        Esjis::c    キャラクタスペシャルファイルである
  -t        -t          ファイルハンドルが tty に対してオープンされている
  -u        Esjis::u    setuid ビットがセットされている
  -g        Esjis::g    setgid ビットがセットされている
  -k        Esjis::k    sticky ビットがセットされている
  -T        Esjis::T    テキストファイルである
  -B        Esjis::B    バイナリファイルである(-T とは逆の意味)
  -s        Esjis::s    ファイルの長さが 0 ではない(長さをバイト単位で返す)
  -M        Esjis::M    (実行開始時を基準とする)修正されてからの日数
  -A        Esjis::A    (実行開始時を基準とする)最後にアクセスされてからの日数
  -C        Esjis::C    (実行開始時を基準とする)inode が変更されてからの日数
  -------------------------------------------------------------------------------

perl5.00503 を使用している場合でもファイルテスト演算子は「積み重ねる」ことが
できます。

  if ( -w -r $file ) {
      print "The file is both readable and writable!\n";
  }

=head1 関数名のエスケープ

もし文字指向の関数を使いたい場合は以下のように記述する必要があります。それぞれ
の機能については「文字指向の関数」を参照してください。

  ----------------------------------------------------
  関数名    文字指向        説明
  ----------------------------------------------------
  ord       Sjis::ord
  reverse   Sjis::reverse
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

=head1 文字指向の関数

=over 2

=item * Sjis::ord

    $ord = Sjis::ord($string);

    Sjis::ord($string) は $string の先頭の文字の ShiftJIS コード値を返します
    (Unicode ではありません)。$string が省略された場合は $_ が対象となります。
    この関数は常に符号なしの値を返します。

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

=item * Sjis::substr

    $substr = Sjis::substr($string,$offset,$length,$replacement);
    $substr = Sjis::substr($string,$offset,$length);
    $substr = Sjis::substr($string,$offset);

    Sjis::substr は、ShiftJIS 文字列 $string で指定された文字列から部分文字列を取り
    出して返します。部分文字列は、文字列の先頭から数えて $offset 文字目から始まる、
    $length 文字分です。$offset が負ならば、文字列の末尾から -$offset 文字分戻った
    ところから部分文字列が開始します。$length を省略すると、文字列の末尾まですべてが
    返されます。$length が負ならば、文字列の末尾から -$length 文字が残るように、長さ
    が決められます。そうでなければ、$length は、あなたが期待するように、取り出す部分
    文字列の長さを表しています。

    Sjis::substr を左辺値(代入の対象となるもの)として使うことはできません。その代わ
    りに、第4引数 $replacement に置き換え用の文字列を指定します。この場合、
    Sjis::substr は $string の一部を文字列 $replacement で置き換えるとともに、
    (splice のように)置き換えられた部分を値として返します。次の例は、$var の最後の
    文字を "Curly" で置き換えるとともに、置き換えられた文字を $oldstr にセットしま
    す:

    $oldstr = Sjis::substr($var, -1, 1, "Curly");

    $var の先頭に文字列 "Larry" を付けるには、次のようにします:

    Sjis::substr($var, 0, 0, "Larry");

    $var の最初の1文字を "Moe" で置き換えるには、次のようにします:

    Sjis::substr($var, 0, 1, "Moe");

    $var の最後の1文字を "Curly" で置き換えるには次のようにします:

    Sjis::substr($var, -1, 1, "Curly");

=item * Sjis::index

    $index = Sjis::index($string,$substring,$offset);
    $index = Sjis::index($string,$substring);

    Sjis::index は、ShiftJIS 文字列 $string の中に含まれる、もう1つの ShiftJIS 文
    字列 $substring を探します。$string の中で、$substring が最初に出現する位置を
    文字単位で数えて返します。$offset が指定されている場合、$string の先頭から $offset
    個の文字をスキップした位置から、$substring を探し始めます。位置は 0 をベースとし
    て数えます。$substring が見つからなければ、Sjis::index 関数はベースより 1 だけ
    小さい値 -1 を返します。Sjis::index を使って、文字列全体を調べるには、次のように
    します。

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

=head1 bytes::* 関数のアンエスケープ

このソフトウェアによって bytes::* 関数の先頭の 'bytes::' が取り除かれます。

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

=head1 組込みの標準モジュールのエスケープ

Esjis.pm の先頭で "BEGIN { unshift @INC, '/Perl/site/lib/Sjis' }" が行われ、
モジュールの検索時、最初に '/Perl/site/lib/Sjis' が参照されるようになります。Sjis
ソフトウェアで使えるように改造した標準モジュールをここに格納して、もとの標準モ
ジュールをオーバーライドします。

=head1 標準モジュールの内容のエスケープ

標準モジュールのファイルを /Perl/site/lib/Sjis にコピーして 'use utf8;' を
'use Sjis;' に書き換えます。必要に応じてその他の書換えを行ってください。

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
  いる関数の代わりとして Esjis.pm がダミー関数を提供します。

=head1 perl5.005 による Perl5.6 エミュレーション

  perl5.005 にて warnings プラグマをエミュレートします。
  同梱の warnings.pm_ を warnings.pm に、warnings/register.pm_ を
  warnings/register.pm にファイル名を変更して使用できます。

=head1 perl5.005 による Perl5.16 エミュレーション

  perl5.005 にて feature プラグマをエミュレートします。
  同梱の feature.pm_ を feature.pm にファイル名を変更して使用できます。

=over 2

=item * ダミーの関数 utf8::upgrade

  $num_octets = utf8::upgrade($string);

  $string のオクテット数を返します。

=item * ダミーの関数 utf8::downgrade

  $success = utf8::downgrade($string[, FAIL_OK]);

  この関数は常に真の値を返します。

=item * ダミーの関数 utf8::encode

  utf8::encode($string);

  この関数は何も返しません。

=item * ダミーの関数 utf8::decode

  $success = utf8::decode($string);

  この関数は常に真の値を返します。

=item * ダミーの関数 utf8::is_utf8

  $flag = utf8::is_utf8(STRING);

  この関数は常に偽の値を返します。

=item * ダミーの関数 utf8::valid

  $flag = utf8::valid(STRING);

  この関数は常に真の値を返します。

=item * ダミーの関数 bytes::chr

  バイト指向の関数 chr として実装されています。

=item * ダミーの関数 bytes::index

  バイト指向の関数 index として実装されています。

=item * ダミーの関数 bytes::length

  バイト指向の関数 length として実装されています。

=item * ダミーの関数 bytes::ord

  バイト指向の関数 ord として実装されています。

=item * ダミーの関数 bytes::rindex

  バイト指向の関数 rindex として実装されています。

=item * ダミーの関数 bytes::substr

  バイト指向の関数 substr として実装されています。

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

=head1 バグと制限事項

このソフトウェアは、私の能力を尽くして、テストして照合しました。そうであっても、多く
の正規表現を含むソフトウェアは、ある程度のバグを飼うことをまぬがれることができません。
よって、もしあなたのスクリプトではなくて、Sjisソフトウェアのバグを見つけたのなら、
最小限のテストコードに切り詰めた上で、作者まで報告して頂けると助かります。

あるいはもっと有用なツールにするためのよいアイディアがあったなら、皆と共有して頂ける
とありがたいです。

=over 2

=item * format

    オリジナルの Perl と機能が同じです(ShiftJIS に対応していません)。

=item * chdir

    perl5.005 であれば常に chdir() を正常に実行できます。

    DOS風のシステム($^O の値が MSWin32, NetWare, symbian, dos のいずれかの
    場合)は、以下の制限事項があります。

    perl5.006 または perl5.00800 の場合で文字コード(0x5C)で終わるディレクトリ
    を指定して実行するには jacode.pl ライブラリが必要です。

    perl5.008001以降, perl5.010, perl5.012, perl5.014, perl5.016 にて文字コード
    (0x5C)で終わるディレクトリを指定して実行するとき、Win32 モジュールの
    Win32::GetShortPathName() によって短い名前を取得できた場合は chdir() が
    成功します。ただし、chdir() 後のカレントディレクトリは
    Win32::GetShortPathName() によって取得した短い名前になります。

    参考リンク
    Bug #81839
    chdir does not work with chr(0x5C) at end of path
    http://bugs.activestate.com/show_bug.cgi?id=81839

=item * 左辺値としての Sjis::substr

    Sjis::substr は CORE::substr とは異なり、左辺値として扱うことができません。
    文字列の一部分を変更したい場合は、Sjis::substr の4番目の引数として置換え後の
    文字列を指定します。
    
    Sjis::substr($string, 13, 4, "JPerl");

=item * 特殊変数 $` と $& を使うときは /( 正規表現全体をキャプチャ )/ する必要があります

    なぜならば、以下のように変換され、$1 を利用するためです。
 
    -------------------------------------------------------------------------------------------
    処理前          処理後               実行される内容
    -------------------------------------------------------------------------------------------
    $`              Esjis::PREMATCH()    CORE::substr($&,0,CORE::length($&)-CORE::length($1))
    $PREMATCH       Esjis::PREMATCH()    CORE::substr($&,0,CORE::length($&)-CORE::length($1))
    ${^PREMATCH}    Esjis::PREMATCH()    CORE::substr($&,0,CORE::length($&)-CORE::length($1))
    $&              Esjis::MATCH()       $1
    $MATCH          Esjis::MATCH()       $1
    ${^MATCH}       Esjis::MATCH()       $1
    $'              Esjis::POSTMATCH()   $'
    $POSTMATCH      Esjis::POSTMATCH()   $'
    ${^POSTMATCH}   Esjis::POSTMATCH()   $'
    -------------------------------------------------------------------------------------------

=item * 正規表現を適用する文字列の長さの上限

    前述のとおり、エスケープ後の正規表現にはマルチバイトアンカーリング処理のた
    めの記述 @{Esjis::anchor} が追加されますが、その中に含まれる \G の制約を受
    けます。perl5.006, perl5.008, perl5.010, perl5.012, perl5.014, perl5.016 で
    実行した場合、対象文字列の32,767バイトを超える位置でのマッチすべきところで
    マッチしません。なおかつ、その際にエラーも警告も出力されません。

    参考リンク
    Bug #89792
    \G can't treat over 32,767 octets
    http://bugs.activestate.com/show_bug.cgi?id=89792

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

    このソフトウェアのコンセプトは複数の符号化方式を同時に利用しないようにする
    ことです。従って修飾子 /a /d /l /u をサポートしません。
    \d は昔も今も [0-9] を意味します。

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
を含むBig5や、まれではあるがGBKなどの文字コードでも発生しうる。

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
グマ）。あるいは「ソ」→「ソ\」のように、2バイト目の直前にエスケープ文字の
5C(16)を記述し、「だめ文字」を文字として正しく認識させる方法もある（例：Perl
のSjisソフトウェア）。あるいは文字または文字列として扱わず対象文字および内部
表現形式を数値の配列として変換を行い、取り扱う際に文字に復号して扱う方法もある
（例：Perl のEncodeモジュール）。

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

  perl5.8 以降の情報処理モデル
 
    +----------------------+---------------------+
    |     Text strings     |                     |
    +----------+-----------|    Binary strings   |
    |   UTF8   |  Latin-1  |                     |
    +----------+-----------+---------------------+
    | UTF8     |            Not UTF8             |
    | Flagged  |            Flagged              |
    +--------------------------------------------+
    http://perl-users.jp/articles/advent-calendar/2010/casual/4
 
    この図を覚えないとプログラムを書けません。
 
    (どうして Latin-1 だけ特別扱いするのでしょうか？)

結果的にこの変更は、過去のスクリプトと新しいスクリプトの間に大きな溝を作りました。
もはや両者のスクリプトはコードを互いに再利用することができません。また新しい方法は
プログラマに負担をかけるため、現存するスクリプトがすべて置き換わるのはまだまだ時間
がかかると思われます。

新しい方法で問題となっていることは UTF8 フラグは実際の文字列の符号化と一致しないこと
です。自分で作ったスクリプトはそのデバッグの前に UTF8 フラグについてデバッグしなけ
ればなりません。

  このソフトウェアによる情報処理モデル
 
    +--------------------------------------------+
    |       Text strings as Binary strings       |
    |       Binary strings as Text strings       |
    +--------------------------------------------+
    |              Not UTF8 Flagged              |
    +--------------------------------------------+

そこで、昔の方法に戻すことによってどのように解決されるのか、ほこりにまみれた古い
Programming Perl, 3rd ed. (邦訳 プログラミングPerl 第3版) の402ページをもう一度
ひもといてみましょう・・・。

理想的には、以下の5つのゴールを実現しようと考えています。

=over 2

=item * ゴール1

    既存のバイト指向のスクリプトは、以前扱っていた既存のバイト指向のデータに対し
    て、以前と同様に動作すべきである。

    これは ShiftJIS がバイト指向である ASCII および JIS X 0201 と組合わせて利用
    できるよう設計されたことによって、すでに達成されています。

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
                                          JPerl           Encode,Sjis
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

    対照的なのは Encode モジュールやこのソフトウェアにて "use Sjis;" を記述する
    場合です。この場合は新たなスクリプトの書き方をする必要があります。

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

=item * ゴール4

    Perl は、バイト指向の Perl と文字指向の Perl に枝分かれせずに、1つの言語で
    あり続けるべきである。

    JPerl は Perl 言語を分岐させないようにするために、インタプリタを分岐させました。
    でも Perl コアチームはインタプリタの分岐を望んでいないのでしょう。結果的にゴー
    ル4とはうらはらにPerl言語が分岐することになり、コミュニティは縮小しました。

    バイト指向の perl はすでにバイナリデータを扱うことができるため、文字指向の
    perl を別立てで作成する必要はありません。またこのソフトウェアは、単なるアプリ
    ケーションプログラムなので、Perl コアチームから睨まれることもないでしょうし、
    誘われる心配もありません。

    それに問題を Perl スクリプトで解決しようとするなら、Perl コミュニティのサポート
    を得られるでしょう。

=item * ゴール5

    JPerl ユーザが Perl で JPerl を保守できるようになる。

    JPerl がいつもあなたのそばにありますように ...

=back

Programming Perl, 3rd ed. が書かれた頃には、UTF8 フラグは生まれておらず、Perl は
簡単な仕事を簡単にできるように設計されていました。このソフトウェアは当時のような
プログラミング環境を提供します。

=head1 参考文献、リンク

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
 ISBN-13: 978-1-906966-02-7
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
 ISBN978-4-87311-427-9
 http://www.oreilly.co.jp/books/9784873114279/

 初めてのPerl 第6版
 Randal L. Schwartz, brian d foy, Tom Phoenix 著, 近藤 嘉雪 訳
 2012年07月 発行
 488ページ
 ISBN978-4-87311-567-2
 http://www.oreilly.co.jp/books/9784873115672/

 Perlリソースキット - UNIX版
 Futato, Irving, Jepson, Patwardhan, Siever 共著, イエローレーベル 山本 浩 訳
 ISBN4-900900-65-6
 http://www.oreilly.co.jp/out/presuni/

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
 ISBN978-4-87311-450-7
 http://www.oreilly.co.jp/books/9784873114507/

 Perlプログラミング
 Larry Wall, Randal L.Schwartz, 近藤 嘉雪 訳
 1993年2月発行
 ISBN 4-89052-384-7
 http://www.context.co.jp/~cond/books/old-books.html

 JIS漢字字典
 芝野 耕司 編著
 1456 頁
 ISBN 4-542-20129-5
 http://www.webstore.jsa.or.jp/lib/lib.asp?fn=/manual/mnl01_12.htm

 UNIX MAGAZINE
 1993年8月号
 172ページ
 T1008901080816 雑誌08901-8
 http://ascii.asciimw.jp/books/books/detail/978-4-7561-5008-0.shtml

 MacPerl入門
 Vicki Brown, Chris Nandor 著, (株)コスモ・プラネット 訳
 1999年03月 発行
 399ページ
 ISBN 4-7561-3068-2

 Macintoshデータ活用術
 石田 豊 著
 230ページ
 1995年2月 発行
 ISBN 4-89563-408-6

 MPWプログラミング講座
 Handmade Intelligence 著
 1992年8月 発行
 346ページ
 ISBN 4-7561-0963-2

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

 関連ソフトウェア
 http://search.cpan.org/dist/jacode/
 http://search.cpan.org/dist/Char/

 BackPAN
 http://backpan.perl.org/authors/id/I/IN/INA/

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
 E. F. Friedl さんの詳説正規表現の監訳もされていて、このソフトウェアの周囲には必ず
 歌代さんが登場します。
 
 Tokyo.pm のメーリングリストでは、新しい機能を実現するために新たに実装をする場合でも、
 過去に作られたソフトウェアと同一のインタフェースにするという、よいアイディアを教わ
 りました。
 
 先ほど周囲と言いましたが、実はそれは当然のことで、このソフトウェアは jcode.pl の
 ソースをもとにして作成されたからです。だから何をどう考えても歌代さんなしで、このソ
 フトウェアが生まれることはなかったのです。

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
 文字化けについて理解が深まりました。文字化けの原因のひとつとして「利用者の意思と異
 なる、符号化方式の変換(が行われてしまう)」が挙げられます。それを防ぐために、この
 ソフトウェアは符号化方式を変換せずに情報処理を行います。あなたの意思がどうであった
 としても、その意思と異なる変換がされることはありません。
 
 Appendix W: Perl Code Examples の中の CJKV Encoding Templates、Multiple-Byte
 Anchoring、Multiple-Byte Processing がとても参考になりました。

 貞廣 知行さん, Shift-JISテキストを正しく扱う
 http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
 
 「Shift-JISテキストを正しく扱う」で、PerlでシフトJISを扱うときのノウハウを教えて
 頂き、ありがとうございます。このサイトの内容をもとに、スクリプト中のリテラル文字列
 の「ソ」を「ソ\」に変換するフィルタプログラムを作るところから始め、例外を少しずつ
 書き加えていくことでこのソフトウェアが作られていきました。

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
 http://www.aritia.jp/hizumi/perl/perlwin.html

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

 小飼 弾さん, Encode モジュール
 http://search.cpan.org/dist/Encode/
 http://www.archive.org/details/YAPCAsia2006TokyoPerl58andUnicodeMythsFactsandChanges (動画)
 http://yapc.g.hatena.ne.jp/jkondo/ (音声)
 
 YAPC::Asia 2006 Tokyo "Perl5.8 and Unicode: Myths, Facts and Changes" で Perl5.8
 での変更点を詳しく教えてもらいました。CPAN の face icon はこのスライドに出てくる
 Perl5.6 = a city without bridges の画像からヒントを得ています。

 Juerd さん, Perl Unicode Advice
 http://juerd.nl/site.plp/perluniadvice

 daily dayflower さん, 2008-06-25 perluniadvice
 http://d.hatena.ne.jp/dayflower/20080625/1214374293

 Jesse Vincent さん, Compatibility is a virtue
 http://www.nntp.perl.org/group/perl.perl5.porters/2010/05/msg159825.html

=cut

