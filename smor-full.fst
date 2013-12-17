%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  File:         smor-full.fst
%  Author:       Rico Sennrich
%  Date:         February 2013
%  Content:      allow spelling variations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#include "symbols.fst"
ALPHABET = [#char# #morpheme_boundary_marker# #part-of-speech# #category# #feature#]

% replacement of ß
$ss$ = {ß}:{ss} ^->? (__ .?)
% replacement of umlaut
$umlaut$ = [äöüÄÖÜ]:[aouAOU]<>:e ^->? (__ .?)
%capitalization
$CAP$ = [^<TRUNC>]* || <CAP>:<> "<morph-lemma.a>" || <NoHy>:<>? [a-zà-þ]:[A-ZÀ-Þ] [#char# #morpheme_boundary_marker#]*

$MORPH$ = "<morph-lemma.a>" | $CAP$ | "<smor-guesser.a>"

$MORPH$ = $MORPH$ || $ss$ || $umlaut$


%**************************************************************************
% hyphenated words (smor-lfg.fst)
%**************************************************************************

% blanks not allowed at the beginning or at the end
$L$ = [A-ZÀÈÌÒÙÁÉÍÚÓÂÊÎÔÛÄËÖÜ]
$l$ = [a-zàèìòùáéíúóâêîôûäëöüßçñ]
$ANY$ = [\"\,\.\;§\$\?\!\'\&\+\%\*½²°\:\(\)0-9\/\<\> #morpheme_boundary_marker#] | $L$ | $l$
$ANYB$ = \  | $ANY$
$ANYB-$ = \- | $ANYB$
$TMP$ = $ANY$ ($ANYB$* $ANY$)?
$PrefT$ = \{:<> $TMP$ \}:<> \- <TRUNC>:<>
$Pref$ = \{:<> (($L$|$l$) $l$+ | $L$ $L$+) \}:<> \-

$TMP$ =  <NoHy>:<>? (\- <TRUNC>:<> ([A-ZÀ-Þ]:[a-zà-þ] | $ANY$))? $ANYB-$*

ALPHABET = $MORPH$
ALPHABET = _(.)

% hyphenated forms are restricted to the following parts of speech
$HMORPH$ = .* [<+ADJ><+NN><+NPROP>] .* || $MORPH$

$HMORPH$ = (<>:\- <TRUNC>)? $PrefT$* $HMORPH$ || $TMP$

$TMP$ = $PrefT$* $Pref$ <+TRUNC>:<>

$HMORPH$ = $HMORPH$ | $TMP$

$MORPH$ = $MORPH$ || <NoHy>:<>? $ANYB-$*

$MORPH$ = $MORPH$ | $HMORPH$

%**************************************************************************
% (smor.fst)
%**************************************************************************

"<elim-disj.a>" || $MORPH$